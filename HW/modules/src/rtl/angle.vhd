-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Find angle of s_axis
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity angle is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(255 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tuser                  : in  std_logic;
    s_axis_tid                    : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tid                    : out std_logic
  );
end entity angle;

architecture RTL of angle is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk      : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk      : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 250000000";

  signal dout_tvalid              : std_logic_vector(3 downto 0);
  signal dout_tdata               : std_logic_vector(255 downto 0);
  
  component cordic_0 is
    port(
      aclk                        : in  std_logic;
      s_axis_cartesian_tvalid     : in  std_logic;
      s_axis_cartesian_tdata      : in  std_logic_vector(63 downto 0);
      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tdata           : out std_logic_vector(63 downto 0)
    );
  end component cordic_0;

begin

  GEN_ANGLE : for i in 0 to 3 generate
    cordic_0_inst : cordic_0
      port map(
        aclk                      => axis_aclk,
        s_axis_cartesian_tvalid   => s_axis_tvalid,
        s_axis_cartesian_tdata    => s_axis_tdata(64+64*i-1 downto 64*i),
        m_axis_dout_tvalid        => dout_tvalid(i),
        m_axis_dout_tdata         => dout_tdata(64+64*i-1 downto 64*i)
    );
  end generate GEN_ANGLE;

  m_axis_tvalid                   <= dout_tvalid(0);
  m_axis_tdata                    <= dout_tdata(255 downto 224) & dout_tdata(191 downto 160) &
                                     dout_tdata(127 downto 96)  & dout_tdata(63 downto 32);
  m_axis_tuser                    <= (others => '0');
  m_axis_tid                      <= (others => '0');

end architecture RTL;
