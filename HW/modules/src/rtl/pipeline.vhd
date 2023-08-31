-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Estimate channel 
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity pipeline is
  generic(
    g_DELAY_CYCLES                : integer := 4;
    g_TDATA_WIDTH                 : integer := 32
  );
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(g_TDATA_WIDTH-1 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(g_TDATA_WIDTH-1 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tlast                  : out std_logic
  );
end entity pipeline;

architecture RTL of pipeline is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 250000000";

  type t_data_array is array (0 to g_DELAY_CYCLES-1) of std_logic_vector(g_TDATA_WIDTH-1 downto 0);
  signal pipeline_tdata           : t_data_array := (others => (others => '0'));
  signal pipeline_tvalid          : std_logic_vector(g_DELAY_CYCLES-1 downto 0) := (others => '0');
  signal pipeline_tlast           : std_logic_vector(g_DELAY_CYCLES-1 downto 0) := (others => '0');

begin

  -- Process to pipeline AXI-S g_DELAY_CYCLES number of clock cycels
  p_PIPELINE : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      pipeline_tdata(0)           <= s_axis_tdata;

      for i in 0 to g_DELAY_CYCLES-2 loop
        pipeline_tdata(i+1)       <= pipeline_tdata(i);
      end loop;

      --pipeline_tdata              <= pipeline_tdata(pipeline_tdata'left - 1 downto 0) & s_axis_tdata;
      pipeline_tvalid             <= pipeline_tvalid(pipeline_tvalid'left-1 downto 0) & s_axis_tvalid;
      pipeline_tlast              <= pipeline_tlast(pipeline_tlast'left - 1 downto 0) & s_axis_tlast;
    end if;
  end process p_PIPELINE;

  m_axis_tdata                    <= pipeline_tdata(pipeline_tdata'right);
  m_axis_tvalid                   <= pipeline_tvalid(pipeline_tvalid'left);
  m_axis_tlast                    <= pipeline_tlast(pipeline_tlast'left);

end architecture RTL;
