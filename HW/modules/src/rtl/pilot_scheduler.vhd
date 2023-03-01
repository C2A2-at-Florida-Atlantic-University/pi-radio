-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Read OFDM Pilot carriers from BRAM

-----------------------------------------------------------------
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity pilot_scheduler is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    i_stage_1_en                  : in  std_logic;
--    i_stage_2_en                  : in  std_logic;
--    i_stage_3_en                  : in  std_logic;

    i_valid_frame                 : in  std_logic;

    BRAM_PORT_addr                : out std_logic_vector(31 downto 0);
    BRAM_PORT_clk                 : out std_logic;
    BRAM_PORT_din                 : out std_logic_vector(31 downto 0);
    BRAM_PORT_dout                : in  std_logic_vector(31 downto 0);
    BRAM_PORT_en                  : out std_logic;
    BRAM_PORT_rst                 : out std_logic;
    BRAM_PORT_we                  : out std_logic_vector(0 downto 0);

    M_AXIS_1_tdata                : out std_logic_vector(31 downto 0);
    M_AXIS_1_tvalid               : out std_logic;
    M_AXIS_1_tlast                : out std_logic;
    M_AXIS_1_tready               : in  std_logic

--    M_AXIS_2_tdata                : out std_logic_vector(31 downto 0);
--    M_AXIS_2_tvalid               : out std_logic;
--    M_AXIS_2_tlast                : out std_logic;
--    M_AXIS_2_tready               : in  std_logic;

--    M_AXIS_3_tdata                : out std_logic_vector(31 downto 0);
--    M_AXIS_3_tvalid               : out std_logic;
--    M_AXIS_3_tlast                : out std_logic;
--    M_AXIS_3_tready               : in  std_logic
  );
end entity pilot_scheduler;

architecture RTL of pilot_scheduler is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:M_AXIS_1:M_AXIS_2:M_AXIS_3, FREQ_HZ 249997498";

  attribute X_INTERFACE_INFO      of BRAM_PORT_addr   : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute X_INTERFACE_INFO      of BRAM_PORT_clk    : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT CLK";
  attribute X_INTERFACE_INFO      of BRAM_PORT_din    : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DIN";
  attribute X_INTERFACE_INFO      of BRAM_PORT_dout   : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT";
  attribute X_INTERFACE_INFO      of BRAM_PORT_en     : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT EN";
  attribute X_INTERFACE_INFO      of BRAM_PORT_rst    : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT RST";
  attribute X_INTERFACE_INFO      of BRAM_PORT_we     : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT WE";

  attribute X_INTERFACE_PARAMETER of BRAM_PORT_addr   : signal is "MASTER_TYPE BRAM_CTRL";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_clk    : signal is "MASTER_TYPE BRAM_CTRL";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_din    : signal is "MASTER_TYPE BRAM_CTRL";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_dout   : signal is "MASTER_TYPE BRAM_CTRL";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_en     : signal is "MASTER_TYPE BRAM_CTRL";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_rst    : signal is "MASTER_TYPE BRAM_CTRL";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_we     : signal is "MASTER_TYPE BRAM_CTRL";

  signal bram_addr                : std_logic_vector(31 downto 0);
  signal out_tvalid               : std_logic;
  signal out_tvalid2              : std_logic;

begin

  -- Process to read data over BRAM interface
  P_BRAM_READ : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      if i_valid_frame = '0' then
        bram_addr                 <= (others => '0');
        out_tvalid                <= '0';
      elsif i_stage_1_en = '0' then
        out_tvalid                <= '0';
      else
        out_tvalid                <= '1';
        bram_addr                 <= bram_addr + '1';
      end if;
    end if;
  end process p_BRAM_READ;

  BRAM_PORT_addr                  <= bram_addr;
  BRAM_PORT_clk                   <= axis_aclk;
  BRAM_PORT_rst                   <= '0';
  BRAM_PORT_we                    <= (others => '0');
  BRAM_PORT_en                    <= '1';
  BRAM_PORT_din                   <= (others => '0');

  -- Process to send data over AXIS
  P_AXIS_SEND : process(axis_aclk)
  begin
    if axis_aresetn = '0' then
      M_AXIS_1_tdata              <= (others => '0');
    elsif rising_edge(axis_aclk) then
      M_AXIS_1_tdata              <= BRAM_PORT_dout;
      out_tvalid2                 <= out_tvalid;
      M_AXIS_1_tvalid             <= out_tvalid2;
    end if;
  end process P_AXIS_SEND;
      
  M_AXIS_1_tlast                  <= '0';
  --M_AXIS_2_tlast                  <= '0';
  --M_AXIS_3_tlast                  <= '0';

end architecture RTL;
