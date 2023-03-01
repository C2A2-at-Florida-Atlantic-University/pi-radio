-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Estimate channel 
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity channel_estimate is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_pilot_tx_axis_tdata         : in  std_logic_vector(31 downto 0);
    s_pilot_tx_axis_tvalid        : in  std_logic;
    --s_pilot_tx_axis_tid           : in  std_logic_vector(7 downto 0);
    --s_pilot_tx_axis_tuser         : in  std_logic_vector(7 downto 0);
    s_pilot_tx_axis_tlast         : in  std_logic;

    s_pilot_rx_axis_tdata         : in  std_logic_vector(31 downto 0);
    s_pilot_rx_axis_tvalid        : in  std_logic;
    --s_pilot_rx_axis_tid           : in  std_logic_vector(7 downto 0);
    --s_pilot_rx_axis_tuser         : in  std_logic_vector(7 downto 0);
    s_pilot_rx_axis_tlast         : in  std_logic;

    s_data_axis_tdata             : in  std_logic_vector(127 downto 0);
    s_data_axis_tvalid            : in  std_logic;
    s_data_axis_tlast             : in  std_logic;

    m_ch_est_axis_tdata           : out std_logic_vector(31 downto 0);
    m_ch_est_axis_tvalid          : out std_logic;
    m_ch_est_axis_tlast           : out std_logic;

    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    --m_axis_tid                    : out std_logic_vector(7 downto 0);
    --m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic;

    -- Simulation only
    m_tx_cordic_out_axis_tdata    : out std_logic_vector(31 downto 0);
    m_tx_cordic_out_axis_tvalid   : out std_logic;
    m_rx_cordic_out_axis_tdata    : out std_logic_vector(31 downto 0);
    m_rx_cordic_out_axis_tvalid   : out std_logic;
    m_abs_denom_in_axis_tdata     : out std_logic_vector(15 downto 0);
    m_abs_num_in_axis_tdata       : out std_logic_vector(15 downto 0);
    m_ang_denom_in_axis_tdata     : out std_logic_vector(15 downto 0);
    m_ang_num_in_axis_tdata       : out std_logic_vector(15 downto 0);
    m_ang_num_in_axis_tvalid      : out std_logic;
    m_abs_res_axis_tdata          : out std_logic_vector(23 downto 0);
    m_abs_res_axis_tvalid         : out std_logic;
    m_ang_res_axis_tdata          : out std_logic_vector(15 downto 0);
    m_ang_res_axis_tvalid         : out std_logic;

    o_read_tx_pilots              : out std_logic
  );
end entity channel_estimate;

architecture RTL of channel_estimate is

  constant g_DELAY_CYCLES         : integer       := 78;
  constant g_SCALE                : integer       := 11;

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_pilot_tx_axis:s_pilot_rx_axis:s_data_axis:m_axis:m_ch_est_axis, FREQ_HZ 249997498";

  component conj is
    port(
      axis_aclk                   : in  std_logic;
      axis_aresetn                : in  std_logic;

      s_axis_tdata                : in  std_logic_vector(127 downto 0);
      s_axis_tvalid               : in  std_logic;
      s_axis_tlast                : in  std_logic;

      m_axis_tdata                : out std_logic_vector(127 downto 0);
      m_axis_tvalid               : out std_logic;
      m_axis_tlast                : out std_logic;

      i_negative_freq             : in  std_logic
    );
  end component conj;

  component cordic_rec_to_polar is
    port(
      aclk                        : in  std_logic;
      s_axis_cartesian_tvalid     : in  std_logic;
      s_axis_cartesian_tdata      : in  std_logic_vector(31 downto 0);
      s_axis_cartesian_tlast      : in  std_logic;
      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tdata           : out std_logic_vector(31 downto 0);
      m_axis_dout_tlast           : out std_logic
    );
  end component cordic_rec_to_polar;

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

  signal axis_pilot_tx_tdata      : std_logic_vector(127 downto 0);
  signal axis_pilot_rx_tdata      : std_logic_vector(127 downto 0);
  
  signal m_pilot_tx_conj_axis_tdata    : std_logic_vector(127 downto 0);
  signal m_pilot_tx_conj_axis_tvalid   : std_logic;
  signal m_pilot_tx_conj_axis_tlast    : std_logic;

  signal m_pilot_rx_conj_axis_tdata    : std_logic_vector(127 downto 0);
  signal m_pilot_rx_conj_axis_tvalid   : std_logic;
  signal m_pilot_rx_conj_axis_tlast    : std_logic;

  signal m_pilot_tx_cordic_axis_tdata  : std_logic_vector(31 downto 0);
  signal m_pilot_tx_cordic_axis_tvalid : std_logic;
  signal m_pilot_tx_cordic_axis_tlast  : std_logic;

  signal m_pilot_rx_cordic_axis_tdata  : std_logic_vector(31 downto 0);
  signal m_pilot_rx_cordic_axis_tvalid : std_logic;

  signal m_amplitude_ch_est_axis_tdata : std_logic_vector(23 downto 0);
  signal m_amplitude_ch_est_axis_tdata2: std_logic_vector(15 downto 0);
  signal m_amplitude_ch_est_axis_tvalid: std_logic;
  signal m_amplitude_ch_est_axis_tlast : std_logic;

  signal m_angle_ch_est_axis_tdata     : std_logic_vector(15 downto 0);
  signal m_angle_ch_est_axis_tvalid    : std_logic;

  signal axis_pilot_rx_tdata1          : std_logic_vector(127 downto 0);
  signal axis_pilot_rx_tvalid1         : std_logic;
  signal axis_pilot_rx_tlast1          : std_logic;

  signal axis_pilot_rx_tdata2          : std_logic_vector(127 downto 0);
  signal axis_pilot_rx_tvalid2         : std_logic;
  signal axis_pilot_rx_tlast2          : std_logic;

  signal axis_pilot_rx_tdata3          : std_logic_vector(127 downto 0);
  signal axis_pilot_rx_tvalid3         : std_logic;
  signal axis_pilot_rx_tlast3          : std_logic;

  signal m_pipeline_ch_est_axis_tdata  : std_logic_vector(15 downto 0);
  signal m_pipeline_ch_est_axis_tvalid : std_logic;

  signal r_data_axis_tdata             : std_logic_vector(127 downto 0);
  signal r_data_axis_tvalid            : std_logic;
  signal r_data_axis_tlast             : std_logic;

  signal r_data_0_axis_tdata           : std_logic_vector(31 downto 0);
  signal r_data_1_axis_tdata           : std_logic_vector(31 downto 0);
  signal r_data_2_axis_tdata           : std_logic_vector(31 downto 0);
  signal r_data_0_axis_tvalid          : std_logic;
  signal r_data_0_axis_tlast           : std_logic;

  signal w_pipe_axis_tdata             : std_logic_vector(95 downto 0);
  signal w_axis_tdata_0                : std_logic_vector(95 downto 0);
  signal w_pipe_axis_tvalid            : std_logic;
  signal w_pipe_axis_tlast             : std_logic;

  signal w_axis_tdata                  : std_logic_vector(127 downto 0);
  signal w_axis_tvalid                 : std_logic;
  signal w_axis_tlast                  : std_logic;

begin

  -- Actual pilots conjugate
  conj_inst_tx : conj
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,
      
      s_axis_tdata                => axis_pilot_tx_tdata,
      s_axis_tvalid               => s_pilot_tx_axis_tvalid,
      s_axis_tlast                => s_pilot_tx_axis_tlast,

      m_axis_tdata                => m_pilot_tx_conj_axis_tdata,
      m_axis_tvalid               => m_pilot_tx_conj_axis_tvalid,
      m_axis_tlast                => m_pilot_tx_conj_axis_tlast,

      i_negative_freq             => '0'
    );

  axis_pilot_tx_tdata             <= X"000000000000000000000000" & s_pilot_tx_axis_tdata;

  -- It takes 2 clock cycles to receive TX Pilots from pilot scheduler after requesting
  p_DELAY_RX_PILOTS : process(axis_aclk,axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      axis_pilot_rx_tdata1        <= axis_pilot_rx_tdata;
      axis_pilot_rx_tvalid1       <= s_pilot_rx_axis_tvalid;
      axis_pilot_rx_tlast1        <= s_pilot_rx_axis_tlast;

      axis_pilot_rx_tdata2        <= axis_pilot_rx_tdata1;
      axis_pilot_rx_tvalid2       <= axis_pilot_rx_tvalid1;
      axis_pilot_rx_tlast2        <= axis_pilot_rx_tlast1;

      axis_pilot_rx_tdata3        <= axis_pilot_rx_tdata2;
      axis_pilot_rx_tvalid3       <= axis_pilot_rx_tvalid2;
      axis_pilot_rx_tlast3        <= axis_pilot_rx_tlast2;
    end if;
  end process p_DELAY_RX_PILOTS;

  -- Received pilots conjugate
  conj_inst_rx : conj
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,
      
      s_axis_tdata                => axis_pilot_rx_tdata3,
      s_axis_tvalid               => axis_pilot_rx_tvalid3,
      s_axis_tlast                => axis_pilot_rx_tlast3,

      m_axis_tdata                => m_pilot_rx_conj_axis_tdata,
      m_axis_tvalid               => m_pilot_rx_conj_axis_tvalid,
      m_axis_tlast                => m_pilot_rx_conj_axis_tlast,

      i_negative_freq             => '0'
    );

  axis_pilot_rx_tdata             <= X"000000000000000000000000" & s_pilot_rx_axis_tdata;

  -- Convert actual pilot IQ data to amplitude/phase
  cordic_inst_tx : cordic_rec_to_polar
    port map(
      aclk                        => axis_aclk,

      s_axis_cartesian_tdata      => m_pilot_tx_conj_axis_tdata(31 downto 0),
      s_axis_cartesian_tvalid     => m_pilot_tx_conj_axis_tvalid,
      s_axis_cartesian_tlast      => m_pilot_tx_conj_axis_tlast,

      m_axis_dout_tdata           => m_pilot_tx_cordic_axis_tdata,
      m_axis_dout_tvalid          => m_pilot_tx_cordic_axis_tvalid,
      m_axis_dout_tlast           => m_pilot_tx_cordic_axis_tlast
    );

  -- Convert received pilot IQ data to amplitude/phase
  cordic_inst_rx : cordic_rec_to_polar
    port map(
      aclk                        => axis_aclk,

      s_axis_cartesian_tdata      => m_pilot_rx_conj_axis_tdata(31 downto 0),
      s_axis_cartesian_tvalid     => m_pilot_rx_conj_axis_tvalid,
      s_axis_cartesian_tlast      => '0',

      m_axis_dout_tdata           => m_pilot_rx_cordic_axis_tdata,
      m_axis_dout_tvalid          => m_pilot_rx_cordic_axis_tvalid,
      m_axis_dout_tlast           => open
    );

  o_read_tx_pilots                <= s_pilot_rx_axis_tvalid;

  -- Simulation only
  m_tx_cordic_out_axis_tdata      <= m_pilot_tx_cordic_axis_tdata;
  m_tx_cordic_out_axis_tvalid     <= m_pilot_tx_cordic_axis_tvalid;
  m_rx_cordic_out_axis_tdata      <= m_pilot_rx_cordic_axis_tdata;
  m_rx_cordic_out_axis_tvalid     <= m_pilot_rx_cordic_axis_tvalid;

  -- Channel estimate angle
  p_CH_EST_ANG : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    elsif rising_edge(axis_aclk) then
      if m_pilot_tx_cordic_axis_tvalid = '1' and m_pilot_rx_cordic_axis_tvalid = '1' then
        m_angle_ch_est_axis_tvalid<= '1';
        m_angle_ch_est_axis_tdata <= m_pilot_rx_cordic_axis_tdata(31 downto 16) - 
                                     m_pilot_tx_cordic_axis_tdata(31 downto 16);
      else
        m_angle_ch_est_axis_tvalid<= '0';
        m_angle_ch_est_axis_tdata <= (others => '0');
      end if;
    end if;
  end process p_CH_EST_ANG;

  pipeline_inst : pipeline
    generic map(
      g_DELAY_CYCLES              => 21,
      g_TDATA_WIDTH               => 16
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,

      s_axis_tdata                => m_angle_ch_est_axis_tdata,
      s_axis_tvalid               => m_angle_ch_est_axis_tvalid,
      s_axis_tlast                => '0',

      m_axis_tdata                => m_pipeline_ch_est_axis_tdata,
      m_axis_tvalid               => m_pipeline_ch_est_axis_tvalid,
      m_axis_tlast                => open
    );

  -- Simulation Only
  m_abs_denom_in_axis_tdata       <= m_pilot_tx_cordic_axis_tdata(15 downto 0);
  m_abs_num_in_axis_tdata         <= m_pilot_rx_cordic_axis_tdata(15 downto 0);
  m_ang_denom_in_axis_tdata       <= m_pilot_tx_cordic_axis_tdata(31 downto 16);
  m_ang_num_in_axis_tdata         <= m_pilot_rx_cordic_axis_tdata(31 downto 16);
  m_ang_num_in_axis_tvalid        <= m_pilot_rx_cordic_axis_tvalid;
  m_abs_res_axis_tdata            <= m_amplitude_ch_est_axis_tdata; --(17 downto 2);
  m_abs_res_axis_tvalid           <= m_amplitude_ch_est_axis_tvalid;
  m_ang_res_axis_tdata            <= m_pipeline_ch_est_axis_tdata;
  m_ang_res_axis_tvalid           <= m_angle_ch_est_axis_tvalid;

  -- Channel estimate amplitude
  div_gen_inst : div_gen_0
    port map(
      aclk                        => axis_aclk,
      aresetn                     => axis_aresetn,

      s_axis_divisor_tdata        => m_pilot_tx_cordic_axis_tdata(7 downto 0),
      s_axis_divisor_tvalid       => m_pilot_tx_cordic_axis_tvalid,
      --s_axis_divisor_tlast        => m_pilot_tx_cordic_axis_tlast,

      s_axis_dividend_tdata       => m_pilot_rx_cordic_axis_tdata(15 downto 0),
      s_axis_dividend_tvalid      => m_pilot_rx_cordic_axis_tvalid,
      s_axis_dividend_tlast       => m_pilot_tx_cordic_axis_tlast,

      m_axis_dout_tdata           => m_amplitude_ch_est_axis_tdata,
      m_axis_dout_tvalid          => m_amplitude_ch_est_axis_tvalid,
      m_axis_dout_tlast           => m_amplitude_ch_est_axis_tlast
    );

  m_amplitude_ch_est_axis_tdata2  <= m_amplitude_ch_est_axis_tdata(17 downto 2);
  m_ch_est_axis_tdata             <= m_pipeline_ch_est_axis_tdata &
                                     m_amplitude_ch_est_axis_tdata2; --(15 downto 0);
  m_ch_est_axis_tvalid            <= m_amplitude_ch_est_axis_tvalid;
  m_ch_est_axis_tlast             <= m_amplitude_ch_est_axis_tlast;

-----------------------------------------------------------------
  -- Pipeline data
  p_DATA_IN_PIPE : process(axis_aclk,axis_aresetn)
  begin
    if axis_aresetn = '0' then
      NULL;
    else
      r_data_axis_tdata           <= s_data_axis_tdata;
      r_data_axis_tvalid          <= s_data_axis_tvalid;
      r_data_axis_tlast           <= s_data_axis_tlast;
    end if;
  end process p_DATA_IN_PIPE;

  -- Convert data to polar
  cordic_inst_sample_0 : cordic_rec_to_polar
    port map(
      aclk                        => axis_aclk,

      s_axis_cartesian_tdata      => r_data_axis_tdata(31 downto 0),
      s_axis_cartesian_tvalid     => r_data_axis_tvalid,
      s_axis_cartesian_tlast      => r_data_axis_tlast,

      m_axis_dout_tdata           => r_data_0_axis_tdata,
      m_axis_dout_tvalid          => r_data_0_axis_tvalid,
      m_axis_dout_tlast           => r_data_0_axis_tlast
    );

  cordic_inst_sample_1 : cordic_rec_to_polar
    port map(
      aclk                        => axis_aclk,

      s_axis_cartesian_tdata      => r_data_axis_tdata(63 downto 32),
      s_axis_cartesian_tvalid     => r_data_axis_tvalid,
      s_axis_cartesian_tlast      => r_data_axis_tlast,

      m_axis_dout_tdata           => r_data_1_axis_tdata,
      m_axis_dout_tvalid          => open,
      m_axis_dout_tlast           => open
    );

  cordic_inst_sample_2 : cordic_rec_to_polar
    port map(
      aclk                        => axis_aclk,

      s_axis_cartesian_tdata      => r_data_axis_tdata(95 downto 64),
      s_axis_cartesian_tvalid     => r_data_axis_tvalid,
      s_axis_cartesian_tlast      => r_data_axis_tlast,

      m_axis_dout_tdata           => r_data_2_axis_tdata,
      m_axis_dout_tvalid          => open,
      m_axis_dout_tlast           => open
    );

  w_pipe_axis_tdata               <= r_data_2_axis_tdata &
                                     r_data_1_axis_tdata &
                                     r_data_0_axis_tdata;
  w_pipe_axis_tvalid              <= r_data_0_axis_tvalid;
  w_pipe_axis_tlast               <= r_data_0_axis_tlast;

  -- Pipeline
  pipeline_data_inst_0 : pipeline
    generic map(
      g_DELAY_CYCLES              => 4,
      g_TDATA_WIDTH               => 96
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,

      s_axis_tdata                => w_pipe_axis_tdata,
      s_axis_tvalid               => w_pipe_axis_tvalid,
      s_axis_tlast                => w_pipe_axis_tlast,

      m_axis_tdata                => w_axis_tdata_0,
      m_axis_tvalid               => w_axis_tvalid,
      m_axis_tlast                => w_axis_tlast
    );

  w_axis_tdata                    <= (X"0000" - m_pilot_rx_cordic_axis_tdata(31 downto 16)) & 
                                     m_pilot_rx_cordic_axis_tdata(15 downto 0) & 
                                     w_axis_tdata_0;

  -- Delay Data to alight with delay in calculating channel estimate
  pipeline_data_inst : pipeline
    generic map(
      g_DELAY_CYCLES              => 22,
      g_TDATA_WIDTH               => 128
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,

      s_axis_tdata                => w_axis_tdata,
      s_axis_tvalid               => w_axis_tvalid,
      s_axis_tlast                => w_axis_tlast,

      m_axis_tdata                => m_axis_tdata,
      m_axis_tvalid               => m_axis_tvalid,
      m_axis_tlast                => m_axis_tlast
    );

end architecture RTL;
