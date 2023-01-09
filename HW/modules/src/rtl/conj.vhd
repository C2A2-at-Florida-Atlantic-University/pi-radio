-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Takes conjugate of input AXIS
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity conj is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(127 downto 0);
    s_axis_tvalid                 : in  std_logic;
    --s_axis_tid                    : in  std_logic_vector(7 downto 0);
    --s_axis_tuser                  : in  std_logic_vector(7 downto 0);
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    --m_axis_tid                    : out std_logic_vector(7 downto 0);
    --m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic;

    i_negative_freq               : in  std_logic
  );
end entity conj;
 
architecture RTL of conj is 

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498";

  signal i_data1                  : std_logic_vector(15 downto 0);
  signal q_data1_conj             : std_logic_vector(15 downto 0);
  signal q_data1                  : std_logic_vector(15 downto 0);
  signal i_data2                  : std_logic_vector(15 downto 0);
  signal q_data2_conj             : std_logic_vector(15 downto 0);
  signal q_data2                  : std_logic_vector(15 downto 0);
  signal i_data3                  : std_logic_vector(15 downto 0);
  signal q_data3_conj             : std_logic_vector(15 downto 0);
  signal q_data3                  : std_logic_vector(15 downto 0);
  signal i_data4                  : std_logic_vector(15 downto 0);
  signal q_data4_conj             : std_logic_vector(15 downto 0);
  signal q_data4                  : std_logic_vector(15 downto 0);

begin

  -- Flip quadrature bits
  i_data1                         <= s_axis_tdata(15 downto 0);
  q_data1_conj                    <= X"00" - s_axis_tdata(31 downto 16);
  q_data1                         <= s_axis_tdata(31 downto 16);
  --q_data1_conj                    <= s_axis_tdata(31 downto 16);
  
  i_data2                         <= s_axis_tdata(47 downto 32);
  q_data2_conj                    <= X"00" - s_axis_tdata(63 downto 48);
  q_data2                         <= s_axis_tdata(63 downto 48);
  --q_data2_conj                    <= s_axis_tdata(63 downto 48);

  i_data3                         <= s_axis_tdata(79 downto 64);
  q_data3_conj                    <= X"00" - s_axis_tdata(95 downto 80);
  q_data3                         <= s_axis_tdata(95 downto 80);
  --q_data3_conj                    <= s_axis_tdata(95 downto 80);

  i_data4                         <= s_axis_tdata(111 downto 96);
  q_data4_conj                    <= X"00" - s_axis_tdata(127 downto 112);
  q_data4                         <= s_axis_tdata(127 downto 112);
  --q_data4_conj                    <= s_axis_tdata(127 downto 112);

  P_CONJ : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if i_negative_freq = '0' then
        m_axis_tdata              <= q_data4_conj & i_data4 &
                                     q_data3_conj & i_data3 & 
                                     q_data2_conj & i_data2 &
                                     q_data1_conj & i_data1;
      else
        m_axis_tdata              <= q_data4 & i_data4 &
                                     q_data3 & i_data3 & 
                                     q_data2 & i_data2 &
                                     q_data1 & i_data1;
      end if;

      m_axis_tvalid               <= s_axis_tvalid;
      --m_axis_tid                  <= s_axis_tid;
      --m_axis_tuser                <= s_axis_tuser;
      m_axis_tlast                <= s_axis_tlast;
    end if;
  end process P_CONJ;

end architecture RTL;    
