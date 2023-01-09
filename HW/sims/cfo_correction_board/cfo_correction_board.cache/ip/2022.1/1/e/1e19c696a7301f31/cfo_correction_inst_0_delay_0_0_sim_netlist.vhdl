-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Oct 17 10:13:12 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_inst_0_delay_0_0_sim_netlist.vhdl
-- Design      : cfo_correction_inst_0_delay_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    axis_aclk : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_symbol : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay is
  signal \active_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \active_counter[6]_i_4_n_0\ : STD_LOGIC;
  signal \active_counter[6]_i_5_n_0\ : STD_LOGIC;
  signal active_counter_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal delay_valid : STD_LOGIC;
  signal delay_valid_i_1_n_0 : STD_LOGIC;
  signal \m_axis_tdata[127]_i_1_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \quiet_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \quiet_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \quiet_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal quiet_counter_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal r_flip_i_1_n_0 : STD_LOGIC;
  signal r_flip_reg_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \active_counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \active_counter[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \active_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \active_counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \active_counter[6]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[8]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \quiet_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \quiet_counter[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \quiet_counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \quiet_counter[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \quiet_counter[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \quiet_counter[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \quiet_counter[8]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_flip_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_1 : label is "soft_lutpair5";
begin
\active_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => active_counter_reg(0),
      O => \plusOp__0\(0)
    );
\active_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => active_counter_reg(0),
      I1 => active_counter_reg(1),
      O => \plusOp__0\(1)
    );
\active_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => active_counter_reg(1),
      I1 => active_counter_reg(0),
      I2 => active_counter_reg(2),
      O => \plusOp__0\(2)
    );
\active_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => active_counter_reg(2),
      I1 => active_counter_reg(0),
      I2 => active_counter_reg(1),
      I3 => active_counter_reg(3),
      O => \plusOp__0\(3)
    );
\active_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => active_counter_reg(3),
      I1 => active_counter_reg(1),
      I2 => active_counter_reg(0),
      I3 => active_counter_reg(2),
      I4 => active_counter_reg(4),
      O => \plusOp__0\(4)
    );
\active_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => active_counter_reg(1),
      I1 => active_counter_reg(0),
      I2 => active_counter_reg(2),
      I3 => active_counter_reg(3),
      I4 => active_counter_reg(4),
      I5 => active_counter_reg(5),
      O => \plusOp__0\(5)
    );
\active_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000080FFFFFFFF"
    )
        port map (
      I0 => \quiet_counter[8]_i_3_n_0\,
      I1 => quiet_counter_reg(6),
      I2 => \active_counter[6]_i_4_n_0\,
      I3 => \quiet_counter[8]_i_4_n_0\,
      I4 => s_axis_tready_INST_0_i_1_n_0,
      I5 => delay_valid,
      O => \active_counter[6]_i_1_n_0\
    );
\active_counter[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_1_n_0,
      I1 => active_counter_reg(0),
      I2 => active_counter_reg(5),
      I3 => active_counter_reg(6),
      O => p_0_in_0
    );
\active_counter[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \active_counter[6]_i_5_n_0\,
      I1 => active_counter_reg(5),
      I2 => active_counter_reg(4),
      I3 => active_counter_reg(3),
      I4 => active_counter_reg(6),
      O => \plusOp__0\(6)
    );
\active_counter[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => quiet_counter_reg(7),
      I1 => quiet_counter_reg(8),
      O => \active_counter[6]_i_4_n_0\
    );
\active_counter[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => active_counter_reg(1),
      I1 => active_counter_reg(0),
      I2 => active_counter_reg(2),
      O => \active_counter[6]_i_5_n_0\
    );
\active_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => p_0_in_0,
      D => \plusOp__0\(0),
      Q => active_counter_reg(0),
      R => \active_counter[6]_i_1_n_0\
    );
\active_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => p_0_in_0,
      D => \plusOp__0\(1),
      Q => active_counter_reg(1),
      R => \active_counter[6]_i_1_n_0\
    );
\active_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => p_0_in_0,
      D => \plusOp__0\(2),
      Q => active_counter_reg(2),
      R => \active_counter[6]_i_1_n_0\
    );
\active_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => p_0_in_0,
      D => \plusOp__0\(3),
      Q => active_counter_reg(3),
      R => \active_counter[6]_i_1_n_0\
    );
\active_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => p_0_in_0,
      D => \plusOp__0\(4),
      Q => active_counter_reg(4),
      R => \active_counter[6]_i_1_n_0\
    );
\active_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => p_0_in_0,
      D => \plusOp__0\(5),
      Q => active_counter_reg(5),
      R => \active_counter[6]_i_1_n_0\
    );
\active_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => p_0_in_0,
      D => \plusOp__0\(6),
      Q => active_counter_reg(6),
      R => \active_counter[6]_i_1_n_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"555C"
    )
        port map (
      I0 => counter_reg(0),
      I1 => i_symbol,
      I2 => s_axis_tvalid,
      I3 => r_flip_reg_n_0,
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"666666F0"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => i_symbol,
      I3 => s_axis_tvalid,
      I4 => r_flip_reg_n_0,
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787878787878FF00"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => counter_reg(2),
      I3 => i_symbol,
      I4 => s_axis_tvalid,
      I5 => r_flip_reg_n_0,
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F807F80FFFF0000"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(2),
      I2 => counter_reg(1),
      I3 => counter_reg(3),
      I4 => i_symbol,
      I5 => \counter[8]_i_5_n_0\,
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4B4B4B4B4FF00"
    )
        port map (
      I0 => \counter[4]_i_2_n_0\,
      I1 => counter_reg(1),
      I2 => counter_reg(4),
      I3 => i_symbol,
      I4 => s_axis_tvalid,
      I5 => r_flip_reg_n_0,
      O => p_0_in(4)
    );
\counter[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(3),
      O => \counter[4]_i_2_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4B4B4B4B4FF00"
    )
        port map (
      I0 => \counter[5]_i_2_n_0\,
      I1 => counter_reg(1),
      I2 => counter_reg(5),
      I3 => i_symbol,
      I4 => s_axis_tvalid,
      I5 => r_flip_reg_n_0,
      O => p_0_in(5)
    );
\counter[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(0),
      I2 => counter_reg(2),
      I3 => counter_reg(4),
      O => \counter[5]_i_2_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4B4B4B4B4FF00"
    )
        port map (
      I0 => \counter[6]_i_2_n_0\,
      I1 => counter_reg(1),
      I2 => counter_reg(6),
      I3 => i_symbol,
      I4 => s_axis_tvalid,
      I5 => r_flip_reg_n_0,
      O => p_0_in(6)
    );
\counter[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(2),
      I2 => counter_reg(0),
      I3 => counter_reg(3),
      I4 => counter_reg(5),
      O => \counter[6]_i_2_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4B4B4B4B4FF00"
    )
        port map (
      I0 => \counter[8]_i_4_n_0\,
      I1 => counter_reg(1),
      I2 => counter_reg(7),
      I3 => i_symbol,
      I4 => s_axis_tvalid,
      I5 => r_flip_reg_n_0,
      O => p_0_in(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0000FFEFFFFF"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(1),
      I2 => counter_reg(7),
      I3 => \counter[8]_i_4_n_0\,
      I4 => \counter[8]_i_5_n_0\,
      I5 => i_symbol,
      O => \counter[8]_i_1_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40BF40FFFF0000"
    )
        port map (
      I0 => \counter[8]_i_4_n_0\,
      I1 => counter_reg(7),
      I2 => counter_reg(1),
      I3 => counter_reg(8),
      I4 => i_symbol,
      I5 => \counter[8]_i_5_n_0\,
      O => p_0_in(8)
    );
\counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(3),
      I2 => counter_reg(0),
      I3 => counter_reg(2),
      I4 => counter_reg(4),
      I5 => counter_reg(6),
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => r_flip_reg_n_0,
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(0),
      Q => counter_reg(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(1),
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(2),
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(3),
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(4),
      Q => counter_reg(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(5),
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(6),
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(7),
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \counter[8]_i_1_n_0\,
      CLR => \counter[8]_i_3_n_0\,
      D => p_0_in(8),
      Q => counter_reg(8)
    );
delay_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000040000"
    )
        port map (
      I0 => \counter[8]_i_4_n_0\,
      I1 => counter_reg(7),
      I2 => counter_reg(1),
      I3 => counter_reg(8),
      I4 => \counter[8]_i_5_n_0\,
      I5 => delay_valid,
      O => delay_valid_i_1_n_0
    );
delay_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \counter[8]_i_3_n_0\,
      D => delay_valid_i_1_n_0,
      Q => delay_valid
    );
\m_axis_tdata[127]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_valid,
      O => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(0),
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(100),
      Q => m_axis_tdata(100),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(101),
      Q => m_axis_tdata(101),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(102),
      Q => m_axis_tdata(102),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(103),
      Q => m_axis_tdata(103),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(104),
      Q => m_axis_tdata(104),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(105),
      Q => m_axis_tdata(105),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(106),
      Q => m_axis_tdata(106),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(107),
      Q => m_axis_tdata(107),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(108),
      Q => m_axis_tdata(108),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(109),
      Q => m_axis_tdata(109),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(10),
      Q => m_axis_tdata(10),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(110),
      Q => m_axis_tdata(110),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(111),
      Q => m_axis_tdata(111),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(112),
      Q => m_axis_tdata(112),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(113),
      Q => m_axis_tdata(113),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(114),
      Q => m_axis_tdata(114),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(115),
      Q => m_axis_tdata(115),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(116),
      Q => m_axis_tdata(116),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(117),
      Q => m_axis_tdata(117),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(118),
      Q => m_axis_tdata(118),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(119),
      Q => m_axis_tdata(119),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(11),
      Q => m_axis_tdata(11),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(120),
      Q => m_axis_tdata(120),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(121),
      Q => m_axis_tdata(121),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(122),
      Q => m_axis_tdata(122),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(123),
      Q => m_axis_tdata(123),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(124),
      Q => m_axis_tdata(124),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(125),
      Q => m_axis_tdata(125),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(126),
      Q => m_axis_tdata(126),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(127),
      Q => m_axis_tdata(127),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(12),
      Q => m_axis_tdata(12),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(13),
      Q => m_axis_tdata(13),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(14),
      Q => m_axis_tdata(14),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(15),
      Q => m_axis_tdata(15),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(16),
      Q => m_axis_tdata(16),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(17),
      Q => m_axis_tdata(17),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(18),
      Q => m_axis_tdata(18),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(19),
      Q => m_axis_tdata(19),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(1),
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(20),
      Q => m_axis_tdata(20),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(21),
      Q => m_axis_tdata(21),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(22),
      Q => m_axis_tdata(22),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(23),
      Q => m_axis_tdata(23),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(24),
      Q => m_axis_tdata(24),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(25),
      Q => m_axis_tdata(25),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(26),
      Q => m_axis_tdata(26),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(27),
      Q => m_axis_tdata(27),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(28),
      Q => m_axis_tdata(28),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(29),
      Q => m_axis_tdata(29),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(2),
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(30),
      Q => m_axis_tdata(30),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(31),
      Q => m_axis_tdata(31),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(32),
      Q => m_axis_tdata(32),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(33),
      Q => m_axis_tdata(33),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(34),
      Q => m_axis_tdata(34),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(35),
      Q => m_axis_tdata(35),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(36),
      Q => m_axis_tdata(36),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(37),
      Q => m_axis_tdata(37),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(38),
      Q => m_axis_tdata(38),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(39),
      Q => m_axis_tdata(39),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(3),
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(40),
      Q => m_axis_tdata(40),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(41),
      Q => m_axis_tdata(41),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(42),
      Q => m_axis_tdata(42),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(43),
      Q => m_axis_tdata(43),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(44),
      Q => m_axis_tdata(44),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(45),
      Q => m_axis_tdata(45),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(46),
      Q => m_axis_tdata(46),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(47),
      Q => m_axis_tdata(47),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(48),
      Q => m_axis_tdata(48),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(49),
      Q => m_axis_tdata(49),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(4),
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(50),
      Q => m_axis_tdata(50),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(51),
      Q => m_axis_tdata(51),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(52),
      Q => m_axis_tdata(52),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(53),
      Q => m_axis_tdata(53),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(54),
      Q => m_axis_tdata(54),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(55),
      Q => m_axis_tdata(55),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(56),
      Q => m_axis_tdata(56),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(57),
      Q => m_axis_tdata(57),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(58),
      Q => m_axis_tdata(58),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(59),
      Q => m_axis_tdata(59),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(5),
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(60),
      Q => m_axis_tdata(60),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(61),
      Q => m_axis_tdata(61),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(62),
      Q => m_axis_tdata(62),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(63),
      Q => m_axis_tdata(63),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(64),
      Q => m_axis_tdata(64),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(65),
      Q => m_axis_tdata(65),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(66),
      Q => m_axis_tdata(66),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(67),
      Q => m_axis_tdata(67),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(68),
      Q => m_axis_tdata(68),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(69),
      Q => m_axis_tdata(69),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(6),
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(70),
      Q => m_axis_tdata(70),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(71),
      Q => m_axis_tdata(71),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(72),
      Q => m_axis_tdata(72),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(73),
      Q => m_axis_tdata(73),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(74),
      Q => m_axis_tdata(74),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(75),
      Q => m_axis_tdata(75),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(76),
      Q => m_axis_tdata(76),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(77),
      Q => m_axis_tdata(77),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(78),
      Q => m_axis_tdata(78),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(79),
      Q => m_axis_tdata(79),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(7),
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(80),
      Q => m_axis_tdata(80),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(81),
      Q => m_axis_tdata(81),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(82),
      Q => m_axis_tdata(82),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(83),
      Q => m_axis_tdata(83),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(84),
      Q => m_axis_tdata(84),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(85),
      Q => m_axis_tdata(85),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(86),
      Q => m_axis_tdata(86),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(87),
      Q => m_axis_tdata(87),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(88),
      Q => m_axis_tdata(88),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(89),
      Q => m_axis_tdata(89),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(8),
      Q => m_axis_tdata(8),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(90),
      Q => m_axis_tdata(90),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(91),
      Q => m_axis_tdata(91),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(92),
      Q => m_axis_tdata(92),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(93),
      Q => m_axis_tdata(93),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(94),
      Q => m_axis_tdata(94),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(95),
      Q => m_axis_tdata(95),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(96),
      Q => m_axis_tdata(96),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(97),
      Q => m_axis_tdata(97),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(98),
      Q => m_axis_tdata(98),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(99),
      Q => m_axis_tdata(99),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(9),
      Q => m_axis_tdata(9),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(0),
      Q => m_axis_tid(0),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(1),
      Q => m_axis_tid(1),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(2),
      Q => m_axis_tid(2),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(3),
      Q => m_axis_tid(3),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(4),
      Q => m_axis_tid(4),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(5),
      Q => m_axis_tid(5),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(6),
      Q => m_axis_tid(6),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(7),
      Q => m_axis_tid(7),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tlast,
      Q => m_axis_tlast,
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(0),
      Q => m_axis_tuser(0),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(1),
      Q => m_axis_tuser(1),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(2),
      Q => m_axis_tuser(2),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(3),
      Q => m_axis_tuser(3),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(4),
      Q => m_axis_tuser(4),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(5),
      Q => m_axis_tuser(5),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(6),
      Q => m_axis_tuser(6),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(7),
      Q => m_axis_tuser(7),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888808"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => delay_valid,
      I2 => active_counter_reg(6),
      I3 => active_counter_reg(5),
      I4 => active_counter_reg(0),
      I5 => s_axis_tready_INST_0_i_1_n_0,
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
\quiet_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => quiet_counter_reg(0),
      O => plusOp(0)
    );
\quiet_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => quiet_counter_reg(0),
      I1 => quiet_counter_reg(1),
      O => plusOp(1)
    );
\quiet_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => quiet_counter_reg(1),
      I1 => quiet_counter_reg(0),
      I2 => quiet_counter_reg(2),
      O => plusOp(2)
    );
\quiet_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => quiet_counter_reg(2),
      I1 => quiet_counter_reg(0),
      I2 => quiet_counter_reg(1),
      I3 => quiet_counter_reg(3),
      O => plusOp(3)
    );
\quiet_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => quiet_counter_reg(3),
      I1 => quiet_counter_reg(1),
      I2 => quiet_counter_reg(0),
      I3 => quiet_counter_reg(2),
      I4 => quiet_counter_reg(4),
      O => plusOp(4)
    );
\quiet_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => quiet_counter_reg(4),
      I1 => quiet_counter_reg(2),
      I2 => quiet_counter_reg(0),
      I3 => quiet_counter_reg(1),
      I4 => quiet_counter_reg(3),
      I5 => quiet_counter_reg(5),
      O => plusOp(5)
    );
\quiet_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \quiet_counter[8]_i_3_n_0\,
      I1 => quiet_counter_reg(6),
      O => plusOp(6)
    );
\quiet_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => quiet_counter_reg(6),
      I1 => \quiet_counter[8]_i_3_n_0\,
      I2 => quiet_counter_reg(7),
      O => plusOp(7)
    );
\quiet_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0080"
    )
        port map (
      I0 => \quiet_counter[8]_i_3_n_0\,
      I1 => quiet_counter_reg(6),
      I2 => quiet_counter_reg(7),
      I3 => quiet_counter_reg(8),
      I4 => \quiet_counter[8]_i_4_n_0\,
      I5 => s_axis_tready_INST_0_i_1_n_0,
      O => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => quiet_counter_reg(7),
      I1 => \quiet_counter[8]_i_3_n_0\,
      I2 => quiet_counter_reg(6),
      I3 => quiet_counter_reg(8),
      O => plusOp(8)
    );
\quiet_counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => quiet_counter_reg(4),
      I1 => quiet_counter_reg(2),
      I2 => quiet_counter_reg(0),
      I3 => quiet_counter_reg(1),
      I4 => quiet_counter_reg(3),
      I5 => quiet_counter_reg(5),
      O => \quiet_counter[8]_i_3_n_0\
    );
\quiet_counter[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => active_counter_reg(6),
      I1 => active_counter_reg(5),
      I2 => active_counter_reg(0),
      O => \quiet_counter[8]_i_4_n_0\
    );
\quiet_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(0),
      Q => quiet_counter_reg(0),
      R => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(1),
      Q => quiet_counter_reg(1),
      R => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(2),
      Q => quiet_counter_reg(2),
      R => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(3),
      Q => quiet_counter_reg(3),
      R => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(4),
      Q => quiet_counter_reg(4),
      R => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(5),
      Q => quiet_counter_reg(5),
      R => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(6),
      Q => quiet_counter_reg(6),
      R => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(7),
      Q => quiet_counter_reg(7),
      R => \quiet_counter[8]_i_1_n_0\
    );
\quiet_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => plusOp(8),
      Q => quiet_counter_reg(8),
      R => \quiet_counter[8]_i_1_n_0\
    );
r_flip_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8F0"
    )
        port map (
      I0 => i_symbol,
      I1 => s_axis_tvalid,
      I2 => r_flip_reg_n_0,
      I3 => axis_aresetn,
      O => r_flip_i_1_n_0
    );
r_flip_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => r_flip_i_1_n_0,
      Q => r_flip_reg_n_0,
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => active_counter_reg(6),
      I1 => active_counter_reg(5),
      I2 => active_counter_reg(0),
      I3 => s_axis_tready_INST_0_i_1_n_0,
      I4 => delay_valid,
      O => s_axis_tready
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => active_counter_reg(2),
      I1 => active_counter_reg(1),
      I2 => active_counter_reg(4),
      I3 => active_counter_reg(3),
      O => s_axis_tready_INST_0_i_1_n_0
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
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    i_symbol : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cfo_correction_inst_0_delay_0_0,delay,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "delay,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay
     port map (
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      i_symbol => i_symbol,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tid(7 downto 0) => m_axis_tid(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tuser(7 downto 0) => m_axis_tuser(7 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(127 downto 0) => s_axis_tdata(127 downto 0),
      s_axis_tid(7 downto 0) => s_axis_tid(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(7 downto 0) => s_axis_tuser(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
