-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Oct 17 10:13:12 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top cfo_correction_inst_1_conj_0_0 -prefix
--               cfo_correction_inst_1_conj_0_0_ cfo_correction_inst_0_conj_0_1_sim_netlist.vhdl
-- Design      : cfo_correction_inst_0_conj_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cfo_correction_inst_1_conj_0_0_conj is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    i_negative_freq : in STD_LOGIC
  );
end cfo_correction_inst_1_conj_0_0_conj;

architecture STRUCTURE of cfo_correction_inst_1_conj_0_0_conj is
  signal \m_axis_tdata[117]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[121]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[122]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[126]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[127]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[53]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[57]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[58]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[62]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[63]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[85]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[89]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[90]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[94]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[95]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 127 downto 17 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[113]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[114]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[115]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[117]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[118]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[119]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[120]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[122]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[123]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[124]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[125]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[127]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[49]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[50]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[51]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[53]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[54]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[55]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[56]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[58]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[59]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[60]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[61]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[63]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[81]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[82]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[83]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[85]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[86]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[87]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[88]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[90]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[91]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[92]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[93]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[95]_i_2\ : label is "soft_lutpair14";
begin
\m_axis_tdata[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(112),
      I2 => s_axis_tdata(113),
      O => p_0_in(113)
    );
\m_axis_tdata[114]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB54"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(113),
      I2 => s_axis_tdata(112),
      I3 => s_axis_tdata(114),
      O => p_0_in(114)
    );
\m_axis_tdata[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAB5554"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(114),
      I2 => s_axis_tdata(112),
      I3 => s_axis_tdata(113),
      I4 => s_axis_tdata(115),
      O => p_0_in(115)
    );
\m_axis_tdata[116]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB55555554"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(115),
      I2 => s_axis_tdata(113),
      I3 => s_axis_tdata(112),
      I4 => s_axis_tdata(114),
      I5 => s_axis_tdata(116),
      O => p_0_in(116)
    );
\m_axis_tdata[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[117]_i_2_n_0\,
      I2 => s_axis_tdata(117),
      O => p_0_in(117)
    );
\m_axis_tdata[117]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axis_tdata(115),
      I1 => s_axis_tdata(113),
      I2 => s_axis_tdata(112),
      I3 => s_axis_tdata(114),
      I4 => s_axis_tdata(116),
      O => \m_axis_tdata[117]_i_2_n_0\
    );
\m_axis_tdata[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[121]_i_2_n_0\,
      I2 => s_axis_tdata(118),
      O => p_0_in(118)
    );
\m_axis_tdata[119]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(118),
      I2 => \m_axis_tdata[121]_i_2_n_0\,
      I3 => s_axis_tdata(119),
      O => p_0_in(119)
    );
\m_axis_tdata[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(119),
      I2 => \m_axis_tdata[121]_i_2_n_0\,
      I3 => s_axis_tdata(118),
      I4 => s_axis_tdata(120),
      O => p_0_in(120)
    );
\m_axis_tdata[121]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAA55555455"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(120),
      I2 => s_axis_tdata(118),
      I3 => \m_axis_tdata[121]_i_2_n_0\,
      I4 => s_axis_tdata(119),
      I5 => s_axis_tdata(121),
      O => p_0_in(121)
    );
\m_axis_tdata[121]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_tdata(116),
      I1 => s_axis_tdata(114),
      I2 => s_axis_tdata(112),
      I3 => s_axis_tdata(113),
      I4 => s_axis_tdata(115),
      I5 => s_axis_tdata(117),
      O => \m_axis_tdata[121]_i_2_n_0\
    );
\m_axis_tdata[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[122]_i_2_n_0\,
      I2 => s_axis_tdata(122),
      O => p_0_in(122)
    );
\m_axis_tdata[122]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axis_tdata(120),
      I1 => s_axis_tdata(118),
      I2 => \m_axis_tdata[121]_i_2_n_0\,
      I3 => s_axis_tdata(119),
      I4 => s_axis_tdata(121),
      O => \m_axis_tdata[122]_i_2_n_0\
    );
\m_axis_tdata[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[126]_i_2_n_0\,
      I2 => s_axis_tdata(123),
      O => p_0_in(123)
    );
\m_axis_tdata[124]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(123),
      I2 => \m_axis_tdata[126]_i_2_n_0\,
      I3 => s_axis_tdata(124),
      O => p_0_in(124)
    );
\m_axis_tdata[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(124),
      I2 => \m_axis_tdata[126]_i_2_n_0\,
      I3 => s_axis_tdata(123),
      I4 => s_axis_tdata(125),
      O => p_0_in(125)
    );
\m_axis_tdata[126]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAA55555455"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(125),
      I2 => s_axis_tdata(123),
      I3 => \m_axis_tdata[126]_i_2_n_0\,
      I4 => s_axis_tdata(124),
      I5 => s_axis_tdata(126),
      O => p_0_in(126)
    );
\m_axis_tdata[126]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axis_tdata(121),
      I1 => s_axis_tdata(119),
      I2 => \m_axis_tdata[121]_i_2_n_0\,
      I3 => s_axis_tdata(118),
      I4 => s_axis_tdata(120),
      I5 => s_axis_tdata(122),
      O => \m_axis_tdata[126]_i_2_n_0\
    );
\m_axis_tdata[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(126),
      I2 => \m_axis_tdata[127]_i_2_n_0\,
      I3 => s_axis_tdata(127),
      O => p_0_in(127)
    );
\m_axis_tdata[127]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axis_tdata(124),
      I1 => \m_axis_tdata[126]_i_2_n_0\,
      I2 => s_axis_tdata(123),
      I3 => s_axis_tdata(125),
      O => \m_axis_tdata[127]_i_2_n_0\
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(17),
      O => p_0_in(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB54"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(17),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(18),
      O => p_0_in(18)
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAB5554"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(18),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(19),
      O => p_0_in(19)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB55555554"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(19),
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(18),
      I5 => s_axis_tdata(20),
      O => p_0_in(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[21]_i_2_n_0\,
      I2 => s_axis_tdata(21),
      O => p_0_in(21)
    );
\m_axis_tdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(17),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(20),
      O => \m_axis_tdata[21]_i_2_n_0\
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[25]_i_2_n_0\,
      I2 => s_axis_tdata(22),
      O => p_0_in(22)
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(22),
      I2 => \m_axis_tdata[25]_i_2_n_0\,
      I3 => s_axis_tdata(23),
      O => p_0_in(23)
    );
\m_axis_tdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(23),
      I2 => \m_axis_tdata[25]_i_2_n_0\,
      I3 => s_axis_tdata(22),
      I4 => s_axis_tdata(24),
      O => p_0_in(24)
    );
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAA55555455"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(24),
      I2 => s_axis_tdata(22),
      I3 => \m_axis_tdata[25]_i_2_n_0\,
      I4 => s_axis_tdata(23),
      I5 => s_axis_tdata(25),
      O => p_0_in(25)
    );
\m_axis_tdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(18),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(21),
      O => \m_axis_tdata[25]_i_2_n_0\
    );
\m_axis_tdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[26]_i_2_n_0\,
      I2 => s_axis_tdata(26),
      O => p_0_in(26)
    );
\m_axis_tdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axis_tdata(24),
      I1 => s_axis_tdata(22),
      I2 => \m_axis_tdata[25]_i_2_n_0\,
      I3 => s_axis_tdata(23),
      I4 => s_axis_tdata(25),
      O => \m_axis_tdata[26]_i_2_n_0\
    );
\m_axis_tdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[30]_i_2_n_0\,
      I2 => s_axis_tdata(27),
      O => p_0_in(27)
    );
\m_axis_tdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(27),
      I2 => \m_axis_tdata[30]_i_2_n_0\,
      I3 => s_axis_tdata(28),
      O => p_0_in(28)
    );
\m_axis_tdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(28),
      I2 => \m_axis_tdata[30]_i_2_n_0\,
      I3 => s_axis_tdata(27),
      I4 => s_axis_tdata(29),
      O => p_0_in(29)
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAA55555455"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(29),
      I2 => s_axis_tdata(27),
      I3 => \m_axis_tdata[30]_i_2_n_0\,
      I4 => s_axis_tdata(28),
      I5 => s_axis_tdata(30),
      O => p_0_in(30)
    );
\m_axis_tdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axis_tdata(25),
      I1 => s_axis_tdata(23),
      I2 => \m_axis_tdata[25]_i_2_n_0\,
      I3 => s_axis_tdata(22),
      I4 => s_axis_tdata(24),
      I5 => s_axis_tdata(26),
      O => \m_axis_tdata[30]_i_2_n_0\
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(30),
      I2 => \m_axis_tdata[31]_i_2_n_0\,
      I3 => s_axis_tdata(31),
      O => p_0_in(31)
    );
\m_axis_tdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => \m_axis_tdata[30]_i_2_n_0\,
      I2 => s_axis_tdata(27),
      I3 => s_axis_tdata(29),
      O => \m_axis_tdata[31]_i_2_n_0\
    );
\m_axis_tdata[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(48),
      I2 => s_axis_tdata(49),
      O => p_0_in(49)
    );
\m_axis_tdata[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB54"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(49),
      I2 => s_axis_tdata(48),
      I3 => s_axis_tdata(50),
      O => p_0_in(50)
    );
\m_axis_tdata[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAB5554"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(50),
      I2 => s_axis_tdata(48),
      I3 => s_axis_tdata(49),
      I4 => s_axis_tdata(51),
      O => p_0_in(51)
    );
\m_axis_tdata[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB55555554"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(51),
      I2 => s_axis_tdata(49),
      I3 => s_axis_tdata(48),
      I4 => s_axis_tdata(50),
      I5 => s_axis_tdata(52),
      O => p_0_in(52)
    );
\m_axis_tdata[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[53]_i_2_n_0\,
      I2 => s_axis_tdata(53),
      O => p_0_in(53)
    );
\m_axis_tdata[53]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axis_tdata(51),
      I1 => s_axis_tdata(49),
      I2 => s_axis_tdata(48),
      I3 => s_axis_tdata(50),
      I4 => s_axis_tdata(52),
      O => \m_axis_tdata[53]_i_2_n_0\
    );
\m_axis_tdata[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[57]_i_2_n_0\,
      I2 => s_axis_tdata(54),
      O => p_0_in(54)
    );
\m_axis_tdata[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(54),
      I2 => \m_axis_tdata[57]_i_2_n_0\,
      I3 => s_axis_tdata(55),
      O => p_0_in(55)
    );
\m_axis_tdata[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(55),
      I2 => \m_axis_tdata[57]_i_2_n_0\,
      I3 => s_axis_tdata(54),
      I4 => s_axis_tdata(56),
      O => p_0_in(56)
    );
\m_axis_tdata[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAA55555455"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(56),
      I2 => s_axis_tdata(54),
      I3 => \m_axis_tdata[57]_i_2_n_0\,
      I4 => s_axis_tdata(55),
      I5 => s_axis_tdata(57),
      O => p_0_in(57)
    );
\m_axis_tdata[57]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_tdata(52),
      I1 => s_axis_tdata(50),
      I2 => s_axis_tdata(48),
      I3 => s_axis_tdata(49),
      I4 => s_axis_tdata(51),
      I5 => s_axis_tdata(53),
      O => \m_axis_tdata[57]_i_2_n_0\
    );
\m_axis_tdata[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[58]_i_2_n_0\,
      I2 => s_axis_tdata(58),
      O => p_0_in(58)
    );
\m_axis_tdata[58]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axis_tdata(56),
      I1 => s_axis_tdata(54),
      I2 => \m_axis_tdata[57]_i_2_n_0\,
      I3 => s_axis_tdata(55),
      I4 => s_axis_tdata(57),
      O => \m_axis_tdata[58]_i_2_n_0\
    );
\m_axis_tdata[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[62]_i_2_n_0\,
      I2 => s_axis_tdata(59),
      O => p_0_in(59)
    );
\m_axis_tdata[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(59),
      I2 => \m_axis_tdata[62]_i_2_n_0\,
      I3 => s_axis_tdata(60),
      O => p_0_in(60)
    );
\m_axis_tdata[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(60),
      I2 => \m_axis_tdata[62]_i_2_n_0\,
      I3 => s_axis_tdata(59),
      I4 => s_axis_tdata(61),
      O => p_0_in(61)
    );
\m_axis_tdata[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAA55555455"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(61),
      I2 => s_axis_tdata(59),
      I3 => \m_axis_tdata[62]_i_2_n_0\,
      I4 => s_axis_tdata(60),
      I5 => s_axis_tdata(62),
      O => p_0_in(62)
    );
\m_axis_tdata[62]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axis_tdata(57),
      I1 => s_axis_tdata(55),
      I2 => \m_axis_tdata[57]_i_2_n_0\,
      I3 => s_axis_tdata(54),
      I4 => s_axis_tdata(56),
      I5 => s_axis_tdata(58),
      O => \m_axis_tdata[62]_i_2_n_0\
    );
\m_axis_tdata[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(62),
      I2 => \m_axis_tdata[63]_i_2_n_0\,
      I3 => s_axis_tdata(63),
      O => p_0_in(63)
    );
\m_axis_tdata[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axis_tdata(60),
      I1 => \m_axis_tdata[62]_i_2_n_0\,
      I2 => s_axis_tdata(59),
      I3 => s_axis_tdata(61),
      O => \m_axis_tdata[63]_i_2_n_0\
    );
\m_axis_tdata[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(80),
      I2 => s_axis_tdata(81),
      O => p_0_in(81)
    );
\m_axis_tdata[82]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB54"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(81),
      I2 => s_axis_tdata(80),
      I3 => s_axis_tdata(82),
      O => p_0_in(82)
    );
\m_axis_tdata[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAB5554"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(82),
      I2 => s_axis_tdata(80),
      I3 => s_axis_tdata(81),
      I4 => s_axis_tdata(83),
      O => p_0_in(83)
    );
\m_axis_tdata[84]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB55555554"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(83),
      I2 => s_axis_tdata(81),
      I3 => s_axis_tdata(80),
      I4 => s_axis_tdata(82),
      I5 => s_axis_tdata(84),
      O => p_0_in(84)
    );
\m_axis_tdata[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[85]_i_2_n_0\,
      I2 => s_axis_tdata(85),
      O => p_0_in(85)
    );
\m_axis_tdata[85]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axis_tdata(83),
      I1 => s_axis_tdata(81),
      I2 => s_axis_tdata(80),
      I3 => s_axis_tdata(82),
      I4 => s_axis_tdata(84),
      O => \m_axis_tdata[85]_i_2_n_0\
    );
\m_axis_tdata[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[89]_i_2_n_0\,
      I2 => s_axis_tdata(86),
      O => p_0_in(86)
    );
\m_axis_tdata[87]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(86),
      I2 => \m_axis_tdata[89]_i_2_n_0\,
      I3 => s_axis_tdata(87),
      O => p_0_in(87)
    );
\m_axis_tdata[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(87),
      I2 => \m_axis_tdata[89]_i_2_n_0\,
      I3 => s_axis_tdata(86),
      I4 => s_axis_tdata(88),
      O => p_0_in(88)
    );
\m_axis_tdata[89]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAA55555455"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(88),
      I2 => s_axis_tdata(86),
      I3 => \m_axis_tdata[89]_i_2_n_0\,
      I4 => s_axis_tdata(87),
      I5 => s_axis_tdata(89),
      O => p_0_in(89)
    );
\m_axis_tdata[89]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_tdata(84),
      I1 => s_axis_tdata(82),
      I2 => s_axis_tdata(80),
      I3 => s_axis_tdata(81),
      I4 => s_axis_tdata(83),
      I5 => s_axis_tdata(85),
      O => \m_axis_tdata[89]_i_2_n_0\
    );
\m_axis_tdata[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[90]_i_2_n_0\,
      I2 => s_axis_tdata(90),
      O => p_0_in(90)
    );
\m_axis_tdata[90]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axis_tdata(88),
      I1 => s_axis_tdata(86),
      I2 => \m_axis_tdata[89]_i_2_n_0\,
      I3 => s_axis_tdata(87),
      I4 => s_axis_tdata(89),
      O => \m_axis_tdata[90]_i_2_n_0\
    );
\m_axis_tdata[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_negative_freq,
      I1 => \m_axis_tdata[94]_i_2_n_0\,
      I2 => s_axis_tdata(91),
      O => p_0_in(91)
    );
\m_axis_tdata[92]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(91),
      I2 => \m_axis_tdata[94]_i_2_n_0\,
      I3 => s_axis_tdata(92),
      O => p_0_in(92)
    );
\m_axis_tdata[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(92),
      I2 => \m_axis_tdata[94]_i_2_n_0\,
      I3 => s_axis_tdata(91),
      I4 => s_axis_tdata(93),
      O => p_0_in(93)
    );
\m_axis_tdata[94]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAA55555455"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(93),
      I2 => s_axis_tdata(91),
      I3 => \m_axis_tdata[94]_i_2_n_0\,
      I4 => s_axis_tdata(92),
      I5 => s_axis_tdata(94),
      O => p_0_in(94)
    );
\m_axis_tdata[94]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axis_tdata(89),
      I1 => s_axis_tdata(87),
      I2 => \m_axis_tdata[89]_i_2_n_0\,
      I3 => s_axis_tdata(86),
      I4 => s_axis_tdata(88),
      I5 => s_axis_tdata(90),
      O => \m_axis_tdata[94]_i_2_n_0\
    );
\m_axis_tdata[95]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA45"
    )
        port map (
      I0 => i_negative_freq,
      I1 => s_axis_tdata(94),
      I2 => \m_axis_tdata[95]_i_2_n_0\,
      I3 => s_axis_tdata(95),
      O => p_0_in(95)
    );
\m_axis_tdata[95]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axis_tdata(92),
      I1 => \m_axis_tdata[94]_i_2_n_0\,
      I2 => s_axis_tdata(91),
      I3 => s_axis_tdata(93),
      O => \m_axis_tdata[95]_i_2_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(100),
      Q => m_axis_tdata(100),
      R => '0'
    );
\m_axis_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(101),
      Q => m_axis_tdata(101),
      R => '0'
    );
\m_axis_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(102),
      Q => m_axis_tdata(102),
      R => '0'
    );
\m_axis_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(103),
      Q => m_axis_tdata(103),
      R => '0'
    );
\m_axis_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(104),
      Q => m_axis_tdata(104),
      R => '0'
    );
\m_axis_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(105),
      Q => m_axis_tdata(105),
      R => '0'
    );
\m_axis_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(106),
      Q => m_axis_tdata(106),
      R => '0'
    );
\m_axis_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(107),
      Q => m_axis_tdata(107),
      R => '0'
    );
\m_axis_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(108),
      Q => m_axis_tdata(108),
      R => '0'
    );
\m_axis_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(109),
      Q => m_axis_tdata(109),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(110),
      Q => m_axis_tdata(110),
      R => '0'
    );
\m_axis_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(111),
      Q => m_axis_tdata(111),
      R => '0'
    );
\m_axis_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(112),
      Q => m_axis_tdata(112),
      R => '0'
    );
\m_axis_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(113),
      Q => m_axis_tdata(113),
      R => '0'
    );
\m_axis_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(114),
      Q => m_axis_tdata(114),
      R => '0'
    );
\m_axis_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(115),
      Q => m_axis_tdata(115),
      R => '0'
    );
\m_axis_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(116),
      Q => m_axis_tdata(116),
      R => '0'
    );
\m_axis_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(117),
      Q => m_axis_tdata(117),
      R => '0'
    );
\m_axis_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(118),
      Q => m_axis_tdata(118),
      R => '0'
    );
\m_axis_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(119),
      Q => m_axis_tdata(119),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(120),
      Q => m_axis_tdata(120),
      R => '0'
    );
\m_axis_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(121),
      Q => m_axis_tdata(121),
      R => '0'
    );
\m_axis_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(122),
      Q => m_axis_tdata(122),
      R => '0'
    );
\m_axis_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(123),
      Q => m_axis_tdata(123),
      R => '0'
    );
\m_axis_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(124),
      Q => m_axis_tdata(124),
      R => '0'
    );
\m_axis_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(125),
      Q => m_axis_tdata(125),
      R => '0'
    );
\m_axis_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(126),
      Q => m_axis_tdata(126),
      R => '0'
    );
\m_axis_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(127),
      Q => m_axis_tdata(127),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(24),
      Q => m_axis_tdata(24),
      R => '0'
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(25),
      Q => m_axis_tdata(25),
      R => '0'
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(26),
      Q => m_axis_tdata(26),
      R => '0'
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(27),
      Q => m_axis_tdata(27),
      R => '0'
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(28),
      Q => m_axis_tdata(28),
      R => '0'
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(29),
      Q => m_axis_tdata(29),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(30),
      Q => m_axis_tdata(30),
      R => '0'
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(31),
      Q => m_axis_tdata(31),
      R => '0'
    );
\m_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(32),
      Q => m_axis_tdata(32),
      R => '0'
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(33),
      Q => m_axis_tdata(33),
      R => '0'
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(34),
      Q => m_axis_tdata(34),
      R => '0'
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(35),
      Q => m_axis_tdata(35),
      R => '0'
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(36),
      Q => m_axis_tdata(36),
      R => '0'
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(37),
      Q => m_axis_tdata(37),
      R => '0'
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(38),
      Q => m_axis_tdata(38),
      R => '0'
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(39),
      Q => m_axis_tdata(39),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(40),
      Q => m_axis_tdata(40),
      R => '0'
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(41),
      Q => m_axis_tdata(41),
      R => '0'
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(42),
      Q => m_axis_tdata(42),
      R => '0'
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(43),
      Q => m_axis_tdata(43),
      R => '0'
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(44),
      Q => m_axis_tdata(44),
      R => '0'
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(45),
      Q => m_axis_tdata(45),
      R => '0'
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(46),
      Q => m_axis_tdata(46),
      R => '0'
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(47),
      Q => m_axis_tdata(47),
      R => '0'
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(48),
      Q => m_axis_tdata(48),
      R => '0'
    );
\m_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(49),
      Q => m_axis_tdata(49),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(50),
      Q => m_axis_tdata(50),
      R => '0'
    );
\m_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(51),
      Q => m_axis_tdata(51),
      R => '0'
    );
\m_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(52),
      Q => m_axis_tdata(52),
      R => '0'
    );
\m_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(53),
      Q => m_axis_tdata(53),
      R => '0'
    );
\m_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(54),
      Q => m_axis_tdata(54),
      R => '0'
    );
\m_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(55),
      Q => m_axis_tdata(55),
      R => '0'
    );
\m_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(56),
      Q => m_axis_tdata(56),
      R => '0'
    );
\m_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(57),
      Q => m_axis_tdata(57),
      R => '0'
    );
\m_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(58),
      Q => m_axis_tdata(58),
      R => '0'
    );
\m_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(59),
      Q => m_axis_tdata(59),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(60),
      Q => m_axis_tdata(60),
      R => '0'
    );
\m_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(61),
      Q => m_axis_tdata(61),
      R => '0'
    );
\m_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(62),
      Q => m_axis_tdata(62),
      R => '0'
    );
\m_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(63),
      Q => m_axis_tdata(63),
      R => '0'
    );
\m_axis_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(64),
      Q => m_axis_tdata(64),
      R => '0'
    );
\m_axis_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(65),
      Q => m_axis_tdata(65),
      R => '0'
    );
\m_axis_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(66),
      Q => m_axis_tdata(66),
      R => '0'
    );
\m_axis_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(67),
      Q => m_axis_tdata(67),
      R => '0'
    );
\m_axis_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(68),
      Q => m_axis_tdata(68),
      R => '0'
    );
\m_axis_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(69),
      Q => m_axis_tdata(69),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(70),
      Q => m_axis_tdata(70),
      R => '0'
    );
\m_axis_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(71),
      Q => m_axis_tdata(71),
      R => '0'
    );
\m_axis_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(72),
      Q => m_axis_tdata(72),
      R => '0'
    );
\m_axis_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(73),
      Q => m_axis_tdata(73),
      R => '0'
    );
\m_axis_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(74),
      Q => m_axis_tdata(74),
      R => '0'
    );
\m_axis_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(75),
      Q => m_axis_tdata(75),
      R => '0'
    );
\m_axis_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(76),
      Q => m_axis_tdata(76),
      R => '0'
    );
\m_axis_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(77),
      Q => m_axis_tdata(77),
      R => '0'
    );
\m_axis_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(78),
      Q => m_axis_tdata(78),
      R => '0'
    );
\m_axis_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(79),
      Q => m_axis_tdata(79),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(80),
      Q => m_axis_tdata(80),
      R => '0'
    );
\m_axis_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(81),
      Q => m_axis_tdata(81),
      R => '0'
    );
\m_axis_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(82),
      Q => m_axis_tdata(82),
      R => '0'
    );
\m_axis_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(83),
      Q => m_axis_tdata(83),
      R => '0'
    );
\m_axis_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(84),
      Q => m_axis_tdata(84),
      R => '0'
    );
\m_axis_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(85),
      Q => m_axis_tdata(85),
      R => '0'
    );
\m_axis_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(86),
      Q => m_axis_tdata(86),
      R => '0'
    );
\m_axis_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(87),
      Q => m_axis_tdata(87),
      R => '0'
    );
\m_axis_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(88),
      Q => m_axis_tdata(88),
      R => '0'
    );
\m_axis_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(89),
      Q => m_axis_tdata(89),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(90),
      Q => m_axis_tdata(90),
      R => '0'
    );
\m_axis_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(91),
      Q => m_axis_tdata(91),
      R => '0'
    );
\m_axis_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(92),
      Q => m_axis_tdata(92),
      R => '0'
    );
\m_axis_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(93),
      Q => m_axis_tdata(93),
      R => '0'
    );
\m_axis_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(94),
      Q => m_axis_tdata(94),
      R => '0'
    );
\m_axis_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(95),
      Q => m_axis_tdata(95),
      R => '0'
    );
\m_axis_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(96),
      Q => m_axis_tdata(96),
      R => '0'
    );
\m_axis_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(97),
      Q => m_axis_tdata(97),
      R => '0'
    );
\m_axis_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(98),
      Q => m_axis_tdata(98),
      R => '0'
    );
\m_axis_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(99),
      Q => m_axis_tdata(99),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
\m_axis_tid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(0),
      Q => m_axis_tid(0),
      R => '0'
    );
\m_axis_tid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(1),
      Q => m_axis_tid(1),
      R => '0'
    );
\m_axis_tid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(2),
      Q => m_axis_tid(2),
      R => '0'
    );
\m_axis_tid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(3),
      Q => m_axis_tid(3),
      R => '0'
    );
\m_axis_tid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(4),
      Q => m_axis_tid(4),
      R => '0'
    );
\m_axis_tid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(5),
      Q => m_axis_tid(5),
      R => '0'
    );
\m_axis_tid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(6),
      Q => m_axis_tid(6),
      R => '0'
    );
\m_axis_tid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(7),
      Q => m_axis_tid(7),
      R => '0'
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tlast,
      Q => m_axis_tlast,
      R => '0'
    );
\m_axis_tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(0),
      Q => m_axis_tuser(0),
      R => '0'
    );
\m_axis_tuser_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(1),
      Q => m_axis_tuser(1),
      R => '0'
    );
\m_axis_tuser_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(2),
      Q => m_axis_tuser(2),
      R => '0'
    );
\m_axis_tuser_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(3),
      Q => m_axis_tuser(3),
      R => '0'
    );
\m_axis_tuser_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(4),
      Q => m_axis_tuser(4),
      R => '0'
    );
\m_axis_tuser_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(5),
      Q => m_axis_tuser(5),
      R => '0'
    );
\m_axis_tuser_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(6),
      Q => m_axis_tuser(6),
      R => '0'
    );
\m_axis_tuser_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(7),
      Q => m_axis_tuser(7),
      R => '0'
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tvalid,
      Q => m_axis_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cfo_correction_inst_1_conj_0_0 is
  port (
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    i_negative_freq : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cfo_correction_inst_1_conj_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cfo_correction_inst_1_conj_0_0 : entity is "cfo_correction_inst_0_conj_0_1,conj,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cfo_correction_inst_1_conj_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of cfo_correction_inst_1_conj_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cfo_correction_inst_1_conj_0_0 : entity is "conj,Vivado 2022.1";
end cfo_correction_inst_1_conj_0_0;

architecture STRUCTURE of cfo_correction_inst_1_conj_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
inst: entity work.cfo_correction_inst_1_conj_0_0_conj
     port map (
      axis_aclk => axis_aclk,
      i_negative_freq => i_negative_freq,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tid(7 downto 0) => m_axis_tid(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tuser(7 downto 0) => m_axis_tuser(7 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(127 downto 0) => s_axis_tdata(127 downto 0),
      s_axis_tid(7 downto 0) => s_axis_tid(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser(7 downto 0) => s_axis_tuser(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
