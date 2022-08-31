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
    g_DELAY_CYCLES                : natural := 255
  );
  port(
    s_axis_aclk                   : in  std_logic;
    s_axis_aresetn                : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(127 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tid                    : in  std_logic_vector(7 downto 0);
    s_axis_tuser                  : in  std_logic_vector(7 downto 0);
    s_axis_tlast                  : in  std_logic;
    s_axis_tready                 : out std_logic;

    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tid                    : out std_logic_vector(7 downto 0);
    m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic;

    i_tlast_symbol                : in  std_logic
  );
end entity delay;

architecture RTL of delay is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of s_axis_aclk    : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk    : 
    signal is "ASSOCIATED_BUSIF s_axis_aclk:s_axis:m_axis, FREQ_HZ 250000000";

  signal counter                  : std_logic_vector(integer(ceil(log2(real(g_DELAY_CYCLES)))) downto 0);
  signal delay_valid              : std_logic;
  signal r_delay_valid            : std_logic;
  signal frame_current            : std_logic;

  signal tlast_pipe1              : std_logic;
  signal tlast_pipe2              : std_logic;
  signal tlast_pipe3              : std_logic;
  signal tlast_pipe4              : std_logic;

begin

  -- Process to pipeline symbol boundary for correct timing
  P_PIPE : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      tlast_pipe1                 <= i_tlast_symbol;
      tlast_pipe2                 <= tlast_pipe1;
      tlast_pipe3                 <= tlast_pipe2;
      tlast_pipe4                 <= tlast_pipe3;
    end if;
  end process P_PIPE;

  -- Assert frame_current to indicate a packet is being received
  P_FRAME : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      if s_axis_tvalid = '1' then
        frame_current             <= '1';
      end if;
    end if;
  end process P_FRAME;

  -- Process to create delayed counter
  P_DELAY : process(s_axis_aclk)
  begin
    if s_axis_aresetn = '0' then
      counter                     <= (others => '0');
      delay_valid                 <= '0';
    elsif rising_edge(s_axis_aclk) then
      if counter = g_DELAY_CYCLES and tlast_pipe4 = '1' then
        counter                   <= (others => '0');
        delay_valid               <= '0';
      elsif counter = g_DELAY_CYCLES then
        delay_valid               <= '1';
      else
        counter                   <= counter + '1';
      end if;
    end if;
  end process P_DELAY;

  -- Process to delay m_axis
  P_AXIS : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      if delay_valid = '1' then
        m_axis_tdata              <= s_axis_tdata;
        m_axis_tvalid             <= s_axis_tvalid;
        m_axis_tid                <= s_axis_tid;
        m_axis_tuser              <= s_axis_tuser;
        m_axis_tlast              <= s_axis_tlast;
      else
        m_axis_tdata              <= (others => '0');
        m_axis_tvalid             <= '0';
        m_axis_tid                <= (others => '0');
        m_axis_tuser              <= (others => '0');
        m_axis_tlast              <= '0';
      end if;
    end if;
  end process P_AXIS;

  s_axis_tready                   <= delay_valid;

end architecture RTL;
