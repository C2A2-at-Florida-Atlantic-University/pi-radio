-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Equalize data with channel estimates
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity equalization is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_din_axis_tdata              : in  std_logic_vector(127 downto 0);
    s_din_axis_tvalid             : in  std_logic;
    s_din_axis_tlast              : in  std_logic;

    s_ch_est_axis_tdata           : in  std_logic_vector(31 downto 0);
    s_ch_est_axis_tvalid          : in  std_logic;
    s_ch_est_axis_tlast           : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tlast                  : out std_logic
  );
end entity equalization;

architecture RTL of equalization is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_din_axis:s_ch_est_axis:m_axis, FREQ_HZ 250000000";

  component pipeline is
    generic(
      g_DELAY_CYCLES              : integer := 76;
      g_TDATA_WIDTH               : integer := 16
    );
    port(
      axis_aclk                   : in  std_logic;
      axis_aresetn                : in  std_logic;

      s_axis_tdata                : in  std_logic_vector(g_TDATA_WIDTH-1 downto 0);
      s_axis_tvalid               : in  std_logic;
      s_axis_tlast                : in  std_logic;

      m_axis_tdata                : out std_logic_vector(g_TDATA_WIDTH-1 downto 0);
      m_axis_tvalid               : out std_logic;
      m_axis_tlast                : out std_logic
    );
  end component pipeline;

  component div_gen_0 is
    port(
      aclk                        : in  std_logic;
      aresetn                     : in  std_logic;

      s_axis_divisor_tdata        : in  std_logic_vector(7 downto 0);
      s_axis_divisor_tvalid       : in  std_logic;
      --s_axis_divisor_tlast        : in  std_logic;
      
      s_axis_dividend_tdata       : in  std_logic_vector(15 downto 0);
      s_axis_dividend_tvalid      : in  std_logic;
      s_axis_dividend_tlast       : in  std_logic;

      m_axis_dout_tdata           : out std_logic_vector(23 downto 0);
      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tlast           : out std_logic
    );
  end component div_gen_0;

  signal s_ch_est_axis_tdata_pipe : std_logic_vector(15 downto 0);

  signal div_sample_0             : std_logic_vector(23 downto 0);
  signal div_sample_1             : std_logic_vector(23 downto 0);
  signal div_sample_2             : std_logic_vector(23 downto 0);
  signal div_sample_3             : std_logic_vector(23 downto 0);
  signal div_tvalid               : std_logic;
  signal div_tlast                : std_logic;

  signal abs_res_0                : std_logic_vector(15 downto 0);
  signal abs_res_1                : std_logic_vector(15 downto 0);
  signal abs_res_2                : std_logic_vector(15 downto 0);
  signal abs_res_3                : std_logic_vector(15 downto 0);
  
  signal angle_tvalid             : std_logic;
  signal angle_res_0              : std_logic_vector(15 downto 0);
  signal angle_res_1              : std_logic_vector(15 downto 0);
  signal angle_res_2              : std_logic_vector(15 downto 0);
  signal angle_res_3              : std_logic_vector(15 downto 0);

  signal pipeline_ang_0_tvalid    : std_logic;
  signal pipeline_ang_0_tdata     : std_logic_vector(15 downto 0);
  signal pipeline_ang_1_tdata     : std_logic_vector(15 downto 0);
  signal pipeline_ang_2_tdata     : std_logic_vector(15 downto 0);
  signal pipeline_ang_3_tdata     : std_logic_vector(15 downto 0);

begin

  -- Rotate data and delay channel estimate to properly aligh with
  -- previous hold interpolation type
  p_ALIGN : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      s_ch_est_axis_tdata_pipe    <= s_ch_est_axis_tdata(31 downto 16);
    end if;
  end process p_ALIGN;

  -- 4 samples per clock (3 data 1 pilot). Equalize pilot sample as well
  ----------------------------------------------------------------------
  -- Equalize magnitude
  div_inst_0 : div_gen_0
    port map(
      aclk                        => axis_aclk,
      aresetn                     => axis_aresetn,

      s_axis_divisor_tdata        => s_ch_est_axis_tdata(7 downto 0),
      s_axis_divisor_tvalid       => s_ch_est_axis_tvalid,
      --s_axis_divisor_tlast        => s_ch_est_axis_tlast,

      s_axis_dividend_tdata       => s_din_axis_tdata(15 downto 0),
      s_axis_dividend_tvalid      => s_din_axis_tvalid,
      s_axis_dividend_tlast       => s_din_axis_tlast,

      m_axis_dout_tdata           => div_sample_0,
      m_axis_dout_tvalid          => div_tvalid,
      m_axis_dout_tlast           => div_tlast
    );

  -- Equalize Phase
  p_CH_EST_ANG_0 : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      if s_ch_est_axis_tvalid = '1' and s_din_axis_tvalid = '1' then
        pipeline_ang_0_tvalid     <= '1';
        pipeline_ang_0_tdata      <= s_din_axis_tdata(31 downto 16) + 
                                     --(s_ch_est_axis_tdata(31 downto 16));
                                     s_ch_est_axis_tdata_pipe;
      else
        pipeline_ang_0_tvalid     <= '0';
        pipeline_ang_0_tdata      <= (others => '0');
      end if;
    end if;
  end process p_CH_EST_ANG_0;

  -- Pipeline Equalized phase value to alight with equalized magnitude value
  pipeline_inst_0 : pipeline
    generic map(
      g_DELAY_CYCLES              => 19,
      g_TDATA_WIDTH               => 16
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,

      s_axis_tdata                => pipeline_ang_0_tdata,
      s_axis_tvalid               => pipeline_ang_0_tvalid,
      s_axis_tlast                => '0',

      m_axis_tdata                => angle_res_0,
      m_axis_tvalid               => angle_tvalid,
      m_axis_tlast                => open
    );

  ----------------------------------------------------------------------
  -- Equalize magnitude
  div_inst_1 : div_gen_0
    port map(
      aclk                        => axis_aclk,
      aresetn                     => axis_aresetn,

      s_axis_divisor_tdata        => s_ch_est_axis_tdata(7 downto 0),
      s_axis_divisor_tvalid       => s_ch_est_axis_tvalid,

      s_axis_dividend_tdata       => s_din_axis_tdata(47 downto 32),
      s_axis_dividend_tvalid      => s_din_axis_tvalid,
      s_axis_dividend_tlast       => '0',

      m_axis_dout_tdata           => div_sample_1,
      m_axis_dout_tvalid          => open,
      m_axis_dout_tlast           => open
    );

  -- Equalize Phase
  p_CH_EST_ANG_1 : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      if s_ch_est_axis_tvalid = '1' and s_din_axis_tvalid = '1' then
        pipeline_ang_1_tdata      <= s_din_axis_tdata(63 downto 48) +
                                     --(s_ch_est_axis_tdata(31 downto 16));
                                     s_ch_est_axis_tdata_pipe;
      else
        pipeline_ang_1_tdata      <= (others => '0');
      end if;
    end if;
  end process p_CH_EST_ANG_1;

  -- Pipeline Equalized phase value to alight with equalized magnitude value
  pipeline_inst_1 : pipeline
    generic map(
      g_DELAY_CYCLES              => 19,
      g_TDATA_WIDTH               => 16
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,

      s_axis_tdata                => pipeline_ang_1_tdata,
      s_axis_tvalid               => pipeline_ang_0_tvalid,
      s_axis_tlast                => '0',

      m_axis_tdata                => angle_res_1,
      m_axis_tvalid               => open,
      m_axis_tlast                => open
    );

  ----------------------------------------------------------------------
  -- Equalize magnitude
  div_inst_2 : div_gen_0
    port map(
      aclk                        => axis_aclk,
      aresetn                     => axis_aresetn,

      s_axis_divisor_tdata        => s_ch_est_axis_tdata(7 downto 0),
      s_axis_divisor_tvalid       => s_ch_est_axis_tvalid,

      s_axis_dividend_tdata       => s_din_axis_tdata(79 downto 64),
      s_axis_dividend_tvalid      => s_din_axis_tvalid,
      s_axis_dividend_tlast       => '0',

      m_axis_dout_tdata           => div_sample_2,
      m_axis_dout_tvalid          => open,
      m_axis_dout_tlast           => open
    );

  -- Equalize Phase
  p_CH_EST_ANG_2 : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      if s_ch_est_axis_tvalid = '1' and s_din_axis_tvalid = '1' then
        pipeline_ang_2_tdata      <= s_din_axis_tdata(95 downto 80) +
                                     --(s_ch_est_axis_tdata(31 downto 16));
                                     s_ch_est_axis_tdata_pipe;
      else
        pipeline_ang_2_tdata      <= (others => '0');
      end if;
    end if;
  end process p_CH_EST_ANG_2;

  -- Pipeline Equalized phase value to alight with equalized magnitude value
  pipeline_inst_2 : pipeline
    generic map(
      g_DELAY_CYCLES              => 19,
      g_TDATA_WIDTH               => 16
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,

      s_axis_tdata                => pipeline_ang_2_tdata,
      s_axis_tvalid               => pipeline_ang_0_tvalid,
      s_axis_tlast                => '0',

      m_axis_tdata                => angle_res_2,
      m_axis_tvalid               => open,
      m_axis_tlast                => open
    );

  ----------------------------------------------------------------------
  -- Equalize magnitude
  div_inst_3 : div_gen_0
    port map(
      aclk                        => axis_aclk,
      aresetn                     => axis_aresetn,

      s_axis_divisor_tdata        => s_ch_est_axis_tdata(7 downto 0),
      s_axis_divisor_tvalid       => s_ch_est_axis_tvalid,

      s_axis_dividend_tdata       => s_din_axis_tdata(111 downto 96),
      s_axis_dividend_tvalid      => s_din_axis_tvalid,
      s_axis_dividend_tlast       => '0',

      m_axis_dout_tdata           => div_sample_3,
      m_axis_dout_tvalid          => open,
      m_axis_dout_tlast           => open
    );

  -- Equalize Phase
  p_CH_EST_ANG_3 : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      if s_ch_est_axis_tvalid = '1' and s_din_axis_tvalid = '1' then
        pipeline_ang_3_tdata      <= s_din_axis_tdata(127 downto 112) +
                                     (s_ch_est_axis_tdata(31 downto 16));
      else
        pipeline_ang_3_tdata      <= (others => '0');
      end if;
    end if;
  end process p_CH_EST_ANG_3;

  -- Pipeline Equalized phase value to alight with equalized magnitude value
  pipeline_inst_3 : pipeline
    generic map(
      g_DELAY_CYCLES              => 19,
      g_TDATA_WIDTH               => 16
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,

      s_axis_tdata                => pipeline_ang_3_tdata,
      s_axis_tvalid               => pipeline_ang_0_tvalid,
      s_axis_tlast                => '0',

      m_axis_tdata                => angle_res_3,
      m_axis_tvalid               => open,
      m_axis_tlast                => open
    );

  ----------------------------------------------------------------------
  -- Pick up quotient and drop fractional part
  abs_res_0                       <= div_sample_0(17 downto 2);
  abs_res_1                       <= div_sample_1(17 downto 2);
  abs_res_2                       <= div_sample_2(17 downto 2);
  abs_res_3                       <= div_sample_3(17 downto 2);
  -- Concatenate into m_axis
  p_M_AXIS : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      m_axis_tdata                <= angle_res_3 & abs_res_3 & 
                                     angle_res_2 & abs_res_2 & 
                                     angle_res_1 & abs_res_1 &
                                     angle_res_0 & abs_res_0;
      m_axis_tvalid               <= angle_tvalid and div_tvalid;
      m_axis_tlast                <= div_tlast;
    end if;
  end process p_M_AXIS;

end architecture RTL;
