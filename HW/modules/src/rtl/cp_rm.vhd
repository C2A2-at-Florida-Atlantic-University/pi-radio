-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Separates CP and non CP in AXIS 
--  Also responsible for data formating and timing control 
--  for the reset of the CFO corrector
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity cp_rm is
  generic(
    g_PROCESSING_CYCLES           : integer := 383
  );
  port(
    axis_aclk                   : in  std_logic;
    axis_aresetn                : in  std_logic;

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

    m_cp_axis_tdata               : out std_logic_vector(127 downto 0);
    m_cp_axis_tvalid              : out std_logic;
    m_cp_axis_tid                 : out std_logic_vector(7 downto 0);
    m_cp_axis_tuser               : out std_logic_vector(7 downto 0);
    m_cp_axis_tlast               : out std_logic;

    o_symbol                      : out std_logic;
    o_symbol_number               : out std_logic_vector(7 downto 0)
  );
end entity cp_rm;

architecture RTL of cp_rm is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis:m_cp_axis, FREQ_HZ 99999001";

  signal cp_counter               : std_logic_vector(9 downto 0);
  signal frame_current            : std_logic;
  
  signal in_tdata                 : std_logic_vector(127 downto 0);
  signal in_tvalid                : std_logic;
  signal in_tid                   : std_logic_vector(7 downto 0);
  signal in_tuser                 : std_logic_vector(7 downto 0);
  signal in_tlast                 : std_logic                       := '0';

  signal tvalid_rising            : std_logic;
  signal symbol_counter           : std_logic_vector(7 downto 0);
  signal r_tlast_symbol           : std_logic;

  signal out_counter              : std_logic_vector(integer(ceil(log2(real(g_PROCESSING_CYCLES)))) downto 0);
  signal r_symbol                 : std_logic := '0';

begin

  -- Assert frame_current to indicate a packet is being received
  P_FRAME : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if s_axis_tvalid = '1' then
        frame_current             <= '1';
      end if;
    end if;
  end process P_FRAME;

  -- Capture rising edge of tvalid
  tvalid_rising                   <= s_axis_tvalid and not in_tvalid;

  -- Create counter to cycle between all samples of OFDM symbol
  P_COUNTER : process(axis_aclk,axis_aresetn)
  begin
    if axis_aresetn = '0' then
      cp_counter                  <= (others => '0');
    elsif rising_edge(axis_aclk) then
      if in_tlast = '1' or tvalid_rising = '1' then
        cp_counter                <= (others => '0');
      else
        if frame_current = '1' then
          cp_counter              <= cp_counter + '1';
        end if;
      end if;
    end if;
  end process P_COUNTER;

  -- Register input AXIS
  P_AXIS_REGISTER : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      in_tdata                    <= s_axis_tdata;
      in_tvalid                   <= s_axis_tvalid;
      in_tid                      <= s_axis_tid;
      in_tuser                    <= s_axis_tuser;
      in_tlast                    <= s_axis_tlast;
    end if;
  end process P_AXIS_REGISTER;

  -- Create cp removed stream and cp stream
  P_CP : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      case s_axis_tvalid or in_tvalid is
        when '0' =>
          m_axis_tdata            <= (others => '0');
          m_axis_tvalid           <= '0';
          m_axis_tid              <= (others => '0');
          m_axis_tuser            <= (others => '0');
          m_axis_tlast            <= '0';

          m_cp_axis_tdata         <= (others => '0');
          m_cp_axis_tvalid        <= '0';
          m_cp_axis_tid           <= (others => '0');
          m_cp_axis_tuser         <= (others => '0');
          m_cp_axis_tlast         <= '0';
        when '1' =>
          if cp_counter <= "0000111111" then
            m_cp_axis_tdata       <= in_tdata;
            m_cp_axis_tvalid      <= in_tvalid;
            m_cp_axis_tid         <= in_tid;
            m_cp_axis_tuser       <= in_tuser;
            m_cp_axis_tlast       <= in_tlast;

            m_axis_tdata          <= (others => '0');
            m_axis_tvalid         <= '0';
            m_axis_tid            <= (others => '0');
            m_axis_tuser          <= (others => '0');
            m_axis_tlast          <= '0';
          else
            m_cp_axis_tdata       <= (others => '0');
            m_cp_axis_tvalid      <= '0';
            m_cp_axis_tid         <= (others => '0');
            m_cp_axis_tuser       <= (others => '0');
            m_cp_axis_tlast       <= '0';

            m_axis_tdata          <= in_tdata;
            m_axis_tvalid         <= in_tvalid;
            m_axis_tid            <= in_tid;
            m_axis_tuser          <= in_tuser;
            m_axis_tlast          <= in_tlast;
          end if;
        when others =>
          m_axis_tdata            <= (others => '0');
          m_axis_tvalid           <= '0';
          m_axis_tid              <= (others => '0');
          m_axis_tuser            <= (others => '0');
          m_axis_tlast            <= '0';

          m_cp_axis_tdata         <= (others => '0');
          m_cp_axis_tvalid        <= '0';
          m_cp_axis_tid           <= (others => '0');
          m_cp_axis_tuser         <= (others => '0');
          m_cp_axis_tlast         <= '0';
      end case;
    end if;
  end process P_CP;
 
  -- Process to assert o_symbol for entire OFDM packet + processing time
  P_OFDM_PACKET_TIMING : process(axis_aclk,axis_aresetn)
  begin
    if axis_aresetn = '0' then
--      r_symbol                    <= '0';
      out_counter                 <= (others => '0');
    elsif rising_edge(axis_aclk) then
      if s_axis_tvalid = '1' then
        out_counter               <= (others => '0');
        r_symbol                  <= '1';
      else
        if out_counter = std_logic_vector(to_unsigned(g_PROCESSING_CYCLES, out_counter'length)) then
          r_symbol                <= '0';
        else
          out_counter             <= out_counter + '1';
          r_symbol                <= '1';
        end if;
      end if;
    end if;
  end process P_OFDM_PACKET_TIMING;

  o_symbol                        <= r_symbol;

  -- Process to calculate current OFDM symbol
  P_SYMBOL_COUNTER : process(axis_aclk,axis_aresetn)
  begin
    if axis_aresetn = '0' then
      symbol_counter              <= (others => '0');
    elsif rising_edge(axis_aclk) then
      -- Number of OFDM packets per symbol (max 256)
      if r_symbol = '1' then
        if in_tlast = '1' then
          symbol_counter          <= symbol_counter + '1';
        end if;
      else
        symbol_counter            <= (others => '0');
      end if;
    end if;
  end process P_SYMBOL_COUNTER;

  o_symbol_number                 <= symbol_counter;

end architecture RTL;
