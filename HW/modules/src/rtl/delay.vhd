-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Delay AXIS certain number of clocks
--  Issue reads durring active cycles
--  Stop reads durring quiet cycles
-----------------------------------------------------------------
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity delay is
  generic(
    g_DELAY_CYCLES                : natural := 191;
    g_ACTIVE_CYCLES               : natural := 256;
    g_QUIET_CYCLES                : natural := 64
  );
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

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

    i_symbol                      : in  std_logic
  );
end entity delay;

architecture RTL of delay is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 250000000";

  signal counter                  : std_logic_vector(integer(ceil(log2(real(g_DELAY_CYCLES)))) downto 0);
  signal active_counter           : std_logic_vector(integer(ceil(log2(real(g_ACTIVE_CYCLES)))) downto 0);
  signal quiet_counter            : std_logic_vector(integer(ceil(log2(real(g_QUIET_CYCLES-1)))) downto 0);
  signal delay_valid              : std_logic;
  signal w_axis_tready            : std_logic;
  signal r_flip                   : std_logic := '0';
  signal trigger                  : std_logic;

begin

  -- Process to create trigger signal
  P_TRIGGER : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if s_axis_tvalid = '1' then
        trigger                   <= '1';
      else
        if r_flip = '1' then
          trigger                 <= '1';
        elsif r_flip = '0' then
          trigger                 <= '0';
        end if;
      end if;
    end if;
  end process P_TRIGGER;

  -- Process to create delayed counter
  P_DELAY : process(axis_aclk,axis_aresetn)
  begin
    if axis_aresetn = '0' then
      counter                     <= (others => '0');
      delay_valid                 <= '0';
    elsif rising_edge(axis_aclk) then
      if s_axis_tvalid = '1' or r_flip = '1' then
        r_flip                    <= '1';
        if counter = g_DELAY_CYCLES then
          delay_valid             <= '1';
        else
          counter                 <= counter + '1';
        end if;
        if i_symbol = '0' then
          r_flip                  <= '0';
        end if;
      else
        if i_symbol = '0' then
          r_flip                  <= '0';
          counter                 <= (others => '0');
        end if;
        delay_valid               <= '0';
      end if;
    end if;
  end process P_DELAY;

  -- Process to time active cycles
  P_ACTIVE_TIMING : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if delay_valid = '1' then --or r_delay_valid = '1' then
        if active_counter = g_ACTIVE_CYCLES then
          if quiet_counter  = g_QUIET_CYCLES-1 then
            active_counter        <= (others => '0');
          end if;
        else
          active_counter          <= active_counter + '1';
        end if;
      else
        active_counter            <= (others => '0');
      end if;
    end if;
  end process P_ACTIVE_TIMING;

  -- Process to time quiet cycles
  P_QUIET_TIMING : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if active_counter = g_ACTIVE_CYCLES then
        if quiet_counter = g_QUIET_CYCLES-1 then
          quiet_counter           <= (others => '0');
        else
          quiet_counter           <= quiet_counter + '1';
        end if;
      else
        quiet_counter             <= (others => '0');
      end if;
    end if;
  end process P_QUIET_TIMING;

  -- Process to delay m_axis
  P_AXIS : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if delay_valid = '1' then
        m_axis_tdata              <= s_axis_tdata;
        m_axis_tvalid             <= s_axis_tvalid and w_axis_tready;
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

  w_axis_tready                   <= '0' when active_counter = g_ACTIVE_CYCLES else delay_valid;
  s_axis_tready                   <= w_axis_tready;

end architecture RTL;
