-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Split and replicate AXI-Streams
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity axis_splitter is
  port(
    s_axis_aclk                   : in  std_logic;
    s_axis_aresetn                : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(127 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tid                    : in  std_logic_vector(7 downto 0);
    s_axis_tuser                  : in  std_logic_vector(7 downto 0);
    s_axis_tlast                  : in  std_logic;
    
    m_axis0_tdata                  : out std_logic_vector(127 downto 0);
    m_axis0_tvalid                 : out std_logic;
    m_axis0_tid                    : out std_logic_vector(7 downto 0);
    m_axis0_tuser                  : out std_logic_vector(7 downto 0);
    m_axis0_tlast                  : out std_logic;

    m_axis1_tdata                  : out std_logic_vector(127 downto 0);
    m_axis1_tvalid                 : out std_logic;
    m_axis1_tid                    : out std_logic_vector(7 downto 0);
    m_axis1_tuser                  : out std_logic_vector(7 downto 0);
    m_axis1_tlast                  : out std_logic
  );
end entity axis_splitter;

architecture RTL of axis_splitter is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of s_axis_aclk    : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk    : 
    signal is "ASSOCIATED_BUSIF s_axis_aclk:s_axis:m_axis0:m_axis1, FREQ_HZ 250000000";

begin

  P_SPLITTER : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      m_axis0_tdata                 <= s_axis_tdata;
      m_axis0_tvalid                <= s_axis_tvalid;
      m_axis0_tid                   <= s_axis_tid;
      m_axis0_tuser                 <= s_axis_tuser;
      m_axis0_tlast                 <= s_axis_tlast;

      m_axis1_tdata                 <= s_axis_tdata;
      m_axis1_tvalid                <= s_axis_tvalid;
      m_axis1_tid                   <= s_axis_tid;
      m_axis1_tuser                 <= s_axis_tuser;
      m_axis1_tlast                 <= s_axis_tlast;
    end if;
  end process P_SPLITTER;

end architecture RTL;
