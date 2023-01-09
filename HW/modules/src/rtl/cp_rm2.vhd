-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Separate last 256 samples of ofdm symbol
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity cp_rm2 is
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

    i_symbol                      : in  std_logic
  );
end entity cp_rm2;

architecture RTL of cp_rm2 is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
   
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498";

  signal cp_counter               : std_logic_vector(9 downto 0);
  signal frame_current            : std_logic;

  signal in_tdata                 : std_logic_vector(127 downto 0);
  signal in_tvalid                : std_logic;
  signal in_tid                   : std_logic_vector(7 downto 0);
  signal in_tuser                 : std_logic_vector(7 downto 0);
  signal in_tlast                 : std_logic;

  signal r_tvalid                 : std_logic;
  signal r_tvalid_rising          : std_logic;

begin

  -- Assert frame_current to indicate a packet is being received
  P_FRAME : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if s_axis_tvalid = '1' then
        frame_current             <= '1';
      end if;
      r_tvalid                    <= s_axis_tvalid;
    end if;
  end process P_FRAME;

  r_tvalid_rising                 <= s_axis_tvalid and not r_tvalid;

  -- Create counter to cycle all samples of OFDM symbol
  P_COUNTER : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if r_tvalid_rising = '1' then
        cp_counter                <= (others => '0');
      else
        if frame_current = '1' then
          if cp_counter < "0011000000" then
            cp_counter            <= cp_counter + '1';
          end if;
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
      case in_tvalid is
        when '0' =>
          m_axis_tdata            <= (others => '0');
          m_axis_tvalid           <= '0';
          m_axis_tid              <= (others => '0');
          m_axis_tuser            <= (others => '0');
          m_axis_tlast            <= '0';
        when '1' => -- (1024-256) / 4
          if cp_counter < "0011000000" then
            m_axis_tdata          <= (others => '0');
            m_axis_tvalid         <= '0';
            m_axis_tid            <= (others => '0');
            m_axis_tuser          <= (others => '0');
            m_axis_tlast          <= '0';
          else
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
      end case;
    end if;
  end process P_CP;

end architecture RTL;
