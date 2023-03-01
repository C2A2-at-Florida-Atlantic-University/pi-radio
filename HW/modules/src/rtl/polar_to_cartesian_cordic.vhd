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

entity polar_to_cartesian_cordic is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(127 downto 0);
    s_axis_tvalid                 : in  std_logic;
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(95 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tlast                  : out std_logic
  );
end entity polar_to_cartesian_cordic;

architecture RTL of polar_to_cartesian_cordic is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498";

  component cordic_polar_to_rec is
    port(
      aclk                        : in  std_logic;
      s_axis_phase_tvalid         : in  std_logic;
      s_axis_phase_tlast          : in  std_logic;
      s_axis_phase_tdata          : in  std_logic_vector(15 downto 0);
      s_axis_cartesian_tvalid     : in  std_logic;
      s_axis_cartesian_tlast      : in  std_logic;
      s_axis_cartesian_tdata      : in  std_logic_vector(31 downto 0);
      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tlast           : out std_logic;
      m_axis_dout_tdata           : out std_logic_vector(31 downto 0)
    );
  end component cordic_polar_to_rec;

  signal cordic_mag_0             : std_logic_vector(31 downto 0);
  signal cordic_mag_1             : std_logic_vector(31 downto 0);
  signal cordic_mag_2             : std_logic_vector(31 downto 0);

  signal cordic_iq_0              : std_logic_vector(31 downto 0);
  signal cordic_iq_1              : std_logic_vector(31 downto 0);
  signal cordic_iq_2              : std_logic_vector(31 downto 0);

  signal w_axis_tdata             : std_logic_vector(95 downto 0);
  signal w_axis_tdata_1           : std_logic_vector(95 downto 0);
  signal w_axis_tdata_2           : std_logic_vector(95 downto 0);

begin

  ----------------------------------------------------------------------
  -- Sample 0
  cordic_mag_0                    <= X"0000" & s_axis_tdata(15 downto 0);

  cordic_polar_to_rec_inst_0 : cordic_polar_to_rec
    port map(
      aclk                        => axis_aclk,
      s_axis_phase_tvalid         => s_axis_tvalid,
      s_axis_phase_tlast          => s_axis_tlast,
      s_axis_phase_tdata          => s_axis_tdata(31 downto 16),
      s_axis_cartesian_tvalid     => s_axis_tvalid,
      s_axis_cartesian_tlast      => s_axis_tlast,
      s_axis_cartesian_tdata      => cordic_mag_0,
      m_axis_dout_tvalid          => m_axis_tvalid,
      m_axis_dout_tlast           => m_axis_tlast,
      m_axis_dout_tdata           => cordic_iq_0
    );

  ----------------------------------------------------------------------
  -- Sample 1
  cordic_mag_1                    <= X"0000" & s_axis_tdata(47 downto 32);

  cordic_polar_to_rec_inst_1 : cordic_polar_to_rec
    port map(
      aclk                        => axis_aclk,
      s_axis_phase_tvalid         => s_axis_tvalid,
      s_axis_phase_tlast          => s_axis_tlast,
      s_axis_phase_tdata          => s_axis_tdata(63 downto 48),
      s_axis_cartesian_tvalid     => s_axis_tvalid,
      s_axis_cartesian_tlast      => s_axis_tlast,
      s_axis_cartesian_tdata      => cordic_mag_1,
      m_axis_dout_tvalid          => open,
      m_axis_dout_tlast           => open,
      m_axis_dout_tdata           => cordic_iq_1
    );

  ----------------------------------------------------------------------
  -- Sample 2
  cordic_mag_2                    <= X"0000" & s_axis_tdata(79 downto 64);

  cordic_polar_to_rec_inst_2 : cordic_polar_to_rec
    port map(
      aclk                        => axis_aclk,
      s_axis_phase_tvalid         => s_axis_tvalid,
      s_axis_phase_tlast          => s_axis_tlast,
      s_axis_phase_tdata          => s_axis_tdata(95 downto 80),
      s_axis_cartesian_tvalid     => s_axis_tvalid,
      s_axis_cartesian_tlast      => s_axis_tlast,
      s_axis_cartesian_tdata      => cordic_mag_2,
      m_axis_dout_tvalid          => open,
      m_axis_dout_tlast           => open,
      m_axis_dout_tdata           => cordic_iq_2
    );

  ----------------------------------------------------------------------
  -- Combine samples and drop pilot sample
  m_axis_tdata                    <= cordic_iq_2 & cordic_iq_1 & cordic_iq_0;

  p_DELAY_TDATA : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      w_axis_tdata_1              <= w_axis_tdata;
      w_axis_tdata_2              <= w_axis_tdata_1;
--      m_axis_tdata                <= w_axis_tdata_2;
    end if;
  end process p_DELAY_TDATA;

end architecture RTL;
