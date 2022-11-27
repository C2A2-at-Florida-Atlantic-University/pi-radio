-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Tlast gen for use after DMA
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity tlast_symbol is
  generic(
    g_TDATA_BITS                  : integer := 128
  );
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(g_TDATA_BITS-1 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(g_TDATA_BITS-1 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tlast                  : out std_logic
  );
end entity tlast_symbol;

architecture RTL of tlast_symbol is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk      : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk      : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 99999001";

  signal r_axis_tvalid            : std_logic;

begin

  P_REG : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      m_axis_tdata                <= s_axis_tdata;
      m_axis_tvalid               <= s_axis_tvalid;
      r_axis_tvalid               <= s_axis_tvalid;
    end if;
  end process P_REG;

  m_axis_tlast                    <= r_axis_tvalid and not s_axis_tvalid;

end architecture RTL;
