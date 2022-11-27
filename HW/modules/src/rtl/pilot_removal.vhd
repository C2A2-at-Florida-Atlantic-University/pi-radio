-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Separate pilots from Data and delete zero SC's
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity pilot_removal is
  generic(
    g_PROCESSING_CYCLES           : integer := 383
  );
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(127 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tid                    : in  std_logic_vector(7 downto 0);
    s_axis_tuser                  : in  std_logic_vector(7 downto 0);
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tid                    : out std_logic_vector(7 downto 0);
    m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic;

    m_pilot_axis_tdata            : out std_logic_vector(127 downto 0);
    m_pilot_axis_tvalid           : out std_logic;
    m_pilot_axis_tid              : out std_logic_vector(7 downto 0);
    m_pilot_axis_tuser            : out std_logic_vector(7 downto 0);
    m_pilot_axis_tlast            : out std_logic;

    o_symbol                      : out std_logic;
    o_symbol_number               : out std_logic_vector(7 downto 0)
  );
end entity pilot_removal;

architecture RTL of pilot_removal is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis:m_pilot_axis, FREQ_HZ 99999001";

  signal tvalid_rising            : std_logic;

begin



end architecture RTL;
