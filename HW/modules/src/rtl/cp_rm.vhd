-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Separates CP and non CP in AXIS 
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity cp_rm is
  port(
    s_axis_aclk                   : in  std_logic;
    s_axis_aresetn                : in  std_logic;

    s_equalizer_in_axis_tdata     : in  std_logic_vector(127 downto 0);
    s_equalizer_in_axis_tvalid    : in  std_logic;
    s_equalizer_in_axis_tid       : in  std_logic_vector(7 downto 0);
    s_equalizer_in_axis_tuser     : in  std_logic_vector(7 downto 0);
    s_equalizer_in_axis_tlast     : in  std_logic;

    m_cp_rm_axis_tdata            : out std_logic_vector(127 downto 0);
    m_cp_rm_axis_tvalid           : out std_logic;
    m_cp_rm_axis_tid              : out std_logic_vector(7 downto 0);
    m_cp_rm_axis_tuser            : out std_logic_vector(7 downto 0);
    m_cp_rm_axis_tlast            : out std_logic;

    m_cp_axis_tdata               : out std_logic_vector(127 downto 0);
    m_cp_axis_tvalid              : out std_logic;
    m_cp_axis_tid                 : out std_logic_vector(7 downto 0);
    m_cp_axis_tuser               : out std_logic_vector(7 downto 0);
    m_cp_axis_tlast               : out std_logic
  );
end entity cp_rm;

architecture RTL of cp_rm is

  signal cp_counter               : std_logic_vector(9 downto 0);
  signal frame_current            : std_logic;
  
  signal in_tdata                 : std_logic_vector(127 downto 0);
  signal in_tvalid                : std_logic;
  signal in_tid                   : std_logic_vector(7 downto 0);
  signal in_tuser                 : std_logic_vector(7 downto 0);
  signal in_tlast                 : std_logic;

begin

  -- Assert frame_current to indicate a packet is being received
  P_FRAME : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      if s_equalizer_in_axis_tlast = '1' then
        frame_current             <= '1';
      end if;
    end if;
  end process P_FRAME;

  -- Create counter to cycle between all samples of OFDM symbol
  P_COUNTER : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      if s_equalizer_in_axis_tlast = '1' then
        cp_counter                <= (others => '0');
      else
        if frame_current = '1' then
          cp_counter              <= cp_counter + '1';
        end if;
      end if;
    end if;
  end process P_COUNTER;

  -- Register input AXIS
  P_AXIS_REGISTER : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      in_tdata                    <= s_equalizer_in_axis_tdata;
      in_tvalid                   <= s_equalizer_in_axis_tvalid;
      in_tid                      <= s_equalizer_in_axis_tid;
      in_tuser                    <= s_equalizer_in_axis_tuser;
      in_tlast                    <= s_equalizer_in_axis_tlast;
    end if;
  end process P_AXIS_REGISTER;

  -- Create cp removed stream and cp stream
  P_CP : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      case in_tvalid is
        when '0' =>
          m_cp_rm_axis_tdata      <= (others => '0');
          m_cp_rm_axis_tvalid     <= '0';
          m_cp_rm_axis_tid        <= (others => '0');
          m_cp_rm_axis_tuser      <= (others => '0');
          m_cp_rm_axis_tlast      <= '0';

          m_cp_axis_tdata         <= (others => '0');
          m_cp_axis_tvalid        <= '0';
          m_cp_axis_tid           <= (others => '0');
          m_cp_axis_tuser         <= (others => '0');
          m_cp_axis_tlast         <= '0';
        when '1' =>
          if cp_counter < "0001000000" then
            m_cp_axis_tdata       <= in_tdata;
            m_cp_axis_tvalid      <= in_tvalid;
            m_cp_axis_tid         <= in_tid;
            m_cp_axis_tuser       <= in_tuser;
            m_cp_axis_tlast       <= in_tlast;

            m_cp_rm_axis_tdata    <= (others => '0');
            m_cp_rm_axis_tvalid   <= '0';
            m_cp_rm_axis_tid      <= (others => '0');
            m_cp_rm_axis_tuser    <= (others => '0');
            m_cp_rm_axis_tlast    <= '0';
          else
            m_cp_axis_tdata       <= (others => '0');
            m_cp_axis_tvalid      <= '0';
            m_cp_axis_tid         <= (others => '0');
            m_cp_axis_tuser       <= (others => '0');
            m_cp_axis_tlast       <= '0';

            m_cp_rm_axis_tdata    <= in_tdata;
            m_cp_rm_axis_tvalid   <= in_tvalid;
            m_cp_rm_axis_tid      <= in_tid;
            m_cp_rm_axis_tuser    <= in_tuser;
            m_cp_rm_axis_tlast    <= in_tlast;
          end if;
        when others =>
          m_cp_rm_axis_tdata      <= (others => '0');
          m_cp_rm_axis_tvalid     <= '0';
          m_cp_rm_axis_tid        <= (others => '0');
          m_cp_rm_axis_tuser      <= (others => '0');
          m_cp_rm_axis_tlast      <= '0';

          m_cp_axis_tdata         <= (others => '0');
          m_cp_axis_tvalid        <= '0';
          m_cp_axis_tid           <= (others => '0');
          m_cp_axis_tuser         <= (others => '0');
          m_cp_axis_tlast         <= '0';
      end case;
    end if;
  end process P_CP;

end architecture RTL;
