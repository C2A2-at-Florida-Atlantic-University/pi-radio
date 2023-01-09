-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Sep 30 09:41:16 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_axis_splitter_0_0_sim_netlist.vhdl
-- Design      : cfo_correction_axis_splitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_splitter is
  port (
    m_axis1_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis1_tvalid : out STD_LOGIC;
    m_axis1_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis1_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis1_tlast : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_splitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_splitter is
begin
\m_axis0_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(0),
      Q => m_axis1_tdata(0),
      R => '0'
    );
\m_axis0_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(100),
      Q => m_axis1_tdata(100),
      R => '0'
    );
\m_axis0_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(101),
      Q => m_axis1_tdata(101),
      R => '0'
    );
\m_axis0_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(102),
      Q => m_axis1_tdata(102),
      R => '0'
    );
\m_axis0_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(103),
      Q => m_axis1_tdata(103),
      R => '0'
    );
\m_axis0_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(104),
      Q => m_axis1_tdata(104),
      R => '0'
    );
\m_axis0_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(105),
      Q => m_axis1_tdata(105),
      R => '0'
    );
\m_axis0_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(106),
      Q => m_axis1_tdata(106),
      R => '0'
    );
\m_axis0_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(107),
      Q => m_axis1_tdata(107),
      R => '0'
    );
\m_axis0_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(108),
      Q => m_axis1_tdata(108),
      R => '0'
    );
\m_axis0_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(109),
      Q => m_axis1_tdata(109),
      R => '0'
    );
\m_axis0_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(10),
      Q => m_axis1_tdata(10),
      R => '0'
    );
\m_axis0_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(110),
      Q => m_axis1_tdata(110),
      R => '0'
    );
\m_axis0_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(111),
      Q => m_axis1_tdata(111),
      R => '0'
    );
\m_axis0_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(112),
      Q => m_axis1_tdata(112),
      R => '0'
    );
\m_axis0_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(113),
      Q => m_axis1_tdata(113),
      R => '0'
    );
\m_axis0_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(114),
      Q => m_axis1_tdata(114),
      R => '0'
    );
\m_axis0_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(115),
      Q => m_axis1_tdata(115),
      R => '0'
    );
\m_axis0_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(116),
      Q => m_axis1_tdata(116),
      R => '0'
    );
\m_axis0_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(117),
      Q => m_axis1_tdata(117),
      R => '0'
    );
\m_axis0_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(118),
      Q => m_axis1_tdata(118),
      R => '0'
    );
\m_axis0_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(119),
      Q => m_axis1_tdata(119),
      R => '0'
    );
\m_axis0_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(11),
      Q => m_axis1_tdata(11),
      R => '0'
    );
\m_axis0_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(120),
      Q => m_axis1_tdata(120),
      R => '0'
    );
\m_axis0_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(121),
      Q => m_axis1_tdata(121),
      R => '0'
    );
\m_axis0_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(122),
      Q => m_axis1_tdata(122),
      R => '0'
    );
\m_axis0_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(123),
      Q => m_axis1_tdata(123),
      R => '0'
    );
\m_axis0_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(124),
      Q => m_axis1_tdata(124),
      R => '0'
    );
\m_axis0_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(125),
      Q => m_axis1_tdata(125),
      R => '0'
    );
\m_axis0_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(126),
      Q => m_axis1_tdata(126),
      R => '0'
    );
\m_axis0_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(127),
      Q => m_axis1_tdata(127),
      R => '0'
    );
\m_axis0_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(12),
      Q => m_axis1_tdata(12),
      R => '0'
    );
\m_axis0_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(13),
      Q => m_axis1_tdata(13),
      R => '0'
    );
\m_axis0_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(14),
      Q => m_axis1_tdata(14),
      R => '0'
    );
\m_axis0_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(15),
      Q => m_axis1_tdata(15),
      R => '0'
    );
\m_axis0_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(16),
      Q => m_axis1_tdata(16),
      R => '0'
    );
\m_axis0_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(17),
      Q => m_axis1_tdata(17),
      R => '0'
    );
\m_axis0_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(18),
      Q => m_axis1_tdata(18),
      R => '0'
    );
\m_axis0_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(19),
      Q => m_axis1_tdata(19),
      R => '0'
    );
\m_axis0_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(1),
      Q => m_axis1_tdata(1),
      R => '0'
    );
\m_axis0_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(20),
      Q => m_axis1_tdata(20),
      R => '0'
    );
\m_axis0_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(21),
      Q => m_axis1_tdata(21),
      R => '0'
    );
\m_axis0_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(22),
      Q => m_axis1_tdata(22),
      R => '0'
    );
\m_axis0_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(23),
      Q => m_axis1_tdata(23),
      R => '0'
    );
\m_axis0_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(24),
      Q => m_axis1_tdata(24),
      R => '0'
    );
\m_axis0_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(25),
      Q => m_axis1_tdata(25),
      R => '0'
    );
\m_axis0_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(26),
      Q => m_axis1_tdata(26),
      R => '0'
    );
\m_axis0_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(27),
      Q => m_axis1_tdata(27),
      R => '0'
    );
\m_axis0_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(28),
      Q => m_axis1_tdata(28),
      R => '0'
    );
\m_axis0_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(29),
      Q => m_axis1_tdata(29),
      R => '0'
    );
\m_axis0_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(2),
      Q => m_axis1_tdata(2),
      R => '0'
    );
\m_axis0_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(30),
      Q => m_axis1_tdata(30),
      R => '0'
    );
\m_axis0_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(31),
      Q => m_axis1_tdata(31),
      R => '0'
    );
\m_axis0_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(32),
      Q => m_axis1_tdata(32),
      R => '0'
    );
\m_axis0_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(33),
      Q => m_axis1_tdata(33),
      R => '0'
    );
\m_axis0_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(34),
      Q => m_axis1_tdata(34),
      R => '0'
    );
\m_axis0_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(35),
      Q => m_axis1_tdata(35),
      R => '0'
    );
\m_axis0_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(36),
      Q => m_axis1_tdata(36),
      R => '0'
    );
\m_axis0_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(37),
      Q => m_axis1_tdata(37),
      R => '0'
    );
\m_axis0_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(38),
      Q => m_axis1_tdata(38),
      R => '0'
    );
\m_axis0_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(39),
      Q => m_axis1_tdata(39),
      R => '0'
    );
\m_axis0_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(3),
      Q => m_axis1_tdata(3),
      R => '0'
    );
\m_axis0_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(40),
      Q => m_axis1_tdata(40),
      R => '0'
    );
\m_axis0_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(41),
      Q => m_axis1_tdata(41),
      R => '0'
    );
\m_axis0_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(42),
      Q => m_axis1_tdata(42),
      R => '0'
    );
\m_axis0_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(43),
      Q => m_axis1_tdata(43),
      R => '0'
    );
\m_axis0_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(44),
      Q => m_axis1_tdata(44),
      R => '0'
    );
\m_axis0_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(45),
      Q => m_axis1_tdata(45),
      R => '0'
    );
\m_axis0_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(46),
      Q => m_axis1_tdata(46),
      R => '0'
    );
\m_axis0_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(47),
      Q => m_axis1_tdata(47),
      R => '0'
    );
\m_axis0_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(48),
      Q => m_axis1_tdata(48),
      R => '0'
    );
\m_axis0_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(49),
      Q => m_axis1_tdata(49),
      R => '0'
    );
\m_axis0_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(4),
      Q => m_axis1_tdata(4),
      R => '0'
    );
\m_axis0_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(50),
      Q => m_axis1_tdata(50),
      R => '0'
    );
\m_axis0_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(51),
      Q => m_axis1_tdata(51),
      R => '0'
    );
\m_axis0_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(52),
      Q => m_axis1_tdata(52),
      R => '0'
    );
\m_axis0_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(53),
      Q => m_axis1_tdata(53),
      R => '0'
    );
\m_axis0_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(54),
      Q => m_axis1_tdata(54),
      R => '0'
    );
\m_axis0_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(55),
      Q => m_axis1_tdata(55),
      R => '0'
    );
\m_axis0_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(56),
      Q => m_axis1_tdata(56),
      R => '0'
    );
\m_axis0_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(57),
      Q => m_axis1_tdata(57),
      R => '0'
    );
\m_axis0_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(58),
      Q => m_axis1_tdata(58),
      R => '0'
    );
\m_axis0_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(59),
      Q => m_axis1_tdata(59),
      R => '0'
    );
\m_axis0_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(5),
      Q => m_axis1_tdata(5),
      R => '0'
    );
\m_axis0_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(60),
      Q => m_axis1_tdata(60),
      R => '0'
    );
\m_axis0_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(61),
      Q => m_axis1_tdata(61),
      R => '0'
    );
\m_axis0_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(62),
      Q => m_axis1_tdata(62),
      R => '0'
    );
\m_axis0_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(63),
      Q => m_axis1_tdata(63),
      R => '0'
    );
\m_axis0_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(64),
      Q => m_axis1_tdata(64),
      R => '0'
    );
\m_axis0_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(65),
      Q => m_axis1_tdata(65),
      R => '0'
    );
\m_axis0_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(66),
      Q => m_axis1_tdata(66),
      R => '0'
    );
\m_axis0_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(67),
      Q => m_axis1_tdata(67),
      R => '0'
    );
\m_axis0_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(68),
      Q => m_axis1_tdata(68),
      R => '0'
    );
\m_axis0_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(69),
      Q => m_axis1_tdata(69),
      R => '0'
    );
\m_axis0_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(6),
      Q => m_axis1_tdata(6),
      R => '0'
    );
\m_axis0_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(70),
      Q => m_axis1_tdata(70),
      R => '0'
    );
\m_axis0_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(71),
      Q => m_axis1_tdata(71),
      R => '0'
    );
\m_axis0_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(72),
      Q => m_axis1_tdata(72),
      R => '0'
    );
\m_axis0_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(73),
      Q => m_axis1_tdata(73),
      R => '0'
    );
\m_axis0_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(74),
      Q => m_axis1_tdata(74),
      R => '0'
    );
\m_axis0_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(75),
      Q => m_axis1_tdata(75),
      R => '0'
    );
\m_axis0_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(76),
      Q => m_axis1_tdata(76),
      R => '0'
    );
\m_axis0_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(77),
      Q => m_axis1_tdata(77),
      R => '0'
    );
\m_axis0_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(78),
      Q => m_axis1_tdata(78),
      R => '0'
    );
\m_axis0_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(79),
      Q => m_axis1_tdata(79),
      R => '0'
    );
\m_axis0_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(7),
      Q => m_axis1_tdata(7),
      R => '0'
    );
\m_axis0_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(80),
      Q => m_axis1_tdata(80),
      R => '0'
    );
\m_axis0_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(81),
      Q => m_axis1_tdata(81),
      R => '0'
    );
\m_axis0_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(82),
      Q => m_axis1_tdata(82),
      R => '0'
    );
\m_axis0_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(83),
      Q => m_axis1_tdata(83),
      R => '0'
    );
\m_axis0_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(84),
      Q => m_axis1_tdata(84),
      R => '0'
    );
\m_axis0_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(85),
      Q => m_axis1_tdata(85),
      R => '0'
    );
\m_axis0_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(86),
      Q => m_axis1_tdata(86),
      R => '0'
    );
\m_axis0_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(87),
      Q => m_axis1_tdata(87),
      R => '0'
    );
\m_axis0_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(88),
      Q => m_axis1_tdata(88),
      R => '0'
    );
\m_axis0_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(89),
      Q => m_axis1_tdata(89),
      R => '0'
    );
\m_axis0_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(8),
      Q => m_axis1_tdata(8),
      R => '0'
    );
\m_axis0_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(90),
      Q => m_axis1_tdata(90),
      R => '0'
    );
\m_axis0_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(91),
      Q => m_axis1_tdata(91),
      R => '0'
    );
\m_axis0_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(92),
      Q => m_axis1_tdata(92),
      R => '0'
    );
\m_axis0_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(93),
      Q => m_axis1_tdata(93),
      R => '0'
    );
\m_axis0_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(94),
      Q => m_axis1_tdata(94),
      R => '0'
    );
\m_axis0_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(95),
      Q => m_axis1_tdata(95),
      R => '0'
    );
\m_axis0_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(96),
      Q => m_axis1_tdata(96),
      R => '0'
    );
\m_axis0_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(97),
      Q => m_axis1_tdata(97),
      R => '0'
    );
\m_axis0_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(98),
      Q => m_axis1_tdata(98),
      R => '0'
    );
\m_axis0_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(99),
      Q => m_axis1_tdata(99),
      R => '0'
    );
\m_axis0_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tdata(9),
      Q => m_axis1_tdata(9),
      R => '0'
    );
\m_axis0_tid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(0),
      Q => m_axis1_tid(0),
      R => '0'
    );
\m_axis0_tid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(1),
      Q => m_axis1_tid(1),
      R => '0'
    );
\m_axis0_tid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(2),
      Q => m_axis1_tid(2),
      R => '0'
    );
\m_axis0_tid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(3),
      Q => m_axis1_tid(3),
      R => '0'
    );
\m_axis0_tid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(4),
      Q => m_axis1_tid(4),
      R => '0'
    );
\m_axis0_tid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(5),
      Q => m_axis1_tid(5),
      R => '0'
    );
\m_axis0_tid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(6),
      Q => m_axis1_tid(6),
      R => '0'
    );
\m_axis0_tid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tid(7),
      Q => m_axis1_tid(7),
      R => '0'
    );
m_axis0_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tlast,
      Q => m_axis1_tlast,
      R => '0'
    );
\m_axis0_tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(0),
      Q => m_axis1_tuser(0),
      R => '0'
    );
\m_axis0_tuser_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(1),
      Q => m_axis1_tuser(1),
      R => '0'
    );
\m_axis0_tuser_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(2),
      Q => m_axis1_tuser(2),
      R => '0'
    );
\m_axis0_tuser_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(3),
      Q => m_axis1_tuser(3),
      R => '0'
    );
\m_axis0_tuser_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(4),
      Q => m_axis1_tuser(4),
      R => '0'
    );
\m_axis0_tuser_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(5),
      Q => m_axis1_tuser(5),
      R => '0'
    );
\m_axis0_tuser_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(6),
      Q => m_axis1_tuser(6),
      R => '0'
    );
\m_axis0_tuser_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tuser(7),
      Q => m_axis1_tuser(7),
      R => '0'
    );
m_axis0_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tvalid,
      Q => m_axis1_tvalid,
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
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis0_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis0_tvalid : out STD_LOGIC;
    m_axis0_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis0_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis0_tlast : out STD_LOGIC;
    m_axis1_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis1_tvalid : out STD_LOGIC;
    m_axis1_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis1_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis1_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cfo_correction_axis_splitter_0_0,axis_splitter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axis_splitter,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^m_axis1_tdata\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^m_axis1_tid\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axis1_tlast\ : STD_LOGIC;
  signal \^m_axis1_tuser\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axis1_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis0:m_axis1, FREQ_HZ 250000000";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis0_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis0 TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis0_tlast : signal is "XIL_INTERFACENAME m_axis0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN cfo_correction_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis0_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis0 TVALID";
  attribute X_INTERFACE_INFO of m_axis1_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis1 TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis1_tlast : signal is "XIL_INTERFACENAME m_axis1, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN cfo_correction_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis1_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis1 TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN cfo_correction_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis0_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis0 TDATA";
  attribute X_INTERFACE_INFO of m_axis0_tid : signal is "xilinx.com:interface:axis:1.0 m_axis0 TID";
  attribute X_INTERFACE_INFO of m_axis0_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis0 TUSER";
  attribute X_INTERFACE_INFO of m_axis1_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis1 TDATA";
  attribute X_INTERFACE_INFO of m_axis1_tid : signal is "xilinx.com:interface:axis:1.0 m_axis1 TID";
  attribute X_INTERFACE_INFO of m_axis1_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis1 TUSER";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
  m_axis0_tdata(127 downto 0) <= \^m_axis1_tdata\(127 downto 0);
  m_axis0_tid(7 downto 0) <= \^m_axis1_tid\(7 downto 0);
  m_axis0_tlast <= \^m_axis1_tlast\;
  m_axis0_tuser(7 downto 0) <= \^m_axis1_tuser\(7 downto 0);
  m_axis0_tvalid <= \^m_axis1_tvalid\;
  m_axis1_tdata(127 downto 0) <= \^m_axis1_tdata\(127 downto 0);
  m_axis1_tid(7 downto 0) <= \^m_axis1_tid\(7 downto 0);
  m_axis1_tlast <= \^m_axis1_tlast\;
  m_axis1_tuser(7 downto 0) <= \^m_axis1_tuser\(7 downto 0);
  m_axis1_tvalid <= \^m_axis1_tvalid\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_splitter
     port map (
      axis_aclk => axis_aclk,
      m_axis1_tdata(127 downto 0) => \^m_axis1_tdata\(127 downto 0),
      m_axis1_tid(7 downto 0) => \^m_axis1_tid\(7 downto 0),
      m_axis1_tlast => \^m_axis1_tlast\,
      m_axis1_tuser(7 downto 0) => \^m_axis1_tuser\(7 downto 0),
      m_axis1_tvalid => \^m_axis1_tvalid\,
      s_axis_tdata(127 downto 0) => s_axis_tdata(127 downto 0),
      s_axis_tid(7 downto 0) => s_axis_tid(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser(7 downto 0) => s_axis_tuser(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
