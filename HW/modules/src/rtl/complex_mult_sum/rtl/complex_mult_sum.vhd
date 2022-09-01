-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Perform complex mult sum of AXIS streams
--              Parallelization factor of 4
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity complex_mult_sum is
  port(
    s_axis_aclk                   : in  std_logic;
    s_axis_aresetn                : in  std_logic;

    s_axis0_tdata                 : in  std_logic_vector(127 downto 0);
    s_axis0_tvalid                : in  std_logic;
    s_axis0_tid                   : in  std_logic_vector(7 downto 0);
    s_axis0_tuser                 : in  std_logic_vector(7 downto 0);
    s_axis0_tlast                 : in  std_logic;

    s_axis1_tdata                 : in  std_logic_vector(127 downto 0);
    s_axis1_tvalid                : in  std_logic;
    s_axis1_tid                   : in  std_logic_vector(7 downto 0);
    s_axis1_tuser                 : in  std_logic_vector(7 downto 0);
    s_axis1_tlast                 : in  std_logic;

    -- Ant 0 I: 
    m_axis_tdata                  : out std_logic_vector(255 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tid                    : out std_logic_vector(7 downto 0);
    m_axis_tuser                  : out std_logic_vector(7 downto 0)
  );
end entity complex_mult_sum;

architecture RTL of complex_mult_sum is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of s_axis_aclk    : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk    : 
    signal is "ASSOCIATED_BUSIF s_axis_aclk:s_axis0:s_axis1:m_axis, FREQ_HZ 250000000";

  constant DELAY_VAL              : integer         := 6;
  signal tlast_pipe               : std_logic_vector(DELAY_VAL-1 downto 0);
  signal tlast                    : std_logic;
  signal r_tlast                  : std_logic;
  signal accum_data               : std_logic_vector(255 downto 0);
  signal out_tvalid               : std_logic_vector(3 downto 0);
  signal out_tdata                : std_logic_vector(255 downto 0);

  component cmpy_0 is
    port(
      aclk                        : in  std_logic;
      aresetn                     : in  std_logic;

      s_axis_a_tvalid             : in  std_logic;
      s_axis_a_tdata              : in  std_logic_vector(31 downto 0);

      s_axis_b_tvalid             : in  std_logic;
      s_axis_b_tdata              : in  std_logic_vector(31 downto 0);

      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tdata           : out std_logic_vector(63 downto 0)
    );
  end component cmpy_0;

begin

  gen_mults : for i in 0 to 3 generate
    cmpy_inst1 : cmpy_0
      port map(
        aclk                        => s_axis_aclk,
        aresetn                     => s_axis_aresetn,

        s_axis_a_tvalid             => s_axis0_tvalid,
        s_axis_a_tdata              => s_axis0_tdata(32+32*i-1 downto 32*i),

        s_axis_b_tvalid             => s_axis1_tvalid,
        s_axis_b_tdata              => s_axis1_tdata(32+32*i-1 downto 32*i),
 
        m_axis_dout_tvalid          => out_tvalid(i),
        m_axis_dout_tdata           => out_tdata(64+64*i-1 downto 64*i)
      );
  end generate gen_mults;

  -- Process to delay tlast 7 clock cycles
  P_TLAST_DELAY : process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      tlast_pipe                    <= tlast_pipe(tlast_pipe'left-1 downto 0) & s_axis1_tlast;
      r_tlast                       <= tlast;
    end if;
  end process P_TLAST_DELAY;

  tlast                             <= tlast_pipe(tlast_pipe'left);
  m_axis_tid                        <= (others => '0');
  m_axis_tuser                      <= (others => '0');

  -- Process to accumulate output
  P_ACCUM : process(s_axis_aclk)
  begin
    if s_axis_aresetn = '0' then
      accum_data                    <= (others => '0');
    elsif rising_edge(s_axis_aclk) then
      if r_tlast = '1' then
        accum_data(31 downto 0)     <= out_tdata(31 downto 0); -- sample 0, I
        accum_data(63 downto 32)    <= out_tdata(63 downto 32); -- sample 0, Q
        accum_data(95 downto 64)    <= out_tdata(95 downto 64); -- sample 1, I
        accum_data(127 downto 96)   <= out_tdata(127 downto 96); -- sample 1, Q
        accum_data(159 downto 128)  <= out_tdata(159 downto 128); -- sample 2, I
        accum_data(191 downto 160)  <= out_tdata(191 downto 160); -- sample 2, Q
        accum_data(223 downto 192)  <= out_tdata(223 downto 192); -- sample 3, I
        accum_data(255 downto 224)  <= out_tdata(255 downto 224); -- sample 3, Q
        m_axis_tdata                <= accum_data;
        m_axis_tvalid               <= '1';
      elsif out_tvalid = "1111" then
        accum_data(31 downto 0)     <= accum_data(31 downto 0) + out_tdata(31 downto 0); -- sample 0, I
        accum_data(63 downto 32)    <= accum_data(63 downto 32) + out_tdata(63 downto 32); -- sample 0, Q
        accum_data(95 downto 64)    <= accum_data(95 downto 64) + out_tdata(95 downto 64); -- sample 1, I
        accum_data(127 downto 96)   <= accum_data(127 downto 96) + out_tdata(127 downto 96); -- sample 1, Q
        accum_data(159 downto 128)  <= accum_data(159 downto 128) + out_tdata(159 downto 128); -- sample 2, I
        accum_data(191 downto 160)  <= accum_data(191 downto 160) + out_tdata(191 downto 160); -- sample 2, Q
        accum_data(223 downto 192)  <= accum_data(223 downto 192) + out_tdata(223 downto 192); -- sample 3, I
        accum_data(255 downto 224)  <= accum_data(255 downto 224) + out_tdata(255 downto 224); -- sample 3, Q
        m_axis_tdata                <= (others => '0');
        m_axis_tvalid               <= '0';
      else
        accum_data                  <= (others => '0');
        m_axis_tdata                <= (others => '0');
        m_axis_tvalid               <= '0';
      end if;
    end if;
  end process P_ACCUM;

end architecture RTL;
