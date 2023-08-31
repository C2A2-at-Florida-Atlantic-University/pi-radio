-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Find sum and angle of s_axis
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity dds_top is
  generic(
    g_PRECISION                   : integer := 32
  );
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(g_PRECISION-1 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tuser                  : in  std_logic_vector(7 downto 0);
    s_axis_tid                    : in  std_logic_vector(7 downto 0);
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(4*g_PRECISION-1 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tid                    : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic
  );
end entity dds_top;

architecture RTL of dds_top is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk      : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk      : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 250000000";

  constant c_ZERO                 : std_logic_vector(32 - g_PRECISION-1 downto 0) := (others => '0');

  signal din_tdata                : std_logic_vector(g_PRECISION-1 downto 0);
  signal dout_tdata               : std_logic_vector(g_PRECISION-1 downto 0);
  signal r_axis_tdata             : std_logic_vector(g_PRECISION-1 downto 0);
  signal r_axis_tvalid            : std_logic := '0';

  component dds_compiler_0 is
    port(
      aclk                        : in  std_logic;
      s_axis_phase_tvalid         : in  std_logic;
      s_axis_phase_tdata          : in  std_logic_vector(g_PRECISION-1 downto 0);
      m_axis_data_tvalid          : out std_logic;
      m_axis_data_tdata           : out std_logic_vector(g_PRECISION-1 downto 0)
    );
  end component dds_compiler_0;

begin

  -- Create cos(ft) + jsin(ft) where f is the estimated cfo. As there are 4 samples per clock
  -- but only 1 DDS instantiation, the signal is linearly interpolated for every
  -- 2,3,4th sample
  dds_inst : dds_compiler_0
    port map(
      aclk                        => axis_aclk,
      s_axis_phase_tvalid         => r_axis_tvalid,
      --s_axis_phase_tdata          => X"003FA3B0",
      s_axis_phase_tdata          => s_axis_tdata,

      m_axis_data_tvalid          => m_axis_tvalid,
      m_axis_data_tdata           => dout_tdata
    );

  -- Process to drive tvalid always high to input of dds
  P_DDS_INPUT : process(axis_aclk) 
  begin
    if rising_edge(axis_aclk) then
      if s_axis_tvalid = '1' then
        r_axis_tvalid             <= '1';
      end if;
      din_tdata                   <= s_axis_tdata;
    end if;
  end process P_DDS_INPUT;
  
  -- Simple interpolation
  m_axis_tdata                    <= c_ZERO & dout_tdata & 
                                     c_ZERO & dout_tdata & 
                                     c_ZERO & dout_tdata & 
                                     c_ZERO & dout_tdata;
  m_axis_tuser                    <= (others => '0');
  m_axis_tid                      <= (others => '0');
  m_axis_tlast                    <= '0'; 

end architecture RTL;
