-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Sum
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sum is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;
    
    s_axis_tdata                  : in  std_logic_vector(255 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tuser                  : in  std_logic_vector(7 downto 0);
    s_axis_tid                    : in  std_logic_vector(7 downto 0);
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(63 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tid                    : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic
  );
end entity sum;

architecture RTL of sum is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk      : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk      : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498";

  signal r_tlast                    : std_logic;
  signal accum_data                 : std_logic_vector(63 downto 0);
  signal r_flip                     : std_logic;

begin

  m_axis_tid                        <= (others => '0');
  m_axis_tuser                      <= (others => '0');

  -- Process to pipeline tlast
  P_TLAST : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      r_tlast                       <= s_axis_tlast;
    end if;
  end process P_TLAST;

  -- Process to accumulate output
  P_ACCUM : process(axis_aclk,axis_aresetn)
  begin
    if axis_aresetn = '0' then
      accum_data                    <= (others => '0');
    elsif rising_edge(axis_aclk) then
      if (s_axis_tvalid = '1' or r_tlast = '1') then
        accum_data(31 downto 0)     <= accum_data(31 downto 0) + 
                                       (s_axis_tdata(31  downto 0  )) + (s_axis_tdata(95  downto 64 )) +
                                       (s_axis_tdata(159 downto 128)) + (s_axis_tdata(223 downto 192));
        accum_data(63 downto 32)    <= accum_data(63 downto 32) + 
                                       (s_axis_tdata(63  downto 32 )) + (s_axis_tdata(127 downto 96 )) +
                                       (s_axis_tdata(191 downto 160)) + (s_axis_tdata(255 downto 224));
        m_axis_tdata                <= (others => '0');
        m_axis_tvalid               <= '0';
        r_flip                      <= '1';
      else
        if r_flip = '1' then
          m_axis_tdata              <= accum_data;
          m_axis_tvalid             <= '1';
          r_flip                    <= '0';
        else
          m_axis_tdata              <= (others => '0');
          m_axis_tvalid             <= '0';
          accum_data                <= (others => '0');
        end if;
      end if;
    end if;
  end process P_ACCUM;

end architecture RTL;
