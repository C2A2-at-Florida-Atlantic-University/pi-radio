-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Oct 17 10:13:12 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top cfo_correction_inst_1_cp_rm_0_0 -prefix
--               cfo_correction_inst_1_cp_rm_0_0_ cfo_correction_inst_0_cp_rm_0_0_sim_netlist.vhdl
-- Design      : cfo_correction_inst_0_cp_rm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cfo_correction_inst_1_cp_rm_0_0_cp_rm is
  port (
    r_symbol_reg_0 : out STD_LOGIC;
    o_symbol_number : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_cp_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_cp_axis_tvalid : out STD_LOGIC;
    m_cp_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_cp_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_cp_axis_tlast : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_aresetn : in STD_LOGIC
  );
end cfo_correction_inst_1_cp_rm_0_0_cp_rm;

architecture STRUCTURE of cfo_correction_inst_1_cp_rm_0_0_cp_rm is
  signal \cp_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \cp_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \cp_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal cp_counter_reg : STD_LOGIC_VECTOR ( 9 downto 6 );
  signal \cp_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \cp_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \cp_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \cp_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \cp_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \cp_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal in_tdata : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal in_tid : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_tlast : STD_LOGIC;
  signal in_tuser : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_tvalid : STD_LOGIC;
  signal \m_axis_tdata[127]_i_1_n_0\ : STD_LOGIC;
  signal \m_cp_axis_tdata[127]_i_1_n_0\ : STD_LOGIC;
  signal \^o_symbol_number\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \out_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \out_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal out_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal r_symbol_i_1_n_0 : STD_LOGIC;
  signal r_symbol_i_2_n_0 : STD_LOGIC;
  signal \^r_symbol_reg_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \symbol_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \symbol_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \symbol_counter[7]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cp_counter[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cp_counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cp_counter[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cp_counter[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_counter[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \out_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \out_counter[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_counter[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \out_counter[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \out_counter[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_symbol_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \symbol_counter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \symbol_counter[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \symbol_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \symbol_counter[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \symbol_counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \symbol_counter[7]_i_2\ : label is "soft_lutpair5";
begin
  o_symbol_number(7 downto 0) <= \^o_symbol_number\(7 downto 0);
  r_symbol_reg_0 <= \^r_symbol_reg_0\;
\cp_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0045"
    )
        port map (
      I0 => in_tlast,
      I1 => in_tvalid,
      I2 => s_axis_tvalid,
      I3 => \cp_counter_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\cp_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000D0D00"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => in_tvalid,
      I2 => in_tlast,
      I3 => \cp_counter_reg_n_0_[0]\,
      I4 => \cp_counter_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\cp_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D0D0D0D000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => in_tvalid,
      I2 => in_tlast,
      I3 => \cp_counter_reg_n_0_[1]\,
      I4 => \cp_counter_reg_n_0_[0]\,
      I5 => \cp_counter_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\cp_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \cp_counter_reg_n_0_[1]\,
      I1 => \cp_counter_reg_n_0_[0]\,
      I2 => \cp_counter_reg_n_0_[2]\,
      I3 => \cp_counter[9]_i_3_n_0\,
      I4 => \cp_counter_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\cp_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \cp_counter_reg_n_0_[2]\,
      I1 => \cp_counter_reg_n_0_[0]\,
      I2 => \cp_counter_reg_n_0_[1]\,
      I3 => \cp_counter_reg_n_0_[3]\,
      I4 => \cp_counter[9]_i_3_n_0\,
      I5 => \cp_counter_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\cp_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20221011"
    )
        port map (
      I0 => \cp_counter[5]_i_2_n_0\,
      I1 => in_tlast,
      I2 => in_tvalid,
      I3 => s_axis_tvalid,
      I4 => \cp_counter_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\cp_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \cp_counter_reg_n_0_[3]\,
      I1 => \cp_counter_reg_n_0_[1]\,
      I2 => \cp_counter_reg_n_0_[0]\,
      I3 => \cp_counter_reg_n_0_[2]\,
      I4 => \cp_counter_reg_n_0_[4]\,
      O => \cp_counter[5]_i_2_n_0\
    );
\cp_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20221011"
    )
        port map (
      I0 => \cp_counter[9]_i_2_n_0\,
      I1 => in_tlast,
      I2 => in_tvalid,
      I3 => s_axis_tvalid,
      I4 => cp_counter_reg(6),
      O => p_0_in(6)
    );
\cp_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B000B0B04000404"
    )
        port map (
      I0 => \cp_counter[9]_i_2_n_0\,
      I1 => cp_counter_reg(6),
      I2 => in_tlast,
      I3 => in_tvalid,
      I4 => s_axis_tvalid,
      I5 => cp_counter_reg(7),
      O => p_0_in(7)
    );
\cp_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF002000"
    )
        port map (
      I0 => cp_counter_reg(6),
      I1 => \cp_counter[9]_i_2_n_0\,
      I2 => cp_counter_reg(7),
      I3 => \cp_counter[9]_i_3_n_0\,
      I4 => cp_counter_reg(8),
      O => p_0_in(8)
    );
\cp_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000020000000"
    )
        port map (
      I0 => cp_counter_reg(7),
      I1 => \cp_counter[9]_i_2_n_0\,
      I2 => cp_counter_reg(6),
      I3 => cp_counter_reg(8),
      I4 => \cp_counter[9]_i_3_n_0\,
      I5 => cp_counter_reg(9),
      O => p_0_in(9)
    );
\cp_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cp_counter_reg_n_0_[4]\,
      I1 => \cp_counter_reg_n_0_[2]\,
      I2 => \cp_counter_reg_n_0_[0]\,
      I3 => \cp_counter_reg_n_0_[1]\,
      I4 => \cp_counter_reg_n_0_[3]\,
      I5 => \cp_counter_reg_n_0_[5]\,
      O => \cp_counter[9]_i_2_n_0\
    );
\cp_counter[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => in_tvalid,
      I2 => in_tlast,
      O => \cp_counter[9]_i_3_n_0\
    );
\cp_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(0),
      Q => \cp_counter_reg_n_0_[0]\
    );
\cp_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(1),
      Q => \cp_counter_reg_n_0_[1]\
    );
\cp_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(2),
      Q => \cp_counter_reg_n_0_[2]\
    );
\cp_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(3),
      Q => \cp_counter_reg_n_0_[3]\
    );
\cp_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(4),
      Q => \cp_counter_reg_n_0_[4]\
    );
\cp_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(5),
      Q => \cp_counter_reg_n_0_[5]\
    );
\cp_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(6),
      Q => cp_counter_reg(6)
    );
\cp_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(7),
      Q => cp_counter_reg(7)
    );
\cp_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(8),
      Q => cp_counter_reg(8)
    );
\cp_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => p_0_in(9),
      Q => cp_counter_reg(9)
    );
\in_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(0),
      Q => in_tdata(0),
      R => '0'
    );
\in_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(100),
      Q => in_tdata(100),
      R => '0'
    );
\in_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(101),
      Q => in_tdata(101),
      R => '0'
    );
\in_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(102),
      Q => in_tdata(102),
      R => '0'
    );
\in_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(103),
      Q => in_tdata(103),
      R => '0'
    );
\in_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(104),
      Q => in_tdata(104),
      R => '0'
    );
\in_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(105),
      Q => in_tdata(105),
      R => '0'
    );
\in_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(106),
      Q => in_tdata(106),
      R => '0'
    );
\in_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(107),
      Q => in_tdata(107),
      R => '0'
    );
\in_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(108),
      Q => in_tdata(108),
      R => '0'
    );
\in_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(109),
      Q => in_tdata(109),
      R => '0'
    );
\in_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(10),
      Q => in_tdata(10),
      R => '0'
    );
\in_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(110),
      Q => in_tdata(110),
      R => '0'
    );
\in_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(111),
      Q => in_tdata(111),
      R => '0'
    );
\in_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(112),
      Q => in_tdata(112),
      R => '0'
    );
\in_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(113),
      Q => in_tdata(113),
      R => '0'
    );
\in_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(114),
      Q => in_tdata(114),
      R => '0'
    );
\in_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(115),
      Q => in_tdata(115),
      R => '0'
    );
\in_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(116),
      Q => in_tdata(116),
      R => '0'
    );
\in_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(117),
      Q => in_tdata(117),
      R => '0'
    );
\in_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(118),
      Q => in_tdata(118),
      R => '0'
    );
\in_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(119),
      Q => in_tdata(119),
      R => '0'
    );
\in_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(11),
      Q => in_tdata(11),
      R => '0'
    );
\in_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(120),
      Q => in_tdata(120),
      R => '0'
    );
\in_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(121),
      Q => in_tdata(121),
      R => '0'
    );
\in_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(122),
      Q => in_tdata(122),
      R => '0'
    );
\in_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(123),
      Q => in_tdata(123),
      R => '0'
    );
\in_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(124),
      Q => in_tdata(124),
      R => '0'
    );
\in_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(125),
      Q => in_tdata(125),
      R => '0'
    );
\in_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(126),
      Q => in_tdata(126),
      R => '0'
    );
\in_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(127),
      Q => in_tdata(127),
      R => '0'
    );
\in_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(12),
      Q => in_tdata(12),
      R => '0'
    );
\in_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(13),
      Q => in_tdata(13),
      R => '0'
    );
\in_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(14),
      Q => in_tdata(14),
      R => '0'
    );
\in_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(15),
      Q => in_tdata(15),
      R => '0'
    );
\in_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(16),
      Q => in_tdata(16),
      R => '0'
    );
\in_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(17),
      Q => in_tdata(17),
      R => '0'
    );
\in_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(18),
      Q => in_tdata(18),
      R => '0'
    );
\in_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(19),
      Q => in_tdata(19),
      R => '0'
    );
\in_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(1),
      Q => in_tdata(1),
      R => '0'
    );
\in_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(20),
      Q => in_tdata(20),
      R => '0'
    );
\in_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(21),
      Q => in_tdata(21),
      R => '0'
    );
\in_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(22),
      Q => in_tdata(22),
      R => '0'
    );
\in_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(23),
      Q => in_tdata(23),
      R => '0'
    );
\in_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(24),
      Q => in_tdata(24),
      R => '0'
    );
\in_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(25),
      Q => in_tdata(25),
      R => '0'
    );
\in_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(26),
      Q => in_tdata(26),
      R => '0'
    );
\in_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(27),
      Q => in_tdata(27),
      R => '0'
    );
\in_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(28),
      Q => in_tdata(28),
      R => '0'
    );
\in_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(29),
      Q => in_tdata(29),
      R => '0'
    );
\in_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(2),
      Q => in_tdata(2),
      R => '0'
    );
\in_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(30),
      Q => in_tdata(30),
      R => '0'
    );
\in_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(31),
      Q => in_tdata(31),
      R => '0'
    );
\in_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(32),
      Q => in_tdata(32),
      R => '0'
    );
\in_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(33),
      Q => in_tdata(33),
      R => '0'
    );
\in_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(34),
      Q => in_tdata(34),
      R => '0'
    );
\in_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(35),
      Q => in_tdata(35),
      R => '0'
    );
\in_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(36),
      Q => in_tdata(36),
      R => '0'
    );
\in_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(37),
      Q => in_tdata(37),
      R => '0'
    );
\in_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(38),
      Q => in_tdata(38),
      R => '0'
    );
\in_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(39),
      Q => in_tdata(39),
      R => '0'
    );
\in_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(3),
      Q => in_tdata(3),
      R => '0'
    );
\in_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(40),
      Q => in_tdata(40),
      R => '0'
    );
\in_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(41),
      Q => in_tdata(41),
      R => '0'
    );
\in_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(42),
      Q => in_tdata(42),
      R => '0'
    );
\in_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(43),
      Q => in_tdata(43),
      R => '0'
    );
\in_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(44),
      Q => in_tdata(44),
      R => '0'
    );
\in_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(45),
      Q => in_tdata(45),
      R => '0'
    );
\in_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(46),
      Q => in_tdata(46),
      R => '0'
    );
\in_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(47),
      Q => in_tdata(47),
      R => '0'
    );
\in_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(48),
      Q => in_tdata(48),
      R => '0'
    );
\in_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(49),
      Q => in_tdata(49),
      R => '0'
    );
\in_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(4),
      Q => in_tdata(4),
      R => '0'
    );
\in_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(50),
      Q => in_tdata(50),
      R => '0'
    );
\in_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(51),
      Q => in_tdata(51),
      R => '0'
    );
\in_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(52),
      Q => in_tdata(52),
      R => '0'
    );
\in_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(53),
      Q => in_tdata(53),
      R => '0'
    );
\in_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(54),
      Q => in_tdata(54),
      R => '0'
    );
\in_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(55),
      Q => in_tdata(55),
      R => '0'
    );
\in_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(56),
      Q => in_tdata(56),
      R => '0'
    );
\in_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(57),
      Q => in_tdata(57),
      R => '0'
    );
\in_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(58),
      Q => in_tdata(58),
      R => '0'
    );
\in_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(59),
      Q => in_tdata(59),
      R => '0'
    );
\in_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(5),
      Q => in_tdata(5),
      R => '0'
    );
\in_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(60),
      Q => in_tdata(60),
      R => '0'
    );
\in_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(61),
      Q => in_tdata(61),
      R => '0'
    );
\in_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(62),
      Q => in_tdata(62),
      R => '0'
    );
\in_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(63),
      Q => in_tdata(63),
      R => '0'
    );
\in_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(64),
      Q => in_tdata(64),
      R => '0'
    );
\in_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(65),
      Q => in_tdata(65),
      R => '0'
    );
\in_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(66),
      Q => in_tdata(66),
      R => '0'
    );
\in_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(67),
      Q => in_tdata(67),
      R => '0'
    );
\in_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(68),
      Q => in_tdata(68),
      R => '0'
    );
\in_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(69),
      Q => in_tdata(69),
      R => '0'
    );
\in_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(6),
      Q => in_tdata(6),
      R => '0'
    );
\in_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(70),
      Q => in_tdata(70),
      R => '0'
    );
\in_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(71),
      Q => in_tdata(71),
      R => '0'
    );
\in_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(72),
      Q => in_tdata(72),
      R => '0'
    );
\in_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(73),
      Q => in_tdata(73),
      R => '0'
    );
\in_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(74),
      Q => in_tdata(74),
      R => '0'
    );
\in_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(75),
      Q => in_tdata(75),
      R => '0'
    );
\in_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(76),
      Q => in_tdata(76),
      R => '0'
    );
\in_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(77),
      Q => in_tdata(77),
      R => '0'
    );
\in_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(78),
      Q => in_tdata(78),
      R => '0'
    );
\in_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(79),
      Q => in_tdata(79),
      R => '0'
    );
\in_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(7),
      Q => in_tdata(7),
      R => '0'
    );
\in_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(80),
      Q => in_tdata(80),
      R => '0'
    );
\in_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(81),
      Q => in_tdata(81),
      R => '0'
    );
\in_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(82),
      Q => in_tdata(82),
      R => '0'
    );
\in_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(83),
      Q => in_tdata(83),
      R => '0'
    );
\in_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(84),
      Q => in_tdata(84),
      R => '0'
    );
\in_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(85),
      Q => in_tdata(85),
      R => '0'
    );
\in_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(86),
      Q => in_tdata(86),
      R => '0'
    );
\in_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(87),
      Q => in_tdata(87),
      R => '0'
    );
\in_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(88),
      Q => in_tdata(88),
      R => '0'
    );
\in_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(89),
      Q => in_tdata(89),
      R => '0'
    );
\in_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(8),
      Q => in_tdata(8),
      R => '0'
    );
\in_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(90),
      Q => in_tdata(90),
      R => '0'
    );
\in_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(91),
      Q => in_tdata(91),
      R => '0'
    );
\in_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(92),
      Q => in_tdata(92),
      R => '0'
    );
\in_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(93),
      Q => in_tdata(93),
      R => '0'
    );
\in_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(94),
      Q => in_tdata(94),
      R => '0'
    );
\in_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(95),
      Q => in_tdata(95),
      R => '0'
    );
\in_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(96),
      Q => in_tdata(96),
      R => '0'
    );
\in_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(97),
      Q => in_tdata(97),
      R => '0'
    );
\in_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(98),
      Q => in_tdata(98),
      R => '0'
    );
\in_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(99),
      Q => in_tdata(99),
      R => '0'
    );
\in_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(9),
      Q => in_tdata(9),
      R => '0'
    );
\in_tid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(0),
      Q => in_tid(0),
      R => '0'
    );
\in_tid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(1),
      Q => in_tid(1),
      R => '0'
    );
\in_tid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(2),
      Q => in_tid(2),
      R => '0'
    );
\in_tid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(3),
      Q => in_tid(3),
      R => '0'
    );
\in_tid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(4),
      Q => in_tid(4),
      R => '0'
    );
\in_tid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(5),
      Q => in_tid(5),
      R => '0'
    );
\in_tid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(6),
      Q => in_tid(6),
      R => '0'
    );
\in_tid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(7),
      Q => in_tid(7),
      R => '0'
    );
in_tlast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tlast,
      Q => in_tlast,
      R => '0'
    );
\in_tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(0),
      Q => in_tuser(0),
      R => '0'
    );
\in_tuser_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(1),
      Q => in_tuser(1),
      R => '0'
    );
\in_tuser_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(2),
      Q => in_tuser(2),
      R => '0'
    );
\in_tuser_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(3),
      Q => in_tuser(3),
      R => '0'
    );
\in_tuser_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(4),
      Q => in_tuser(4),
      R => '0'
    );
\in_tuser_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(5),
      Q => in_tuser(5),
      R => '0'
    );
\in_tuser_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(6),
      Q => in_tuser(6),
      R => '0'
    );
\in_tuser_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(7),
      Q => in_tuser(7),
      R => '0'
    );
in_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tvalid,
      Q => in_tvalid,
      R => '0'
    );
\m_axis_tdata[127]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100010001FFFF"
    )
        port map (
      I0 => cp_counter_reg(8),
      I1 => cp_counter_reg(9),
      I2 => cp_counter_reg(6),
      I3 => cp_counter_reg(7),
      I4 => in_tvalid,
      I5 => s_axis_tvalid,
      O => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(0),
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(100),
      Q => m_axis_tdata(100),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(101),
      Q => m_axis_tdata(101),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(102),
      Q => m_axis_tdata(102),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(103),
      Q => m_axis_tdata(103),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(104),
      Q => m_axis_tdata(104),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(105),
      Q => m_axis_tdata(105),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(106),
      Q => m_axis_tdata(106),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(107),
      Q => m_axis_tdata(107),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(108),
      Q => m_axis_tdata(108),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(109),
      Q => m_axis_tdata(109),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(10),
      Q => m_axis_tdata(10),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(110),
      Q => m_axis_tdata(110),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(111),
      Q => m_axis_tdata(111),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(112),
      Q => m_axis_tdata(112),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(113),
      Q => m_axis_tdata(113),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(114),
      Q => m_axis_tdata(114),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(115),
      Q => m_axis_tdata(115),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(116),
      Q => m_axis_tdata(116),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(117),
      Q => m_axis_tdata(117),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(118),
      Q => m_axis_tdata(118),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(119),
      Q => m_axis_tdata(119),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(11),
      Q => m_axis_tdata(11),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(120),
      Q => m_axis_tdata(120),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(121),
      Q => m_axis_tdata(121),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(122),
      Q => m_axis_tdata(122),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(123),
      Q => m_axis_tdata(123),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(124),
      Q => m_axis_tdata(124),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(125),
      Q => m_axis_tdata(125),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(126),
      Q => m_axis_tdata(126),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(127),
      Q => m_axis_tdata(127),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(12),
      Q => m_axis_tdata(12),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(13),
      Q => m_axis_tdata(13),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(14),
      Q => m_axis_tdata(14),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(15),
      Q => m_axis_tdata(15),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(16),
      Q => m_axis_tdata(16),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(17),
      Q => m_axis_tdata(17),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(18),
      Q => m_axis_tdata(18),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(19),
      Q => m_axis_tdata(19),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(1),
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(20),
      Q => m_axis_tdata(20),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(21),
      Q => m_axis_tdata(21),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(22),
      Q => m_axis_tdata(22),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(23),
      Q => m_axis_tdata(23),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(24),
      Q => m_axis_tdata(24),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(25),
      Q => m_axis_tdata(25),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(26),
      Q => m_axis_tdata(26),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(27),
      Q => m_axis_tdata(27),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(28),
      Q => m_axis_tdata(28),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(29),
      Q => m_axis_tdata(29),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(2),
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(30),
      Q => m_axis_tdata(30),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(31),
      Q => m_axis_tdata(31),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(32),
      Q => m_axis_tdata(32),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(33),
      Q => m_axis_tdata(33),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(34),
      Q => m_axis_tdata(34),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(35),
      Q => m_axis_tdata(35),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(36),
      Q => m_axis_tdata(36),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(37),
      Q => m_axis_tdata(37),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(38),
      Q => m_axis_tdata(38),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(39),
      Q => m_axis_tdata(39),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(3),
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(40),
      Q => m_axis_tdata(40),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(41),
      Q => m_axis_tdata(41),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(42),
      Q => m_axis_tdata(42),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(43),
      Q => m_axis_tdata(43),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(44),
      Q => m_axis_tdata(44),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(45),
      Q => m_axis_tdata(45),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(46),
      Q => m_axis_tdata(46),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(47),
      Q => m_axis_tdata(47),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(48),
      Q => m_axis_tdata(48),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(49),
      Q => m_axis_tdata(49),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(4),
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(50),
      Q => m_axis_tdata(50),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(51),
      Q => m_axis_tdata(51),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(52),
      Q => m_axis_tdata(52),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(53),
      Q => m_axis_tdata(53),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(54),
      Q => m_axis_tdata(54),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(55),
      Q => m_axis_tdata(55),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(56),
      Q => m_axis_tdata(56),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(57),
      Q => m_axis_tdata(57),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(58),
      Q => m_axis_tdata(58),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(59),
      Q => m_axis_tdata(59),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(5),
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(60),
      Q => m_axis_tdata(60),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(61),
      Q => m_axis_tdata(61),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(62),
      Q => m_axis_tdata(62),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(63),
      Q => m_axis_tdata(63),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(64),
      Q => m_axis_tdata(64),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(65),
      Q => m_axis_tdata(65),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(66),
      Q => m_axis_tdata(66),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(67),
      Q => m_axis_tdata(67),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(68),
      Q => m_axis_tdata(68),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(69),
      Q => m_axis_tdata(69),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(6),
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(70),
      Q => m_axis_tdata(70),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(71),
      Q => m_axis_tdata(71),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(72),
      Q => m_axis_tdata(72),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(73),
      Q => m_axis_tdata(73),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(74),
      Q => m_axis_tdata(74),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(75),
      Q => m_axis_tdata(75),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(76),
      Q => m_axis_tdata(76),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(77),
      Q => m_axis_tdata(77),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(78),
      Q => m_axis_tdata(78),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(79),
      Q => m_axis_tdata(79),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(7),
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(80),
      Q => m_axis_tdata(80),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(81),
      Q => m_axis_tdata(81),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(82),
      Q => m_axis_tdata(82),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(83),
      Q => m_axis_tdata(83),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(84),
      Q => m_axis_tdata(84),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(85),
      Q => m_axis_tdata(85),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(86),
      Q => m_axis_tdata(86),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(87),
      Q => m_axis_tdata(87),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(88),
      Q => m_axis_tdata(88),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(89),
      Q => m_axis_tdata(89),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(8),
      Q => m_axis_tdata(8),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(90),
      Q => m_axis_tdata(90),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(91),
      Q => m_axis_tdata(91),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(92),
      Q => m_axis_tdata(92),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(93),
      Q => m_axis_tdata(93),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(94),
      Q => m_axis_tdata(94),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(95),
      Q => m_axis_tdata(95),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(96),
      Q => m_axis_tdata(96),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(97),
      Q => m_axis_tdata(97),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(98),
      Q => m_axis_tdata(98),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(99),
      Q => m_axis_tdata(99),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(9),
      Q => m_axis_tdata(9),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(0),
      Q => m_axis_tid(0),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(1),
      Q => m_axis_tid(1),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(2),
      Q => m_axis_tid(2),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(3),
      Q => m_axis_tid(3),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(4),
      Q => m_axis_tid(4),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(5),
      Q => m_axis_tid(5),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(6),
      Q => m_axis_tid(6),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(7),
      Q => m_axis_tid(7),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tlast,
      Q => m_axis_tlast,
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(0),
      Q => m_axis_tuser(0),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(1),
      Q => m_axis_tuser(1),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(2),
      Q => m_axis_tuser(2),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(3),
      Q => m_axis_tuser(3),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(4),
      Q => m_axis_tuser(4),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(5),
      Q => m_axis_tuser(5),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(6),
      Q => m_axis_tuser(6),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tuser_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(7),
      Q => m_axis_tuser(7),
      R => \m_axis_tdata[127]_i_1_n_0\
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tvalid,
      Q => m_axis_tvalid,
      R => \m_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata[127]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEF"
    )
        port map (
      I0 => cp_counter_reg(8),
      I1 => cp_counter_reg(9),
      I2 => s_axis_tvalid,
      I3 => in_tvalid,
      I4 => cp_counter_reg(7),
      I5 => cp_counter_reg(6),
      O => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(0),
      Q => m_cp_axis_tdata(0),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(100),
      Q => m_cp_axis_tdata(100),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(101),
      Q => m_cp_axis_tdata(101),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(102),
      Q => m_cp_axis_tdata(102),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(103),
      Q => m_cp_axis_tdata(103),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(104),
      Q => m_cp_axis_tdata(104),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(105),
      Q => m_cp_axis_tdata(105),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(106),
      Q => m_cp_axis_tdata(106),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(107),
      Q => m_cp_axis_tdata(107),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(108),
      Q => m_cp_axis_tdata(108),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(109),
      Q => m_cp_axis_tdata(109),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(10),
      Q => m_cp_axis_tdata(10),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(110),
      Q => m_cp_axis_tdata(110),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(111),
      Q => m_cp_axis_tdata(111),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(112),
      Q => m_cp_axis_tdata(112),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(113),
      Q => m_cp_axis_tdata(113),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(114),
      Q => m_cp_axis_tdata(114),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(115),
      Q => m_cp_axis_tdata(115),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(116),
      Q => m_cp_axis_tdata(116),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(117),
      Q => m_cp_axis_tdata(117),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(118),
      Q => m_cp_axis_tdata(118),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(119),
      Q => m_cp_axis_tdata(119),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(11),
      Q => m_cp_axis_tdata(11),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(120),
      Q => m_cp_axis_tdata(120),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(121),
      Q => m_cp_axis_tdata(121),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(122),
      Q => m_cp_axis_tdata(122),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(123),
      Q => m_cp_axis_tdata(123),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(124),
      Q => m_cp_axis_tdata(124),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(125),
      Q => m_cp_axis_tdata(125),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(126),
      Q => m_cp_axis_tdata(126),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(127),
      Q => m_cp_axis_tdata(127),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(12),
      Q => m_cp_axis_tdata(12),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(13),
      Q => m_cp_axis_tdata(13),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(14),
      Q => m_cp_axis_tdata(14),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(15),
      Q => m_cp_axis_tdata(15),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(16),
      Q => m_cp_axis_tdata(16),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(17),
      Q => m_cp_axis_tdata(17),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(18),
      Q => m_cp_axis_tdata(18),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(19),
      Q => m_cp_axis_tdata(19),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(1),
      Q => m_cp_axis_tdata(1),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(20),
      Q => m_cp_axis_tdata(20),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(21),
      Q => m_cp_axis_tdata(21),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(22),
      Q => m_cp_axis_tdata(22),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(23),
      Q => m_cp_axis_tdata(23),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(24),
      Q => m_cp_axis_tdata(24),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(25),
      Q => m_cp_axis_tdata(25),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(26),
      Q => m_cp_axis_tdata(26),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(27),
      Q => m_cp_axis_tdata(27),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(28),
      Q => m_cp_axis_tdata(28),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(29),
      Q => m_cp_axis_tdata(29),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(2),
      Q => m_cp_axis_tdata(2),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(30),
      Q => m_cp_axis_tdata(30),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(31),
      Q => m_cp_axis_tdata(31),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(32),
      Q => m_cp_axis_tdata(32),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(33),
      Q => m_cp_axis_tdata(33),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(34),
      Q => m_cp_axis_tdata(34),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(35),
      Q => m_cp_axis_tdata(35),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(36),
      Q => m_cp_axis_tdata(36),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(37),
      Q => m_cp_axis_tdata(37),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(38),
      Q => m_cp_axis_tdata(38),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(39),
      Q => m_cp_axis_tdata(39),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(3),
      Q => m_cp_axis_tdata(3),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(40),
      Q => m_cp_axis_tdata(40),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(41),
      Q => m_cp_axis_tdata(41),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(42),
      Q => m_cp_axis_tdata(42),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(43),
      Q => m_cp_axis_tdata(43),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(44),
      Q => m_cp_axis_tdata(44),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(45),
      Q => m_cp_axis_tdata(45),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(46),
      Q => m_cp_axis_tdata(46),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(47),
      Q => m_cp_axis_tdata(47),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(48),
      Q => m_cp_axis_tdata(48),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(49),
      Q => m_cp_axis_tdata(49),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(4),
      Q => m_cp_axis_tdata(4),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(50),
      Q => m_cp_axis_tdata(50),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(51),
      Q => m_cp_axis_tdata(51),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(52),
      Q => m_cp_axis_tdata(52),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(53),
      Q => m_cp_axis_tdata(53),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(54),
      Q => m_cp_axis_tdata(54),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(55),
      Q => m_cp_axis_tdata(55),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(56),
      Q => m_cp_axis_tdata(56),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(57),
      Q => m_cp_axis_tdata(57),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(58),
      Q => m_cp_axis_tdata(58),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(59),
      Q => m_cp_axis_tdata(59),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(5),
      Q => m_cp_axis_tdata(5),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(60),
      Q => m_cp_axis_tdata(60),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(61),
      Q => m_cp_axis_tdata(61),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(62),
      Q => m_cp_axis_tdata(62),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(63),
      Q => m_cp_axis_tdata(63),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(64),
      Q => m_cp_axis_tdata(64),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(65),
      Q => m_cp_axis_tdata(65),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(66),
      Q => m_cp_axis_tdata(66),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(67),
      Q => m_cp_axis_tdata(67),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(68),
      Q => m_cp_axis_tdata(68),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(69),
      Q => m_cp_axis_tdata(69),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(6),
      Q => m_cp_axis_tdata(6),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(70),
      Q => m_cp_axis_tdata(70),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(71),
      Q => m_cp_axis_tdata(71),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(72),
      Q => m_cp_axis_tdata(72),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(73),
      Q => m_cp_axis_tdata(73),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(74),
      Q => m_cp_axis_tdata(74),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(75),
      Q => m_cp_axis_tdata(75),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(76),
      Q => m_cp_axis_tdata(76),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(77),
      Q => m_cp_axis_tdata(77),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(78),
      Q => m_cp_axis_tdata(78),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(79),
      Q => m_cp_axis_tdata(79),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(7),
      Q => m_cp_axis_tdata(7),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(80),
      Q => m_cp_axis_tdata(80),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(81),
      Q => m_cp_axis_tdata(81),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(82),
      Q => m_cp_axis_tdata(82),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(83),
      Q => m_cp_axis_tdata(83),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(84),
      Q => m_cp_axis_tdata(84),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(85),
      Q => m_cp_axis_tdata(85),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(86),
      Q => m_cp_axis_tdata(86),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(87),
      Q => m_cp_axis_tdata(87),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(88),
      Q => m_cp_axis_tdata(88),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(89),
      Q => m_cp_axis_tdata(89),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(8),
      Q => m_cp_axis_tdata(8),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(90),
      Q => m_cp_axis_tdata(90),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(91),
      Q => m_cp_axis_tdata(91),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(92),
      Q => m_cp_axis_tdata(92),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(93),
      Q => m_cp_axis_tdata(93),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(94),
      Q => m_cp_axis_tdata(94),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(95),
      Q => m_cp_axis_tdata(95),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(96),
      Q => m_cp_axis_tdata(96),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(97),
      Q => m_cp_axis_tdata(97),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(98),
      Q => m_cp_axis_tdata(98),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(99),
      Q => m_cp_axis_tdata(99),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tdata(9),
      Q => m_cp_axis_tdata(9),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(0),
      Q => m_cp_axis_tid(0),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(1),
      Q => m_cp_axis_tid(1),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(2),
      Q => m_cp_axis_tid(2),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(3),
      Q => m_cp_axis_tid(3),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(4),
      Q => m_cp_axis_tid(4),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(5),
      Q => m_cp_axis_tid(5),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(6),
      Q => m_cp_axis_tid(6),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tid(7),
      Q => m_cp_axis_tid(7),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
m_cp_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tlast,
      Q => m_cp_axis_tlast,
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(0),
      Q => m_cp_axis_tuser(0),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tuser_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(1),
      Q => m_cp_axis_tuser(1),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tuser_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(2),
      Q => m_cp_axis_tuser(2),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tuser_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(3),
      Q => m_cp_axis_tuser(3),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tuser_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(4),
      Q => m_cp_axis_tuser(4),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tuser_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(5),
      Q => m_cp_axis_tuser(5),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tuser_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(6),
      Q => m_cp_axis_tuser(6),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\m_cp_axis_tuser_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tuser(7),
      Q => m_cp_axis_tuser(7),
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
m_cp_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => in_tvalid,
      Q => m_cp_axis_tvalid,
      R => \m_cp_axis_tdata[127]_i_1_n_0\
    );
\out_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_counter_reg(0),
      I1 => s_axis_tvalid,
      O => \out_counter[0]_i_1_n_0\
    );
\out_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => out_counter_reg(0),
      I1 => out_counter_reg(1),
      I2 => s_axis_tvalid,
      O => \p_0_in__0\(1)
    );
\out_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => out_counter_reg(0),
      I1 => out_counter_reg(1),
      I2 => out_counter_reg(2),
      I3 => s_axis_tvalid,
      O => \p_0_in__0\(2)
    );
\out_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => out_counter_reg(1),
      I1 => out_counter_reg(0),
      I2 => out_counter_reg(2),
      I3 => out_counter_reg(3),
      I4 => s_axis_tvalid,
      O => \p_0_in__0\(3)
    );
\out_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => out_counter_reg(2),
      I1 => out_counter_reg(0),
      I2 => out_counter_reg(1),
      I3 => out_counter_reg(3),
      I4 => out_counter_reg(4),
      I5 => s_axis_tvalid,
      O => \p_0_in__0\(4)
    );
\out_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \out_counter[5]_i_2_n_0\,
      I1 => out_counter_reg(5),
      I2 => s_axis_tvalid,
      O => \p_0_in__0\(5)
    );
\out_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => out_counter_reg(3),
      I1 => out_counter_reg(1),
      I2 => out_counter_reg(0),
      I3 => out_counter_reg(2),
      I4 => out_counter_reg(4),
      O => \out_counter[5]_i_2_n_0\
    );
\out_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \out_counter[9]_i_3_n_0\,
      I1 => out_counter_reg(6),
      I2 => s_axis_tvalid,
      O => \p_0_in__0\(6)
    );
\out_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5104"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => out_counter_reg(6),
      I2 => \out_counter[9]_i_3_n_0\,
      I3 => out_counter_reg(7),
      O => \p_0_in__0\(7)
    );
\out_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => out_counter_reg(6),
      I1 => \out_counter[9]_i_3_n_0\,
      I2 => out_counter_reg(7),
      I3 => out_counter_reg(8),
      I4 => s_axis_tvalid,
      O => \p_0_in__0\(8)
    );
\out_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => out_counter_reg(8),
      I1 => out_counter_reg(9),
      I2 => s_axis_tvalid,
      I3 => out_counter_reg(7),
      I4 => \out_counter[9]_i_3_n_0\,
      I5 => out_counter_reg(6),
      O => \out_counter[9]_i_1_n_0\
    );
\out_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF2000"
    )
        port map (
      I0 => out_counter_reg(7),
      I1 => \out_counter[9]_i_3_n_0\,
      I2 => out_counter_reg(6),
      I3 => out_counter_reg(8),
      I4 => out_counter_reg(9),
      I5 => s_axis_tvalid,
      O => \p_0_in__0\(9)
    );
\out_counter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => out_counter_reg(4),
      I1 => out_counter_reg(2),
      I2 => out_counter_reg(0),
      I3 => out_counter_reg(1),
      I4 => out_counter_reg(3),
      I5 => out_counter_reg(5),
      O => \out_counter[9]_i_3_n_0\
    );
\out_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \out_counter[0]_i_1_n_0\,
      Q => out_counter_reg(0)
    );
\out_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(1),
      Q => out_counter_reg(1)
    );
\out_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(2),
      Q => out_counter_reg(2)
    );
\out_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(3),
      Q => out_counter_reg(3)
    );
\out_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(4),
      Q => out_counter_reg(4)
    );
\out_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(5),
      Q => out_counter_reg(5)
    );
\out_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(6),
      Q => out_counter_reg(6)
    );
\out_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(7),
      Q => out_counter_reg(7)
    );
\out_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(8),
      Q => out_counter_reg(8)
    );
\out_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \out_counter[9]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__0\(9),
      Q => out_counter_reg(9)
    );
r_symbol_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCACFCFCFCFC"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^r_symbol_reg_0\,
      I2 => axis_aresetn,
      I3 => r_symbol_i_2_n_0,
      I4 => out_counter_reg(9),
      I5 => out_counter_reg(8),
      O => r_symbol_i_1_n_0
    );
r_symbol_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => out_counter_reg(6),
      I1 => \out_counter[9]_i_3_n_0\,
      I2 => out_counter_reg(7),
      O => r_symbol_i_2_n_0
    );
r_symbol_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => r_symbol_i_1_n_0,
      Q => \^r_symbol_reg_0\,
      R => '0'
    );
\symbol_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_symbol_reg_0\,
      I1 => \^o_symbol_number\(0),
      O => \symbol_counter[0]_i_1_n_0\
    );
\symbol_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^r_symbol_reg_0\,
      I1 => \^o_symbol_number\(0),
      I2 => \^o_symbol_number\(1),
      O => \p_0_in__1\(1)
    );
\symbol_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^o_symbol_number\(0),
      I1 => \^o_symbol_number\(1),
      I2 => \^r_symbol_reg_0\,
      I3 => \^o_symbol_number\(2),
      O => \p_0_in__1\(2)
    );
\symbol_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^o_symbol_number\(1),
      I1 => \^o_symbol_number\(0),
      I2 => \^o_symbol_number\(2),
      I3 => \^r_symbol_reg_0\,
      I4 => \^o_symbol_number\(3),
      O => \p_0_in__1\(3)
    );
\symbol_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^o_symbol_number\(2),
      I1 => \^o_symbol_number\(0),
      I2 => \^o_symbol_number\(1),
      I3 => \^o_symbol_number\(3),
      I4 => \^r_symbol_reg_0\,
      I5 => \^o_symbol_number\(4),
      O => \p_0_in__1\(4)
    );
\symbol_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \symbol_counter[5]_i_2_n_0\,
      I1 => \^r_symbol_reg_0\,
      I2 => \^o_symbol_number\(5),
      O => \p_0_in__1\(5)
    );
\symbol_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^o_symbol_number\(3),
      I1 => \^o_symbol_number\(1),
      I2 => \^o_symbol_number\(0),
      I3 => \^o_symbol_number\(2),
      I4 => \^o_symbol_number\(4),
      O => \symbol_counter[5]_i_2_n_0\
    );
\symbol_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \symbol_counter[7]_i_4_n_0\,
      I1 => \^r_symbol_reg_0\,
      I2 => \^o_symbol_number\(6),
      O => \p_0_in__1\(6)
    );
\symbol_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => in_tlast,
      I1 => \^r_symbol_reg_0\,
      O => \symbol_counter[7]_i_1_n_0\
    );
\symbol_counter[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \symbol_counter[7]_i_4_n_0\,
      I1 => \^o_symbol_number\(6),
      I2 => \^r_symbol_reg_0\,
      I3 => \^o_symbol_number\(7),
      O => \p_0_in__1\(7)
    );
\symbol_counter[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \symbol_counter[7]_i_3_n_0\
    );
\symbol_counter[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^o_symbol_number\(4),
      I1 => \^o_symbol_number\(2),
      I2 => \^o_symbol_number\(0),
      I3 => \^o_symbol_number\(1),
      I4 => \^o_symbol_number\(3),
      I5 => \^o_symbol_number\(5),
      O => \symbol_counter[7]_i_4_n_0\
    );
\symbol_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[7]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \symbol_counter[0]_i_1_n_0\,
      Q => \^o_symbol_number\(0)
    );
\symbol_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[7]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__1\(1),
      Q => \^o_symbol_number\(1)
    );
\symbol_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[7]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__1\(2),
      Q => \^o_symbol_number\(2)
    );
\symbol_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[7]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__1\(3),
      Q => \^o_symbol_number\(3)
    );
\symbol_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[7]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__1\(4),
      Q => \^o_symbol_number\(4)
    );
\symbol_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[7]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__1\(5),
      Q => \^o_symbol_number\(5)
    );
\symbol_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[7]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__1\(6),
      Q => \^o_symbol_number\(6)
    );
\symbol_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[7]_i_1_n_0\,
      CLR => \symbol_counter[7]_i_3_n_0\,
      D => \p_0_in__1\(7),
      Q => \^o_symbol_number\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cfo_correction_inst_1_cp_rm_0_0 is
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
    m_cp_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_cp_axis_tvalid : out STD_LOGIC;
    m_cp_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_cp_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_cp_axis_tlast : out STD_LOGIC;
    o_symbol : out STD_LOGIC;
    o_symbol_number : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cfo_correction_inst_1_cp_rm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cfo_correction_inst_1_cp_rm_0_0 : entity is "cfo_correction_inst_0_cp_rm_0_0,cp_rm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cfo_correction_inst_1_cp_rm_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of cfo_correction_inst_1_cp_rm_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cfo_correction_inst_1_cp_rm_0_0 : entity is "cp_rm,Vivado 2022.1";
end cfo_correction_inst_1_cp_rm_0_0;

architecture STRUCTURE of cfo_correction_inst_1_cp_rm_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis:m_cp_axis, FREQ_HZ 249997498";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of m_cp_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_cp_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_cp_axis_tlast : signal is "XIL_INTERFACENAME m_cp_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_cp_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_cp_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of m_cp_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_cp_axis TDATA";
  attribute X_INTERFACE_INFO of m_cp_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_cp_axis TID";
  attribute X_INTERFACE_INFO of m_cp_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_cp_axis TUSER";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
inst: entity work.cfo_correction_inst_1_cp_rm_0_0_cp_rm
     port map (
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tid(7 downto 0) => m_axis_tid(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tuser(7 downto 0) => m_axis_tuser(7 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      m_cp_axis_tdata(127 downto 0) => m_cp_axis_tdata(127 downto 0),
      m_cp_axis_tid(7 downto 0) => m_cp_axis_tid(7 downto 0),
      m_cp_axis_tlast => m_cp_axis_tlast,
      m_cp_axis_tuser(7 downto 0) => m_cp_axis_tuser(7 downto 0),
      m_cp_axis_tvalid => m_cp_axis_tvalid,
      o_symbol_number(7 downto 0) => o_symbol_number(7 downto 0),
      r_symbol_reg_0 => o_symbol,
      s_axis_tdata(127 downto 0) => s_axis_tdata(127 downto 0),
      s_axis_tid(7 downto 0) => s_axis_tid(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser(7 downto 0) => s_axis_tuser(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
