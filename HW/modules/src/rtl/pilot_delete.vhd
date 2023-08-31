-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Delete pilots from Data and delete zero SC's
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity pilot_delete is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(127 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(95 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tlast                  : out std_logic
  );
end entity pilot_delete;

architecture RTL of pilot_delete is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 250000000";

  signal w_axis_tvalid_falling    : std_logic;
  signal r_axis_tvalid            : std_logic;

begin


  m_axis_tdata                    <= s_axis_tdata(95 downto 0);
  m_axis_tlast                    <= s_axis_tlast;

  p_PIPELINE_S_AXIS : process(axis_aclk, axis_aresetn)
  begin
    if rising_edge(axis_aclk) then
      r_axis_tvalid               <= s_axis_tvalid;
    end if;
  end process p_PIPELINE_S_AXIS;

  w_axis_tvalid_falling           <= r_axis_tvalid and not s_axis_tvalid;
  m_axis_tvalid                   <= r_axis_tvalid and not w_axis_tvalid_falling;

end architecture RTL;
