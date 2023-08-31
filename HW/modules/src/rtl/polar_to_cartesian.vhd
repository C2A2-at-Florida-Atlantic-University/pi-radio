-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Convert Polar to cartesian. Remove pilots
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity polar_to_cartesian is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(127 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tlast                  : in  std_logic;

    -- Simulation only
    m_axis_dds_tdata              : out std_logic_vector(95 downto 0);
    m_axis_dds_tvalid             : out std_logic;

    m_axis_tdata                  : out std_logic_vector(95 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tlast                  : out std_logic
  );
end entity polar_to_cartesian;

architecture RTL of polar_to_cartesian is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 250000000";

  signal dds_tvalid               : std_logic;
  signal dds_0_tdata              : std_logic_vector(31 downto 0);
  signal dds_1_tdata              : std_logic_vector(31 downto 0);
  signal dds_2_tdata              : std_logic_vector(31 downto 0);
  signal abs_tvalid               : std_logic;
  signal abs_tvalid_pipe1         : std_logic;
  signal abs_tvalid_pipe2         : std_logic;
  signal abs_tlast                : std_logic;
  signal abs_tlast1               : std_logic;
  signal abs_tlast2               : std_logic;
  signal abs_0                    : std_logic_vector(15 downto 0);
  signal abs_1                    : std_logic_vector(15 downto 0);
  signal abs_2                    : std_logic_vector(15 downto 0);
  signal equalized_0_i            : std_logic_vector(31 downto 0);
  signal equalized_0_q            : std_logic_vector(31 downto 0);
  signal equalized_1_i            : std_logic_vector(31 downto 0);
  signal equalized_1_q            : std_logic_vector(31 downto 0);
  signal equalized_2_i            : std_logic_vector(31 downto 0);
  signal equalized_2_q            : std_logic_vector(31 downto 0);
 
  component dds_compiler_1 is
    port(
      aclk                        : in  std_logic;
      s_axis_phase_tvalid         : in  std_logic;
      s_axis_phase_tdata          : in  std_logic_vector(15 downto 0);
      m_axis_data_tvalid          : out std_logic;
      m_axis_data_tdata           : out std_logic_vector(31 downto 0)
    );
  end component dds_compiler_1;

  component cmpy_0 is
    port(
      aclk                        : in  std_logic;
      aresetn                     : in  std_logic;

      s_axis_a_tvalid             : in  std_logic;
      s_axis_a_tdata              : in  std_logic_vector(31 downto 0);

      s_axis_b_tvalid             : in  std_logic;
      s_axis_b_tdata              : in  std_logic_vector(31 downto 0);

      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tdata           : out std_logic_vector(79 downto 0)
    );
  end component cmpy_0;

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

  component mult_gen_0 is
    port(
      CLK                         : in  std_logic;
      A                           : in  std_logic_vector(15 downto 0);
      B                           : in  std_logic_vector(15 downto 0);
      P                           : out std_logic_vector(31 downto 0)
    );
  end component mult_gen_0;

begin

  ----------------------------------------------------------------------
  -- Sample 0
  dds_0 : dds_compiler_1
    port map(
      aclk                        => axis_aclk,
      s_axis_phase_tvalid         => s_axis_tvalid,
      s_axis_phase_tdata          => s_axis_tdata(31 downto 16),
      m_axis_data_tvalid          => dds_tvalid,
      m_axis_data_tdata           => dds_0_tdata
    );

  pipe_0 : pipeline
    generic map(
      g_DELAY_CYCLES              => 7,
      g_TDATA_WIDTH               => 16
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,
      s_axis_tdata                => s_axis_tdata(15 downto 0),
      s_axis_tvalid               => s_axis_tvalid,
      s_axis_tlast                => '0',
      m_axis_tdata                => abs_0,
      m_axis_tvalid               => abs_tvalid,
      m_axis_tlast                => open
    );

  mult_0_i : mult_gen_0
    port map(
      CLK                         => axis_aclk,
      A                           => abs_0,
      B                           => dds_0_tdata(15 downto 0),
      P                           => equalized_0_i
    );

  mult_0_q : mult_gen_0
    port map(
      CLK                         => axis_aclk,
      A                           => abs_0,
      B                           => dds_0_tdata(31 downto 16),
      P                           => equalized_0_q
    );

  ----------------------------------------------------------------------
  -- Sample 1
  dds_1 : dds_compiler_1
    port map(
      aclk                        => axis_aclk,
      s_axis_phase_tvalid         => s_axis_tvalid,
      s_axis_phase_tdata          => s_axis_tdata(63 downto 48),
      m_axis_data_tvalid          => open,
      m_axis_data_tdata           => dds_1_tdata
    );

  pipe_1 : pipeline
    generic map(
      g_DELAY_CYCLES              => 7,
      g_TDATA_WIDTH               => 16
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,
      s_axis_tdata                => s_axis_tdata(47 downto 32),
      s_axis_tvalid               => s_axis_tvalid,
      s_axis_tlast                => '0',
      m_axis_tdata                => abs_1,
      m_axis_tvalid               => open,
      m_axis_tlast                => open
    );

  mult_1_i : mult_gen_0
    port map(
      CLK                         => axis_aclk,
      A                           => abs_1,
      B                           => dds_1_tdata(15 downto 0),
      P                           => equalized_1_i
    );

  mult_1_q : mult_gen_0
    port map(
      CLK                         => axis_aclk,
      A                           => abs_1,
      B                           => dds_1_tdata(31 downto 16),
      P                           => equalized_1_q
    );

  ----------------------------------------------------------------------
  -- Sample 1
  dds_2 : dds_compiler_1
    port map(
      aclk                        => axis_aclk,
      s_axis_phase_tvalid         => s_axis_tvalid,
      s_axis_phase_tdata          => s_axis_tdata(95 downto 80),
      m_axis_data_tvalid          => open,
      m_axis_data_tdata           => dds_2_tdata
    );

  pipe_2 : pipeline
    generic map(
      g_DELAY_CYCLES              => 7,
      g_TDATA_WIDTH               => 16
    )
    port map(
      axis_aclk                   => axis_aclk,
      axis_aresetn                => axis_aresetn,
      s_axis_tdata                => s_axis_tdata(79 downto 64),
      s_axis_tvalid               => s_axis_tvalid,
      s_axis_tlast                => s_axis_tlast,
      m_axis_tdata                => abs_2,
      m_axis_tvalid               => open,
      m_axis_tlast                => abs_tlast
    );

  mult_2_i : mult_gen_0
    port map(
      CLK                         => axis_aclk,
      A                           => abs_2,
      B                           => dds_2_tdata(15 downto 0),
      P                           => equalized_2_i
    );

  mult_2_q : mult_gen_0
    port map(
      CLK                         => axis_aclk,
      A                           => abs_2,
      B                           => dds_2_tdata(31 downto 16),
      P                           => equalized_2_q
    );

  -- Delay tvalid 1 clock cycle for mults
  P_TVALID_DELAY : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      abs_tvalid_pipe1            <= abs_tvalid;
      abs_tvalid_pipe2            <= abs_tvalid_pipe1;

      abs_tlast1                  <= abs_tlast;
      abs_tlast2                  <= abs_tlast1;
    end if;
  end process P_TVALID_DELAY;

  m_axis_tdata                    <= equalized_2_q(31 downto 16) & equalized_2_i(31 downto 16) & 
                                     equalized_1_q(31 downto 16) & equalized_1_i(31 downto 16) &
                                     equalized_0_q(31 downto 16) & equalized_0_i(31 downto 16);
--  m_axis_tdata                    <= equalized_2_q(15 downto 0) & equalized_2_i(15 downto 0) & 
--                                     equalized_1_q(15 downto 0) & equalized_1_i(15 downto 0) &
--                                     equalized_0_q(15 downto 0) & equalized_0_i(15 downto 0);
  m_axis_tvalid                   <= abs_tvalid_pipe2;
  m_axis_tlast                    <= abs_tlast2;

  m_axis_dds_tdata                <= dds_2_tdata & dds_1_tdata & dds_0_tdata;
  m_axis_dds_tvalid               <= dds_tvalid;

end architecture RTL;
