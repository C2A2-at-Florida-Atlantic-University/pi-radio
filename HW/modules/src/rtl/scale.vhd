-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Scale CFO angle estimate with SCS and to 
--  the appropriate scaling DDS input expects
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity scale is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(31 downto 0);
    s_axis_tvalid                 : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(31 downto 0);
    m_axis_tvalid                 : out std_logic;

    i_symbol                      : in  std_logic;
    o_negative_freq               : out std_logic
  );
end entity scale;

architecture RTL of scale is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk      : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk      : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 250000000";

  constant DELAY_VAL              : integer         := 4;
  signal tvalid_pipe              : std_logic_vector(DELAY_VAL-1 downto 0);
  
  signal twos_complement          : std_logic_vector(31 downto 0);
  signal freq_scaled              : std_logic_vector(26 downto 0);
  signal dsp_out                  : std_logic_vector(45 downto 0);
  signal w_axis_tvalid            : std_logic;

  component dsp_macro_0
    port(
      clk                         : in  std_logic;
      A                           : in  std_logic_vector(26 downto 0);
      B                           : in  std_logic_vector(17 downto 0);
      C                           : in  std_logic_vector(1 downto 0);
      P                           : out std_logic_vector(45 downto 0)
    );
  end component dsp_macro_0;

begin

  -- Steps to convert angle value to dds input value
  --  1.) Obtain 2's complement 
  --  2.) Multiply by SCS = 976,562.5 Hz
  --  3.) Divide by 2 (output of cordic is scaled by pi already)
  --  4.) Multiply by 2^32
  --  5.) Divide by clock rate (250 MHz)

  -- Steps 2-5 can be combined into a single step by multiplying the 2's complement output of
  -- the cfo angle estimating cordic with 8388608 = 0x80_0000 = scale factor

  -- Drop 5 LSB off of input
  -- Drop 6 LSB off of scale factur

  P_NEGATIVE_FREQ : process(s_axis_tdata)
  begin
    if s_axis_tdata(31) = '1' then
      twos_complement             <= X"00000000" - s_axis_tdata;
    else
      twos_complement             <= s_axis_tdata;
    end if;
  end process P_NEGATIVE_FREQ;

  P_NEGATIVE_FREQ_OUT : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if s_axis_tvalid = '1' then
        if s_axis_tdata(31) = '1' then
          o_negative_freq         <= '0';
        else
          o_negative_freq         <= '1';
        end if;
      end if;
    end if;
  end process P_NEGATIVE_FREQ_OUT;

  freq_scaled                     <= twos_complement(31 downto 5);

  dsp_macro_0_inst : dsp_macro_0
    port map(
      clk                         => axis_aclk,
      A                           => freq_scaled,
      B                           => "010000000000000000",
      C                           => "00",
      P                           => dsp_out
    );

  -- Process to send out tdata
  P_TDATA : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if w_axis_tvalid = '1' then
        m_axis_tvalid             <= '1';
        m_axis_tdata              <= "000" & dsp_out(45 downto 21) & X"0";
      elsif i_symbol = '0' then
        m_axis_tvalid             <= '0';
        m_axis_tdata              <= (others => '0');
      end if;
    end if;
  end process P_TDATA;

  -- Process to delay tlast DELAY_VAL clock cycles
  P_TLAST_DELAY : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      tvalid_pipe                 <= tvalid_pipe(tvalid_pipe'left-1 downto 0) & s_axis_tvalid;
    end if;
  end process P_TLAST_DELAY;

  w_axis_tvalid                   <= tvalid_pipe(tvalid_pipe'left);

end architecture RTL;
