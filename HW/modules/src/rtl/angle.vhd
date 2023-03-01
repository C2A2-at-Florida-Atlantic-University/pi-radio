-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Find sum and angle of s_axis
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity angle is
  generic(
    g_PRECISION                   : integer := 32
  );
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(63 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tuser                  : in  std_logic_vector(7 downto 0);
    s_axis_tid                    : in  std_logic_vector(7 downto 0);
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(g_PRECISION-1 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tid                    : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic
  );
end entity angle;

architecture RTL of angle is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk      : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk      : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498";

  signal din_tdata                : std_logic_vector(g_PRECISION*2-1 downto 0);

  signal dout_tvalid              : std_logic;
  signal dout_tdata               : std_logic_vector(g_PRECISION*2-1 downto 0);
  
  component cordic_rec_to_polar is
    port(
      aclk                        : in  std_logic;
      s_axis_cartesian_tvalid     : in  std_logic;
      s_axis_cartesian_tdata      : in  std_logic_vector(g_PRECISION*2-1 downto 0);
      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tdata           : out std_logic_vector(g_PRECISION*2-1 downto 0)
    );
  end component cordic_rec_to_polar;

begin

  din_tdata                       <= s_axis_tdata(63 downto 63-g_PRECISION+1) & 
                                     s_axis_tdata(31 downto 31-g_PRECISION+1);

  cordic_inst : cordic_rec_to_polar
    port map(
      aclk                        => axis_aclk,
      s_axis_cartesian_tvalid     => s_axis_tvalid,
      s_axis_cartesian_tdata      => din_tdata,
      m_axis_dout_tvalid          => dout_tvalid,
      m_axis_dout_tdata           => dout_tdata
    );

  -- Process to control M_AXIS
  P_AXIS : process(axis_aclk) begin
    if rising_edge(axis_aclk) then
      if dout_tvalid = '1' then
        m_axis_tvalid             <= '1';
        m_axis_tdata              <= dout_tdata(g_PRECISION*2-1 downto g_PRECISION*2-g_PRECISION);
      else
        m_axis_tvalid             <= '0';
        m_axis_tdata              <= (others => '0');
      end if;
    end if;
  end process P_AXIS;
  
  m_axis_tuser                    <= (others => '0');
  m_axis_tid                      <= (others => '0');

end architecture RTL;
