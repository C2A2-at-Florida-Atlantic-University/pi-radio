-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Oct 17 10:13:13 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_inst_0_mux_0_0_sim_netlist.vhdl
-- Design      : cfo_correction_inst_0_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    s_axis1_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis0_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    i_select : in STD_LOGIC;
    s_axis1_tvalid : in STD_LOGIC;
    s_axis0_tvalid : in STD_LOGIC;
    s_axis1_tlast : in STD_LOGIC;
    s_axis0_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux is
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[100]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[101]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[102]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[103]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[104]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[105]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[106]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[107]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[108]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[109]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[110]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[111]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[112]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[113]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[114]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[115]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[116]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[117]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[118]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[119]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[120]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[121]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[122]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[123]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[124]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[125]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[126]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axis_tdata[127]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[32]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[34]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[35]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[36]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[37]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[38]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[39]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[40]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[41]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[42]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[43]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[44]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[45]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[46]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[47]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[48]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[49]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[50]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[51]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[52]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[53]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[54]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[55]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[56]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[57]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[58]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[59]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[60]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[61]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[62]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[63]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[64]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[65]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[66]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[67]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[68]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[69]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[70]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[71]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[72]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[73]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[74]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[75]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[76]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[77]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[78]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tdata[79]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[80]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tdata[81]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tdata[82]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tdata[83]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tdata[84]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tdata[85]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tdata[86]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdata[87]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdata[88]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[89]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[90]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[91]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[92]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[93]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[94]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[95]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[96]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[97]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[98]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[99]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m_axis_tlast_i_1 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_1 : label is "soft_lutpair64";
begin
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(0),
      I1 => s_axis0_tdata(0),
      I2 => i_select,
      O => p_0_in(0)
    );
\m_axis_tdata[100]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(100),
      I1 => s_axis0_tdata(100),
      I2 => i_select,
      O => p_0_in(100)
    );
\m_axis_tdata[101]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(101),
      I1 => s_axis0_tdata(101),
      I2 => i_select,
      O => p_0_in(101)
    );
\m_axis_tdata[102]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(102),
      I1 => s_axis0_tdata(102),
      I2 => i_select,
      O => p_0_in(102)
    );
\m_axis_tdata[103]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(103),
      I1 => s_axis0_tdata(103),
      I2 => i_select,
      O => p_0_in(103)
    );
\m_axis_tdata[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(104),
      I1 => s_axis0_tdata(104),
      I2 => i_select,
      O => p_0_in(104)
    );
\m_axis_tdata[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(105),
      I1 => s_axis0_tdata(105),
      I2 => i_select,
      O => p_0_in(105)
    );
\m_axis_tdata[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(106),
      I1 => s_axis0_tdata(106),
      I2 => i_select,
      O => p_0_in(106)
    );
\m_axis_tdata[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(107),
      I1 => s_axis0_tdata(107),
      I2 => i_select,
      O => p_0_in(107)
    );
\m_axis_tdata[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(108),
      I1 => s_axis0_tdata(108),
      I2 => i_select,
      O => p_0_in(108)
    );
\m_axis_tdata[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(109),
      I1 => s_axis0_tdata(109),
      I2 => i_select,
      O => p_0_in(109)
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(10),
      I1 => s_axis0_tdata(10),
      I2 => i_select,
      O => p_0_in(10)
    );
\m_axis_tdata[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(110),
      I1 => s_axis0_tdata(110),
      I2 => i_select,
      O => p_0_in(110)
    );
\m_axis_tdata[111]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(111),
      I1 => s_axis0_tdata(111),
      I2 => i_select,
      O => p_0_in(111)
    );
\m_axis_tdata[112]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(112),
      I1 => s_axis0_tdata(112),
      I2 => i_select,
      O => p_0_in(112)
    );
\m_axis_tdata[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(113),
      I1 => s_axis0_tdata(113),
      I2 => i_select,
      O => p_0_in(113)
    );
\m_axis_tdata[114]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(114),
      I1 => s_axis0_tdata(114),
      I2 => i_select,
      O => p_0_in(114)
    );
\m_axis_tdata[115]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(115),
      I1 => s_axis0_tdata(115),
      I2 => i_select,
      O => p_0_in(115)
    );
\m_axis_tdata[116]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(116),
      I1 => s_axis0_tdata(116),
      I2 => i_select,
      O => p_0_in(116)
    );
\m_axis_tdata[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(117),
      I1 => s_axis0_tdata(117),
      I2 => i_select,
      O => p_0_in(117)
    );
\m_axis_tdata[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(118),
      I1 => s_axis0_tdata(118),
      I2 => i_select,
      O => p_0_in(118)
    );
\m_axis_tdata[119]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(119),
      I1 => s_axis0_tdata(119),
      I2 => i_select,
      O => p_0_in(119)
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(11),
      I1 => s_axis0_tdata(11),
      I2 => i_select,
      O => p_0_in(11)
    );
\m_axis_tdata[120]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(120),
      I1 => s_axis0_tdata(120),
      I2 => i_select,
      O => p_0_in(120)
    );
\m_axis_tdata[121]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(121),
      I1 => s_axis0_tdata(121),
      I2 => i_select,
      O => p_0_in(121)
    );
\m_axis_tdata[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(122),
      I1 => s_axis0_tdata(122),
      I2 => i_select,
      O => p_0_in(122)
    );
\m_axis_tdata[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(123),
      I1 => s_axis0_tdata(123),
      I2 => i_select,
      O => p_0_in(123)
    );
\m_axis_tdata[124]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(124),
      I1 => s_axis0_tdata(124),
      I2 => i_select,
      O => p_0_in(124)
    );
\m_axis_tdata[125]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(125),
      I1 => s_axis0_tdata(125),
      I2 => i_select,
      O => p_0_in(125)
    );
\m_axis_tdata[126]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(126),
      I1 => s_axis0_tdata(126),
      I2 => i_select,
      O => p_0_in(126)
    );
\m_axis_tdata[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(127),
      I1 => s_axis0_tdata(127),
      I2 => i_select,
      O => p_0_in(127)
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(12),
      I1 => s_axis0_tdata(12),
      I2 => i_select,
      O => p_0_in(12)
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(13),
      I1 => s_axis0_tdata(13),
      I2 => i_select,
      O => p_0_in(13)
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(14),
      I1 => s_axis0_tdata(14),
      I2 => i_select,
      O => p_0_in(14)
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(15),
      I1 => s_axis0_tdata(15),
      I2 => i_select,
      O => p_0_in(15)
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(16),
      I1 => s_axis0_tdata(16),
      I2 => i_select,
      O => p_0_in(16)
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(17),
      I1 => s_axis0_tdata(17),
      I2 => i_select,
      O => p_0_in(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(18),
      I1 => s_axis0_tdata(18),
      I2 => i_select,
      O => p_0_in(18)
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(19),
      I1 => s_axis0_tdata(19),
      I2 => i_select,
      O => p_0_in(19)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(1),
      I1 => s_axis0_tdata(1),
      I2 => i_select,
      O => p_0_in(1)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(20),
      I1 => s_axis0_tdata(20),
      I2 => i_select,
      O => p_0_in(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(21),
      I1 => s_axis0_tdata(21),
      I2 => i_select,
      O => p_0_in(21)
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(22),
      I1 => s_axis0_tdata(22),
      I2 => i_select,
      O => p_0_in(22)
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(23),
      I1 => s_axis0_tdata(23),
      I2 => i_select,
      O => p_0_in(23)
    );
\m_axis_tdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(24),
      I1 => s_axis0_tdata(24),
      I2 => i_select,
      O => p_0_in(24)
    );
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(25),
      I1 => s_axis0_tdata(25),
      I2 => i_select,
      O => p_0_in(25)
    );
\m_axis_tdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(26),
      I1 => s_axis0_tdata(26),
      I2 => i_select,
      O => p_0_in(26)
    );
\m_axis_tdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(27),
      I1 => s_axis0_tdata(27),
      I2 => i_select,
      O => p_0_in(27)
    );
\m_axis_tdata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(28),
      I1 => s_axis0_tdata(28),
      I2 => i_select,
      O => p_0_in(28)
    );
\m_axis_tdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(29),
      I1 => s_axis0_tdata(29),
      I2 => i_select,
      O => p_0_in(29)
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(2),
      I1 => s_axis0_tdata(2),
      I2 => i_select,
      O => p_0_in(2)
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(30),
      I1 => s_axis0_tdata(30),
      I2 => i_select,
      O => p_0_in(30)
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(31),
      I1 => s_axis0_tdata(31),
      I2 => i_select,
      O => p_0_in(31)
    );
\m_axis_tdata[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(32),
      I1 => s_axis0_tdata(32),
      I2 => i_select,
      O => p_0_in(32)
    );
\m_axis_tdata[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(33),
      I1 => s_axis0_tdata(33),
      I2 => i_select,
      O => p_0_in(33)
    );
\m_axis_tdata[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(34),
      I1 => s_axis0_tdata(34),
      I2 => i_select,
      O => p_0_in(34)
    );
\m_axis_tdata[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(35),
      I1 => s_axis0_tdata(35),
      I2 => i_select,
      O => p_0_in(35)
    );
\m_axis_tdata[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(36),
      I1 => s_axis0_tdata(36),
      I2 => i_select,
      O => p_0_in(36)
    );
\m_axis_tdata[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(37),
      I1 => s_axis0_tdata(37),
      I2 => i_select,
      O => p_0_in(37)
    );
\m_axis_tdata[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(38),
      I1 => s_axis0_tdata(38),
      I2 => i_select,
      O => p_0_in(38)
    );
\m_axis_tdata[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(39),
      I1 => s_axis0_tdata(39),
      I2 => i_select,
      O => p_0_in(39)
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(3),
      I1 => s_axis0_tdata(3),
      I2 => i_select,
      O => p_0_in(3)
    );
\m_axis_tdata[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(40),
      I1 => s_axis0_tdata(40),
      I2 => i_select,
      O => p_0_in(40)
    );
\m_axis_tdata[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(41),
      I1 => s_axis0_tdata(41),
      I2 => i_select,
      O => p_0_in(41)
    );
\m_axis_tdata[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(42),
      I1 => s_axis0_tdata(42),
      I2 => i_select,
      O => p_0_in(42)
    );
\m_axis_tdata[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(43),
      I1 => s_axis0_tdata(43),
      I2 => i_select,
      O => p_0_in(43)
    );
\m_axis_tdata[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(44),
      I1 => s_axis0_tdata(44),
      I2 => i_select,
      O => p_0_in(44)
    );
\m_axis_tdata[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(45),
      I1 => s_axis0_tdata(45),
      I2 => i_select,
      O => p_0_in(45)
    );
\m_axis_tdata[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(46),
      I1 => s_axis0_tdata(46),
      I2 => i_select,
      O => p_0_in(46)
    );
\m_axis_tdata[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(47),
      I1 => s_axis0_tdata(47),
      I2 => i_select,
      O => p_0_in(47)
    );
\m_axis_tdata[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(48),
      I1 => s_axis0_tdata(48),
      I2 => i_select,
      O => p_0_in(48)
    );
\m_axis_tdata[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(49),
      I1 => s_axis0_tdata(49),
      I2 => i_select,
      O => p_0_in(49)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(4),
      I1 => s_axis0_tdata(4),
      I2 => i_select,
      O => p_0_in(4)
    );
\m_axis_tdata[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(50),
      I1 => s_axis0_tdata(50),
      I2 => i_select,
      O => p_0_in(50)
    );
\m_axis_tdata[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(51),
      I1 => s_axis0_tdata(51),
      I2 => i_select,
      O => p_0_in(51)
    );
\m_axis_tdata[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(52),
      I1 => s_axis0_tdata(52),
      I2 => i_select,
      O => p_0_in(52)
    );
\m_axis_tdata[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(53),
      I1 => s_axis0_tdata(53),
      I2 => i_select,
      O => p_0_in(53)
    );
\m_axis_tdata[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(54),
      I1 => s_axis0_tdata(54),
      I2 => i_select,
      O => p_0_in(54)
    );
\m_axis_tdata[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(55),
      I1 => s_axis0_tdata(55),
      I2 => i_select,
      O => p_0_in(55)
    );
\m_axis_tdata[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(56),
      I1 => s_axis0_tdata(56),
      I2 => i_select,
      O => p_0_in(56)
    );
\m_axis_tdata[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(57),
      I1 => s_axis0_tdata(57),
      I2 => i_select,
      O => p_0_in(57)
    );
\m_axis_tdata[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(58),
      I1 => s_axis0_tdata(58),
      I2 => i_select,
      O => p_0_in(58)
    );
\m_axis_tdata[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(59),
      I1 => s_axis0_tdata(59),
      I2 => i_select,
      O => p_0_in(59)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(5),
      I1 => s_axis0_tdata(5),
      I2 => i_select,
      O => p_0_in(5)
    );
\m_axis_tdata[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(60),
      I1 => s_axis0_tdata(60),
      I2 => i_select,
      O => p_0_in(60)
    );
\m_axis_tdata[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(61),
      I1 => s_axis0_tdata(61),
      I2 => i_select,
      O => p_0_in(61)
    );
\m_axis_tdata[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(62),
      I1 => s_axis0_tdata(62),
      I2 => i_select,
      O => p_0_in(62)
    );
\m_axis_tdata[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(63),
      I1 => s_axis0_tdata(63),
      I2 => i_select,
      O => p_0_in(63)
    );
\m_axis_tdata[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(64),
      I1 => s_axis0_tdata(64),
      I2 => i_select,
      O => p_0_in(64)
    );
\m_axis_tdata[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(65),
      I1 => s_axis0_tdata(65),
      I2 => i_select,
      O => p_0_in(65)
    );
\m_axis_tdata[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(66),
      I1 => s_axis0_tdata(66),
      I2 => i_select,
      O => p_0_in(66)
    );
\m_axis_tdata[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(67),
      I1 => s_axis0_tdata(67),
      I2 => i_select,
      O => p_0_in(67)
    );
\m_axis_tdata[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(68),
      I1 => s_axis0_tdata(68),
      I2 => i_select,
      O => p_0_in(68)
    );
\m_axis_tdata[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(69),
      I1 => s_axis0_tdata(69),
      I2 => i_select,
      O => p_0_in(69)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(6),
      I1 => s_axis0_tdata(6),
      I2 => i_select,
      O => p_0_in(6)
    );
\m_axis_tdata[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(70),
      I1 => s_axis0_tdata(70),
      I2 => i_select,
      O => p_0_in(70)
    );
\m_axis_tdata[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(71),
      I1 => s_axis0_tdata(71),
      I2 => i_select,
      O => p_0_in(71)
    );
\m_axis_tdata[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(72),
      I1 => s_axis0_tdata(72),
      I2 => i_select,
      O => p_0_in(72)
    );
\m_axis_tdata[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(73),
      I1 => s_axis0_tdata(73),
      I2 => i_select,
      O => p_0_in(73)
    );
\m_axis_tdata[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(74),
      I1 => s_axis0_tdata(74),
      I2 => i_select,
      O => p_0_in(74)
    );
\m_axis_tdata[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(75),
      I1 => s_axis0_tdata(75),
      I2 => i_select,
      O => p_0_in(75)
    );
\m_axis_tdata[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(76),
      I1 => s_axis0_tdata(76),
      I2 => i_select,
      O => p_0_in(76)
    );
\m_axis_tdata[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(77),
      I1 => s_axis0_tdata(77),
      I2 => i_select,
      O => p_0_in(77)
    );
\m_axis_tdata[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(78),
      I1 => s_axis0_tdata(78),
      I2 => i_select,
      O => p_0_in(78)
    );
\m_axis_tdata[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(79),
      I1 => s_axis0_tdata(79),
      I2 => i_select,
      O => p_0_in(79)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(7),
      I1 => s_axis0_tdata(7),
      I2 => i_select,
      O => p_0_in(7)
    );
\m_axis_tdata[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(80),
      I1 => s_axis0_tdata(80),
      I2 => i_select,
      O => p_0_in(80)
    );
\m_axis_tdata[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(81),
      I1 => s_axis0_tdata(81),
      I2 => i_select,
      O => p_0_in(81)
    );
\m_axis_tdata[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(82),
      I1 => s_axis0_tdata(82),
      I2 => i_select,
      O => p_0_in(82)
    );
\m_axis_tdata[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(83),
      I1 => s_axis0_tdata(83),
      I2 => i_select,
      O => p_0_in(83)
    );
\m_axis_tdata[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(84),
      I1 => s_axis0_tdata(84),
      I2 => i_select,
      O => p_0_in(84)
    );
\m_axis_tdata[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(85),
      I1 => s_axis0_tdata(85),
      I2 => i_select,
      O => p_0_in(85)
    );
\m_axis_tdata[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(86),
      I1 => s_axis0_tdata(86),
      I2 => i_select,
      O => p_0_in(86)
    );
\m_axis_tdata[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(87),
      I1 => s_axis0_tdata(87),
      I2 => i_select,
      O => p_0_in(87)
    );
\m_axis_tdata[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(88),
      I1 => s_axis0_tdata(88),
      I2 => i_select,
      O => p_0_in(88)
    );
\m_axis_tdata[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(89),
      I1 => s_axis0_tdata(89),
      I2 => i_select,
      O => p_0_in(89)
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(8),
      I1 => s_axis0_tdata(8),
      I2 => i_select,
      O => p_0_in(8)
    );
\m_axis_tdata[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(90),
      I1 => s_axis0_tdata(90),
      I2 => i_select,
      O => p_0_in(90)
    );
\m_axis_tdata[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(91),
      I1 => s_axis0_tdata(91),
      I2 => i_select,
      O => p_0_in(91)
    );
\m_axis_tdata[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(92),
      I1 => s_axis0_tdata(92),
      I2 => i_select,
      O => p_0_in(92)
    );
\m_axis_tdata[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(93),
      I1 => s_axis0_tdata(93),
      I2 => i_select,
      O => p_0_in(93)
    );
\m_axis_tdata[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(94),
      I1 => s_axis0_tdata(94),
      I2 => i_select,
      O => p_0_in(94)
    );
\m_axis_tdata[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(95),
      I1 => s_axis0_tdata(95),
      I2 => i_select,
      O => p_0_in(95)
    );
\m_axis_tdata[96]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(96),
      I1 => s_axis0_tdata(96),
      I2 => i_select,
      O => p_0_in(96)
    );
\m_axis_tdata[97]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(97),
      I1 => s_axis0_tdata(97),
      I2 => i_select,
      O => p_0_in(97)
    );
\m_axis_tdata[98]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(98),
      I1 => s_axis0_tdata(98),
      I2 => i_select,
      O => p_0_in(98)
    );
\m_axis_tdata[99]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(99),
      I1 => s_axis0_tdata(99),
      I2 => i_select,
      O => p_0_in(99)
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis1_tdata(9),
      I1 => s_axis0_tdata(9),
      I2 => i_select,
      O => p_0_in(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(100),
      Q => m_axis_tdata(100),
      R => '0'
    );
\m_axis_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(101),
      Q => m_axis_tdata(101),
      R => '0'
    );
\m_axis_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(102),
      Q => m_axis_tdata(102),
      R => '0'
    );
\m_axis_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(103),
      Q => m_axis_tdata(103),
      R => '0'
    );
\m_axis_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(104),
      Q => m_axis_tdata(104),
      R => '0'
    );
\m_axis_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(105),
      Q => m_axis_tdata(105),
      R => '0'
    );
\m_axis_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(106),
      Q => m_axis_tdata(106),
      R => '0'
    );
\m_axis_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(107),
      Q => m_axis_tdata(107),
      R => '0'
    );
\m_axis_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(108),
      Q => m_axis_tdata(108),
      R => '0'
    );
\m_axis_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(109),
      Q => m_axis_tdata(109),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(110),
      Q => m_axis_tdata(110),
      R => '0'
    );
\m_axis_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(111),
      Q => m_axis_tdata(111),
      R => '0'
    );
\m_axis_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(112),
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
      D => p_0_in(11),
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
      D => p_0_in(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(16),
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
      D => p_0_in(1),
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
      D => p_0_in(2),
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
      D => p_0_in(32),
      Q => m_axis_tdata(32),
      R => '0'
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(33),
      Q => m_axis_tdata(33),
      R => '0'
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(34),
      Q => m_axis_tdata(34),
      R => '0'
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(35),
      Q => m_axis_tdata(35),
      R => '0'
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(36),
      Q => m_axis_tdata(36),
      R => '0'
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(37),
      Q => m_axis_tdata(37),
      R => '0'
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(38),
      Q => m_axis_tdata(38),
      R => '0'
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(39),
      Q => m_axis_tdata(39),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(40),
      Q => m_axis_tdata(40),
      R => '0'
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(41),
      Q => m_axis_tdata(41),
      R => '0'
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(42),
      Q => m_axis_tdata(42),
      R => '0'
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(43),
      Q => m_axis_tdata(43),
      R => '0'
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(44),
      Q => m_axis_tdata(44),
      R => '0'
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(45),
      Q => m_axis_tdata(45),
      R => '0'
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(46),
      Q => m_axis_tdata(46),
      R => '0'
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(47),
      Q => m_axis_tdata(47),
      R => '0'
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(48),
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
      D => p_0_in(4),
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
      D => p_0_in(5),
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
      D => p_0_in(64),
      Q => m_axis_tdata(64),
      R => '0'
    );
\m_axis_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(65),
      Q => m_axis_tdata(65),
      R => '0'
    );
\m_axis_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(66),
      Q => m_axis_tdata(66),
      R => '0'
    );
\m_axis_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(67),
      Q => m_axis_tdata(67),
      R => '0'
    );
\m_axis_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(68),
      Q => m_axis_tdata(68),
      R => '0'
    );
\m_axis_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(69),
      Q => m_axis_tdata(69),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(70),
      Q => m_axis_tdata(70),
      R => '0'
    );
\m_axis_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(71),
      Q => m_axis_tdata(71),
      R => '0'
    );
\m_axis_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(72),
      Q => m_axis_tdata(72),
      R => '0'
    );
\m_axis_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(73),
      Q => m_axis_tdata(73),
      R => '0'
    );
\m_axis_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(74),
      Q => m_axis_tdata(74),
      R => '0'
    );
\m_axis_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(75),
      Q => m_axis_tdata(75),
      R => '0'
    );
\m_axis_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(76),
      Q => m_axis_tdata(76),
      R => '0'
    );
\m_axis_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(77),
      Q => m_axis_tdata(77),
      R => '0'
    );
\m_axis_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(78),
      Q => m_axis_tdata(78),
      R => '0'
    );
\m_axis_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(79),
      Q => m_axis_tdata(79),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(80),
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
      D => p_0_in(8),
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
      D => p_0_in(96),
      Q => m_axis_tdata(96),
      R => '0'
    );
\m_axis_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(97),
      Q => m_axis_tdata(97),
      R => '0'
    );
\m_axis_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(98),
      Q => m_axis_tdata(98),
      R => '0'
    );
\m_axis_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(99),
      Q => m_axis_tdata(99),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis1_tlast,
      I1 => i_select,
      I2 => s_axis0_tlast,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => m_axis_tlast_i_1_n_0,
      Q => m_axis_tlast,
      R => '0'
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis1_tvalid,
      I1 => i_select,
      I2 => s_axis0_tvalid,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => m_axis_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_axis0_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis0_tvalid : in STD_LOGIC;
    s_axis0_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis0_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis0_tlast : in STD_LOGIC;
    s_axis0_tready : out STD_LOGIC;
    s_axis1_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis1_tvalid : in STD_LOGIC;
    s_axis1_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis1_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis1_tlast : in STD_LOGIC;
    s_axis1_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_select : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cfo_correction_inst_0_mux_0_0,mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mux,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "ASSOCIATED_BUSIF axis_aclk:s_axis1:s_axis0:m_axis, FREQ_HZ 249997498";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis0_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis0 TLAST";
  attribute X_INTERFACE_INFO of s_axis0_tready : signal is "xilinx.com:interface:axis:1.0 s_axis0 TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis0_tready : signal is "XIL_INTERFACENAME s_axis0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis0_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis0 TVALID";
  attribute X_INTERFACE_INFO of s_axis1_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis1 TLAST";
  attribute X_INTERFACE_INFO of s_axis1_tready : signal is "xilinx.com:interface:axis:1.0 s_axis1 TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis1_tready : signal is "XIL_INTERFACENAME s_axis1, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis1_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis1 TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m_axis TSTRB";
  attribute X_INTERFACE_PARAMETER of m_axis_tstrb : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis0_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis0 TDATA";
  attribute X_INTERFACE_INFO of s_axis0_tid : signal is "xilinx.com:interface:axis:1.0 s_axis0 TID";
  attribute X_INTERFACE_INFO of s_axis0_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis0 TUSER";
  attribute X_INTERFACE_INFO of s_axis1_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis1 TDATA";
  attribute X_INTERFACE_INFO of s_axis1_tid : signal is "xilinx.com:interface:axis:1.0 s_axis1 TID";
  attribute X_INTERFACE_INFO of s_axis1_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis1 TUSER";
begin
  m_axis_tstrb(15) <= \<const0>\;
  m_axis_tstrb(14) <= \<const0>\;
  m_axis_tstrb(13) <= \<const0>\;
  m_axis_tstrb(12) <= \<const1>\;
  m_axis_tstrb(11) <= \<const0>\;
  m_axis_tstrb(10) <= \<const0>\;
  m_axis_tstrb(9) <= \<const0>\;
  m_axis_tstrb(8) <= \<const1>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const1>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const1>\;
  s_axis0_tready <= \<const0>\;
  s_axis1_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux
     port map (
      axis_aclk => axis_aclk,
      i_select => i_select,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tvalid => m_axis_tvalid,
      s_axis0_tdata(127 downto 0) => s_axis0_tdata(127 downto 0),
      s_axis0_tlast => s_axis0_tlast,
      s_axis0_tvalid => s_axis0_tvalid,
      s_axis1_tdata(127 downto 0) => s_axis1_tdata(127 downto 0),
      s_axis1_tlast => s_axis1_tlast,
      s_axis1_tvalid => s_axis1_tvalid
    );
end STRUCTURE;
