-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Delay AXIS certain number of clocks
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity delay is
  generic(
    g_DELAY_CYCLES                : integer := 10
  );
  port(
    s_axis_aclk                   : in  std_logic;
    s_axis_aresetn                : in  std_logic;

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

    i_tlast_symbol                : in  std_logic
  );
end entity delay;

architecture RTL of delay is

  signal counter                  : std_logic_vector(ceil(log2(g_DELAY_CYCLES))-1 downto 0);

begin



end architecture RTL;
