-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Oct 17 10:13:13 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_inst_0_sum_0_0_sim_netlist.vhdl
-- Design      : cfo_correction_inst_0_sum_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sum is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sum;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sum is
  signal L : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \accum_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \accum_data_reg_n_0_[9]\ : STD_LOGIC;
  signal m_axis_tdata0 : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[32]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[33]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[34]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[35]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[36]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[37]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[38]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[39]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[40]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[41]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[42]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[43]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[44]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[45]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[46]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[47]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[48]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[49]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[50]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[51]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[52]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[53]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[54]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[55]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[56]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[57]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[58]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[59]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[60]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[61]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[62]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[63]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal plusOp6_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \plusOp__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_10\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_11\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_12\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_13\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_14\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_15\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_8\ : STD_LOGIC;
  signal \plusOp__0_carry__0_n_9\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_10\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_11\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_12\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_13\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_14\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_15\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_8\ : STD_LOGIC;
  signal \plusOp__0_carry__1_n_9\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_10\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_11\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_12\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_13\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_14\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_15\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_8\ : STD_LOGIC;
  signal \plusOp__0_carry__2_n_9\ : STD_LOGIC;
  signal \plusOp__0_carry_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_n_0\ : STD_LOGIC;
  signal \plusOp__0_carry_n_1\ : STD_LOGIC;
  signal \plusOp__0_carry_n_10\ : STD_LOGIC;
  signal \plusOp__0_carry_n_11\ : STD_LOGIC;
  signal \plusOp__0_carry_n_12\ : STD_LOGIC;
  signal \plusOp__0_carry_n_13\ : STD_LOGIC;
  signal \plusOp__0_carry_n_14\ : STD_LOGIC;
  signal \plusOp__0_carry_n_15\ : STD_LOGIC;
  signal \plusOp__0_carry_n_2\ : STD_LOGIC;
  signal \plusOp__0_carry_n_3\ : STD_LOGIC;
  signal \plusOp__0_carry_n_4\ : STD_LOGIC;
  signal \plusOp__0_carry_n_5\ : STD_LOGIC;
  signal \plusOp__0_carry_n_6\ : STD_LOGIC;
  signal \plusOp__0_carry_n_7\ : STD_LOGIC;
  signal \plusOp__0_carry_n_8\ : STD_LOGIC;
  signal \plusOp__0_carry_n_9\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_10\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_11\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_12\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_13\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_14\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_15\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_8\ : STD_LOGIC;
  signal \plusOp__188_carry__0_n_9\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_10\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_11\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_12\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_13\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_14\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_15\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_8\ : STD_LOGIC;
  signal \plusOp__188_carry__1_n_9\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_10\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_11\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_12\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_13\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_14\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_15\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_8\ : STD_LOGIC;
  signal \plusOp__188_carry__2_n_9\ : STD_LOGIC;
  signal \plusOp__188_carry_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_n_0\ : STD_LOGIC;
  signal \plusOp__188_carry_n_1\ : STD_LOGIC;
  signal \plusOp__188_carry_n_10\ : STD_LOGIC;
  signal \plusOp__188_carry_n_11\ : STD_LOGIC;
  signal \plusOp__188_carry_n_12\ : STD_LOGIC;
  signal \plusOp__188_carry_n_13\ : STD_LOGIC;
  signal \plusOp__188_carry_n_14\ : STD_LOGIC;
  signal \plusOp__188_carry_n_15\ : STD_LOGIC;
  signal \plusOp__188_carry_n_2\ : STD_LOGIC;
  signal \plusOp__188_carry_n_3\ : STD_LOGIC;
  signal \plusOp__188_carry_n_4\ : STD_LOGIC;
  signal \plusOp__188_carry_n_5\ : STD_LOGIC;
  signal \plusOp__188_carry_n_6\ : STD_LOGIC;
  signal \plusOp__188_carry_n_7\ : STD_LOGIC;
  signal \plusOp__188_carry_n_8\ : STD_LOGIC;
  signal \plusOp__188_carry_n_9\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp__282_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__282_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__282_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp__282_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp__282_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp__282_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp__282_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp__282_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp__282_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp__282_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp__282_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp__282_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp__282_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp__282_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp__282_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp__282_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp__282_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp__282_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp__282_carry_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_n_0\ : STD_LOGIC;
  signal \plusOp__282_carry_n_1\ : STD_LOGIC;
  signal \plusOp__282_carry_n_2\ : STD_LOGIC;
  signal \plusOp__282_carry_n_3\ : STD_LOGIC;
  signal \plusOp__282_carry_n_4\ : STD_LOGIC;
  signal \plusOp__282_carry_n_5\ : STD_LOGIC;
  signal \plusOp__282_carry_n_6\ : STD_LOGIC;
  signal \plusOp__282_carry_n_7\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp__94_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__94_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__94_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp__94_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp__94_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp__94_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp__94_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp__94_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp__94_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp__94_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp__94_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp__94_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp__94_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp__94_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp__94_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp__94_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp__94_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp__94_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp__94_carry_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_n_0\ : STD_LOGIC;
  signal \plusOp__94_carry_n_1\ : STD_LOGIC;
  signal \plusOp__94_carry_n_2\ : STD_LOGIC;
  signal \plusOp__94_carry_n_3\ : STD_LOGIC;
  signal \plusOp__94_carry_n_4\ : STD_LOGIC;
  signal \plusOp__94_carry_n_5\ : STD_LOGIC;
  signal \plusOp__94_carry_n_6\ : STD_LOGIC;
  signal \plusOp__94_carry_n_7\ : STD_LOGIC;
  signal r_flip : STD_LOGIC;
  signal r_flip_i_1_n_0 : STD_LOGIC;
  signal r_tlast : STD_LOGIC;
  signal \NLW_plusOp__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_plusOp__188_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_plusOp__282_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_plusOp__94_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[32]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[33]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[34]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[35]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[36]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[37]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[38]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[39]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[40]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[41]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[42]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[43]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[44]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[45]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[46]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[47]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[48]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[49]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[50]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[51]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[52]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[53]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[54]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[55]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[56]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[57]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[58]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[59]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[60]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[61]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[62]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[63]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_1\ : label is "soft_lutpair27";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__0_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \plusOp__0_carry__0_i_1\ : label is "lutpair14";
  attribute HLUTNM of \plusOp__0_carry__0_i_10\ : label is "lutpair14";
  attribute HLUTNM of \plusOp__0_carry__0_i_11\ : label is "lutpair13";
  attribute HLUTNM of \plusOp__0_carry__0_i_12\ : label is "lutpair12";
  attribute HLUTNM of \plusOp__0_carry__0_i_13\ : label is "lutpair11";
  attribute HLUTNM of \plusOp__0_carry__0_i_14\ : label is "lutpair10";
  attribute HLUTNM of \plusOp__0_carry__0_i_15\ : label is "lutpair9";
  attribute HLUTNM of \plusOp__0_carry__0_i_16\ : label is "lutpair8";
  attribute HLUTNM of \plusOp__0_carry__0_i_2\ : label is "lutpair13";
  attribute HLUTNM of \plusOp__0_carry__0_i_3\ : label is "lutpair12";
  attribute HLUTNM of \plusOp__0_carry__0_i_4\ : label is "lutpair11";
  attribute HLUTNM of \plusOp__0_carry__0_i_5\ : label is "lutpair10";
  attribute HLUTNM of \plusOp__0_carry__0_i_6\ : label is "lutpair9";
  attribute HLUTNM of \plusOp__0_carry__0_i_7\ : label is "lutpair8";
  attribute HLUTNM of \plusOp__0_carry__0_i_8\ : label is "lutpair7";
  attribute HLUTNM of \plusOp__0_carry__0_i_9\ : label is "lutpair15";
  attribute ADDER_THRESHOLD of \plusOp__0_carry__1\ : label is 35;
  attribute HLUTNM of \plusOp__0_carry__1_i_1\ : label is "lutpair22";
  attribute HLUTNM of \plusOp__0_carry__1_i_10\ : label is "lutpair22";
  attribute HLUTNM of \plusOp__0_carry__1_i_11\ : label is "lutpair21";
  attribute HLUTNM of \plusOp__0_carry__1_i_12\ : label is "lutpair20";
  attribute HLUTNM of \plusOp__0_carry__1_i_13\ : label is "lutpair19";
  attribute HLUTNM of \plusOp__0_carry__1_i_14\ : label is "lutpair18";
  attribute HLUTNM of \plusOp__0_carry__1_i_15\ : label is "lutpair17";
  attribute HLUTNM of \plusOp__0_carry__1_i_16\ : label is "lutpair16";
  attribute HLUTNM of \plusOp__0_carry__1_i_2\ : label is "lutpair21";
  attribute HLUTNM of \plusOp__0_carry__1_i_3\ : label is "lutpair20";
  attribute HLUTNM of \plusOp__0_carry__1_i_4\ : label is "lutpair19";
  attribute HLUTNM of \plusOp__0_carry__1_i_5\ : label is "lutpair18";
  attribute HLUTNM of \plusOp__0_carry__1_i_6\ : label is "lutpair17";
  attribute HLUTNM of \plusOp__0_carry__1_i_7\ : label is "lutpair16";
  attribute HLUTNM of \plusOp__0_carry__1_i_8\ : label is "lutpair15";
  attribute HLUTNM of \plusOp__0_carry__1_i_9\ : label is "lutpair23";
  attribute ADDER_THRESHOLD of \plusOp__0_carry__2\ : label is 35;
  attribute HLUTNM of \plusOp__0_carry__2_i_1\ : label is "lutpair29";
  attribute HLUTNM of \plusOp__0_carry__2_i_10\ : label is "lutpair29";
  attribute HLUTNM of \plusOp__0_carry__2_i_11\ : label is "lutpair28";
  attribute HLUTNM of \plusOp__0_carry__2_i_12\ : label is "lutpair27";
  attribute HLUTNM of \plusOp__0_carry__2_i_13\ : label is "lutpair26";
  attribute HLUTNM of \plusOp__0_carry__2_i_14\ : label is "lutpair25";
  attribute HLUTNM of \plusOp__0_carry__2_i_15\ : label is "lutpair24";
  attribute HLUTNM of \plusOp__0_carry__2_i_2\ : label is "lutpair28";
  attribute HLUTNM of \plusOp__0_carry__2_i_3\ : label is "lutpair27";
  attribute HLUTNM of \plusOp__0_carry__2_i_4\ : label is "lutpair26";
  attribute HLUTNM of \plusOp__0_carry__2_i_5\ : label is "lutpair25";
  attribute HLUTNM of \plusOp__0_carry__2_i_6\ : label is "lutpair24";
  attribute HLUTNM of \plusOp__0_carry__2_i_7\ : label is "lutpair23";
  attribute HLUTNM of \plusOp__0_carry_i_1\ : label is "lutpair6";
  attribute HLUTNM of \plusOp__0_carry_i_10\ : label is "lutpair5";
  attribute HLUTNM of \plusOp__0_carry_i_11\ : label is "lutpair4";
  attribute HLUTNM of \plusOp__0_carry_i_12\ : label is "lutpair3";
  attribute HLUTNM of \plusOp__0_carry_i_13\ : label is "lutpair2";
  attribute HLUTNM of \plusOp__0_carry_i_14\ : label is "lutpair1";
  attribute HLUTNM of \plusOp__0_carry_i_15\ : label is "lutpair0";
  attribute HLUTNM of \plusOp__0_carry_i_2\ : label is "lutpair5";
  attribute HLUTNM of \plusOp__0_carry_i_3\ : label is "lutpair4";
  attribute HLUTNM of \plusOp__0_carry_i_4\ : label is "lutpair3";
  attribute HLUTNM of \plusOp__0_carry_i_5\ : label is "lutpair2";
  attribute HLUTNM of \plusOp__0_carry_i_6\ : label is "lutpair1";
  attribute HLUTNM of \plusOp__0_carry_i_7\ : label is "lutpair0";
  attribute HLUTNM of \plusOp__0_carry_i_8\ : label is "lutpair7";
  attribute HLUTNM of \plusOp__0_carry_i_9\ : label is "lutpair6";
  attribute ADDER_THRESHOLD of \plusOp__188_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__188_carry__0\ : label is 35;
  attribute HLUTNM of \plusOp__188_carry__0_i_1\ : label is "lutpair74";
  attribute HLUTNM of \plusOp__188_carry__0_i_10\ : label is "lutpair74";
  attribute HLUTNM of \plusOp__188_carry__0_i_11\ : label is "lutpair73";
  attribute HLUTNM of \plusOp__188_carry__0_i_12\ : label is "lutpair72";
  attribute HLUTNM of \plusOp__188_carry__0_i_13\ : label is "lutpair71";
  attribute HLUTNM of \plusOp__188_carry__0_i_14\ : label is "lutpair70";
  attribute HLUTNM of \plusOp__188_carry__0_i_15\ : label is "lutpair69";
  attribute HLUTNM of \plusOp__188_carry__0_i_16\ : label is "lutpair68";
  attribute HLUTNM of \plusOp__188_carry__0_i_2\ : label is "lutpair73";
  attribute HLUTNM of \plusOp__188_carry__0_i_3\ : label is "lutpair72";
  attribute HLUTNM of \plusOp__188_carry__0_i_4\ : label is "lutpair71";
  attribute HLUTNM of \plusOp__188_carry__0_i_5\ : label is "lutpair70";
  attribute HLUTNM of \plusOp__188_carry__0_i_6\ : label is "lutpair69";
  attribute HLUTNM of \plusOp__188_carry__0_i_7\ : label is "lutpair68";
  attribute HLUTNM of \plusOp__188_carry__0_i_8\ : label is "lutpair67";
  attribute HLUTNM of \plusOp__188_carry__0_i_9\ : label is "lutpair75";
  attribute ADDER_THRESHOLD of \plusOp__188_carry__1\ : label is 35;
  attribute HLUTNM of \plusOp__188_carry__1_i_1\ : label is "lutpair82";
  attribute HLUTNM of \plusOp__188_carry__1_i_10\ : label is "lutpair82";
  attribute HLUTNM of \plusOp__188_carry__1_i_11\ : label is "lutpair81";
  attribute HLUTNM of \plusOp__188_carry__1_i_12\ : label is "lutpair80";
  attribute HLUTNM of \plusOp__188_carry__1_i_13\ : label is "lutpair79";
  attribute HLUTNM of \plusOp__188_carry__1_i_14\ : label is "lutpair78";
  attribute HLUTNM of \plusOp__188_carry__1_i_15\ : label is "lutpair77";
  attribute HLUTNM of \plusOp__188_carry__1_i_16\ : label is "lutpair76";
  attribute HLUTNM of \plusOp__188_carry__1_i_2\ : label is "lutpair81";
  attribute HLUTNM of \plusOp__188_carry__1_i_3\ : label is "lutpair80";
  attribute HLUTNM of \plusOp__188_carry__1_i_4\ : label is "lutpair79";
  attribute HLUTNM of \plusOp__188_carry__1_i_5\ : label is "lutpair78";
  attribute HLUTNM of \plusOp__188_carry__1_i_6\ : label is "lutpair77";
  attribute HLUTNM of \plusOp__188_carry__1_i_7\ : label is "lutpair76";
  attribute HLUTNM of \plusOp__188_carry__1_i_8\ : label is "lutpair75";
  attribute HLUTNM of \plusOp__188_carry__1_i_9\ : label is "lutpair83";
  attribute ADDER_THRESHOLD of \plusOp__188_carry__2\ : label is 35;
  attribute HLUTNM of \plusOp__188_carry__2_i_1\ : label is "lutpair89";
  attribute HLUTNM of \plusOp__188_carry__2_i_10\ : label is "lutpair89";
  attribute HLUTNM of \plusOp__188_carry__2_i_11\ : label is "lutpair88";
  attribute HLUTNM of \plusOp__188_carry__2_i_12\ : label is "lutpair87";
  attribute HLUTNM of \plusOp__188_carry__2_i_13\ : label is "lutpair86";
  attribute HLUTNM of \plusOp__188_carry__2_i_14\ : label is "lutpair85";
  attribute HLUTNM of \plusOp__188_carry__2_i_15\ : label is "lutpair84";
  attribute HLUTNM of \plusOp__188_carry__2_i_2\ : label is "lutpair88";
  attribute HLUTNM of \plusOp__188_carry__2_i_3\ : label is "lutpair87";
  attribute HLUTNM of \plusOp__188_carry__2_i_4\ : label is "lutpair86";
  attribute HLUTNM of \plusOp__188_carry__2_i_5\ : label is "lutpair85";
  attribute HLUTNM of \plusOp__188_carry__2_i_6\ : label is "lutpair84";
  attribute HLUTNM of \plusOp__188_carry__2_i_7\ : label is "lutpair83";
  attribute HLUTNM of \plusOp__188_carry_i_1\ : label is "lutpair66";
  attribute HLUTNM of \plusOp__188_carry_i_10\ : label is "lutpair65";
  attribute HLUTNM of \plusOp__188_carry_i_11\ : label is "lutpair64";
  attribute HLUTNM of \plusOp__188_carry_i_12\ : label is "lutpair63";
  attribute HLUTNM of \plusOp__188_carry_i_13\ : label is "lutpair62";
  attribute HLUTNM of \plusOp__188_carry_i_14\ : label is "lutpair61";
  attribute HLUTNM of \plusOp__188_carry_i_15\ : label is "lutpair60";
  attribute HLUTNM of \plusOp__188_carry_i_2\ : label is "lutpair65";
  attribute HLUTNM of \plusOp__188_carry_i_3\ : label is "lutpair64";
  attribute HLUTNM of \plusOp__188_carry_i_4\ : label is "lutpair63";
  attribute HLUTNM of \plusOp__188_carry_i_5\ : label is "lutpair62";
  attribute HLUTNM of \plusOp__188_carry_i_6\ : label is "lutpair61";
  attribute HLUTNM of \plusOp__188_carry_i_7\ : label is "lutpair60";
  attribute HLUTNM of \plusOp__188_carry_i_8\ : label is "lutpair67";
  attribute HLUTNM of \plusOp__188_carry_i_9\ : label is "lutpair66";
  attribute ADDER_THRESHOLD of \plusOp__282_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__282_carry__0\ : label is 35;
  attribute HLUTNM of \plusOp__282_carry__0_i_1\ : label is "lutpair104";
  attribute HLUTNM of \plusOp__282_carry__0_i_10\ : label is "lutpair104";
  attribute HLUTNM of \plusOp__282_carry__0_i_11\ : label is "lutpair103";
  attribute HLUTNM of \plusOp__282_carry__0_i_12\ : label is "lutpair102";
  attribute HLUTNM of \plusOp__282_carry__0_i_13\ : label is "lutpair101";
  attribute HLUTNM of \plusOp__282_carry__0_i_14\ : label is "lutpair100";
  attribute HLUTNM of \plusOp__282_carry__0_i_15\ : label is "lutpair99";
  attribute HLUTNM of \plusOp__282_carry__0_i_16\ : label is "lutpair98";
  attribute HLUTNM of \plusOp__282_carry__0_i_2\ : label is "lutpair103";
  attribute HLUTNM of \plusOp__282_carry__0_i_3\ : label is "lutpair102";
  attribute HLUTNM of \plusOp__282_carry__0_i_4\ : label is "lutpair101";
  attribute HLUTNM of \plusOp__282_carry__0_i_5\ : label is "lutpair100";
  attribute HLUTNM of \plusOp__282_carry__0_i_6\ : label is "lutpair99";
  attribute HLUTNM of \plusOp__282_carry__0_i_7\ : label is "lutpair98";
  attribute HLUTNM of \plusOp__282_carry__0_i_8\ : label is "lutpair97";
  attribute HLUTNM of \plusOp__282_carry__0_i_9\ : label is "lutpair105";
  attribute ADDER_THRESHOLD of \plusOp__282_carry__1\ : label is 35;
  attribute HLUTNM of \plusOp__282_carry__1_i_1\ : label is "lutpair112";
  attribute HLUTNM of \plusOp__282_carry__1_i_10\ : label is "lutpair112";
  attribute HLUTNM of \plusOp__282_carry__1_i_11\ : label is "lutpair111";
  attribute HLUTNM of \plusOp__282_carry__1_i_12\ : label is "lutpair110";
  attribute HLUTNM of \plusOp__282_carry__1_i_13\ : label is "lutpair109";
  attribute HLUTNM of \plusOp__282_carry__1_i_14\ : label is "lutpair108";
  attribute HLUTNM of \plusOp__282_carry__1_i_15\ : label is "lutpair107";
  attribute HLUTNM of \plusOp__282_carry__1_i_16\ : label is "lutpair106";
  attribute HLUTNM of \plusOp__282_carry__1_i_2\ : label is "lutpair111";
  attribute HLUTNM of \plusOp__282_carry__1_i_3\ : label is "lutpair110";
  attribute HLUTNM of \plusOp__282_carry__1_i_4\ : label is "lutpair109";
  attribute HLUTNM of \plusOp__282_carry__1_i_5\ : label is "lutpair108";
  attribute HLUTNM of \plusOp__282_carry__1_i_6\ : label is "lutpair107";
  attribute HLUTNM of \plusOp__282_carry__1_i_7\ : label is "lutpair106";
  attribute HLUTNM of \plusOp__282_carry__1_i_8\ : label is "lutpair105";
  attribute HLUTNM of \plusOp__282_carry__1_i_9\ : label is "lutpair113";
  attribute ADDER_THRESHOLD of \plusOp__282_carry__2\ : label is 35;
  attribute HLUTNM of \plusOp__282_carry__2_i_1\ : label is "lutpair119";
  attribute HLUTNM of \plusOp__282_carry__2_i_10\ : label is "lutpair119";
  attribute HLUTNM of \plusOp__282_carry__2_i_11\ : label is "lutpair118";
  attribute HLUTNM of \plusOp__282_carry__2_i_12\ : label is "lutpair117";
  attribute HLUTNM of \plusOp__282_carry__2_i_13\ : label is "lutpair116";
  attribute HLUTNM of \plusOp__282_carry__2_i_14\ : label is "lutpair115";
  attribute HLUTNM of \plusOp__282_carry__2_i_15\ : label is "lutpair114";
  attribute HLUTNM of \plusOp__282_carry__2_i_2\ : label is "lutpair118";
  attribute HLUTNM of \plusOp__282_carry__2_i_3\ : label is "lutpair117";
  attribute HLUTNM of \plusOp__282_carry__2_i_4\ : label is "lutpair116";
  attribute HLUTNM of \plusOp__282_carry__2_i_5\ : label is "lutpair115";
  attribute HLUTNM of \plusOp__282_carry__2_i_6\ : label is "lutpair114";
  attribute HLUTNM of \plusOp__282_carry__2_i_7\ : label is "lutpair113";
  attribute HLUTNM of \plusOp__282_carry_i_1\ : label is "lutpair96";
  attribute HLUTNM of \plusOp__282_carry_i_10\ : label is "lutpair95";
  attribute HLUTNM of \plusOp__282_carry_i_11\ : label is "lutpair94";
  attribute HLUTNM of \plusOp__282_carry_i_12\ : label is "lutpair93";
  attribute HLUTNM of \plusOp__282_carry_i_13\ : label is "lutpair92";
  attribute HLUTNM of \plusOp__282_carry_i_14\ : label is "lutpair91";
  attribute HLUTNM of \plusOp__282_carry_i_15\ : label is "lutpair90";
  attribute HLUTNM of \plusOp__282_carry_i_2\ : label is "lutpair95";
  attribute HLUTNM of \plusOp__282_carry_i_3\ : label is "lutpair94";
  attribute HLUTNM of \plusOp__282_carry_i_4\ : label is "lutpair93";
  attribute HLUTNM of \plusOp__282_carry_i_5\ : label is "lutpair92";
  attribute HLUTNM of \plusOp__282_carry_i_6\ : label is "lutpair91";
  attribute HLUTNM of \plusOp__282_carry_i_7\ : label is "lutpair90";
  attribute HLUTNM of \plusOp__282_carry_i_8\ : label is "lutpair97";
  attribute HLUTNM of \plusOp__282_carry_i_9\ : label is "lutpair96";
  attribute ADDER_THRESHOLD of \plusOp__94_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__94_carry__0\ : label is 35;
  attribute HLUTNM of \plusOp__94_carry__0_i_1\ : label is "lutpair44";
  attribute HLUTNM of \plusOp__94_carry__0_i_10\ : label is "lutpair44";
  attribute HLUTNM of \plusOp__94_carry__0_i_11\ : label is "lutpair43";
  attribute HLUTNM of \plusOp__94_carry__0_i_12\ : label is "lutpair42";
  attribute HLUTNM of \plusOp__94_carry__0_i_13\ : label is "lutpair41";
  attribute HLUTNM of \plusOp__94_carry__0_i_14\ : label is "lutpair40";
  attribute HLUTNM of \plusOp__94_carry__0_i_15\ : label is "lutpair39";
  attribute HLUTNM of \plusOp__94_carry__0_i_16\ : label is "lutpair38";
  attribute HLUTNM of \plusOp__94_carry__0_i_2\ : label is "lutpair43";
  attribute HLUTNM of \plusOp__94_carry__0_i_3\ : label is "lutpair42";
  attribute HLUTNM of \plusOp__94_carry__0_i_4\ : label is "lutpair41";
  attribute HLUTNM of \plusOp__94_carry__0_i_5\ : label is "lutpair40";
  attribute HLUTNM of \plusOp__94_carry__0_i_6\ : label is "lutpair39";
  attribute HLUTNM of \plusOp__94_carry__0_i_7\ : label is "lutpair38";
  attribute HLUTNM of \plusOp__94_carry__0_i_8\ : label is "lutpair37";
  attribute HLUTNM of \plusOp__94_carry__0_i_9\ : label is "lutpair45";
  attribute ADDER_THRESHOLD of \plusOp__94_carry__1\ : label is 35;
  attribute HLUTNM of \plusOp__94_carry__1_i_1\ : label is "lutpair52";
  attribute HLUTNM of \plusOp__94_carry__1_i_10\ : label is "lutpair52";
  attribute HLUTNM of \plusOp__94_carry__1_i_11\ : label is "lutpair51";
  attribute HLUTNM of \plusOp__94_carry__1_i_12\ : label is "lutpair50";
  attribute HLUTNM of \plusOp__94_carry__1_i_13\ : label is "lutpair49";
  attribute HLUTNM of \plusOp__94_carry__1_i_14\ : label is "lutpair48";
  attribute HLUTNM of \plusOp__94_carry__1_i_15\ : label is "lutpair47";
  attribute HLUTNM of \plusOp__94_carry__1_i_16\ : label is "lutpair46";
  attribute HLUTNM of \plusOp__94_carry__1_i_2\ : label is "lutpair51";
  attribute HLUTNM of \plusOp__94_carry__1_i_3\ : label is "lutpair50";
  attribute HLUTNM of \plusOp__94_carry__1_i_4\ : label is "lutpair49";
  attribute HLUTNM of \plusOp__94_carry__1_i_5\ : label is "lutpair48";
  attribute HLUTNM of \plusOp__94_carry__1_i_6\ : label is "lutpair47";
  attribute HLUTNM of \plusOp__94_carry__1_i_7\ : label is "lutpair46";
  attribute HLUTNM of \plusOp__94_carry__1_i_8\ : label is "lutpair45";
  attribute HLUTNM of \plusOp__94_carry__1_i_9\ : label is "lutpair53";
  attribute ADDER_THRESHOLD of \plusOp__94_carry__2\ : label is 35;
  attribute HLUTNM of \plusOp__94_carry__2_i_1\ : label is "lutpair59";
  attribute HLUTNM of \plusOp__94_carry__2_i_10\ : label is "lutpair59";
  attribute HLUTNM of \plusOp__94_carry__2_i_11\ : label is "lutpair58";
  attribute HLUTNM of \plusOp__94_carry__2_i_12\ : label is "lutpair57";
  attribute HLUTNM of \plusOp__94_carry__2_i_13\ : label is "lutpair56";
  attribute HLUTNM of \plusOp__94_carry__2_i_14\ : label is "lutpair55";
  attribute HLUTNM of \plusOp__94_carry__2_i_15\ : label is "lutpair54";
  attribute HLUTNM of \plusOp__94_carry__2_i_2\ : label is "lutpair58";
  attribute HLUTNM of \plusOp__94_carry__2_i_3\ : label is "lutpair57";
  attribute HLUTNM of \plusOp__94_carry__2_i_4\ : label is "lutpair56";
  attribute HLUTNM of \plusOp__94_carry__2_i_5\ : label is "lutpair55";
  attribute HLUTNM of \plusOp__94_carry__2_i_6\ : label is "lutpair54";
  attribute HLUTNM of \plusOp__94_carry__2_i_7\ : label is "lutpair53";
  attribute HLUTNM of \plusOp__94_carry_i_1\ : label is "lutpair36";
  attribute HLUTNM of \plusOp__94_carry_i_10\ : label is "lutpair35";
  attribute HLUTNM of \plusOp__94_carry_i_11\ : label is "lutpair34";
  attribute HLUTNM of \plusOp__94_carry_i_12\ : label is "lutpair33";
  attribute HLUTNM of \plusOp__94_carry_i_13\ : label is "lutpair32";
  attribute HLUTNM of \plusOp__94_carry_i_14\ : label is "lutpair31";
  attribute HLUTNM of \plusOp__94_carry_i_15\ : label is "lutpair30";
  attribute HLUTNM of \plusOp__94_carry_i_2\ : label is "lutpair35";
  attribute HLUTNM of \plusOp__94_carry_i_3\ : label is "lutpair34";
  attribute HLUTNM of \plusOp__94_carry_i_4\ : label is "lutpair33";
  attribute HLUTNM of \plusOp__94_carry_i_5\ : label is "lutpair32";
  attribute HLUTNM of \plusOp__94_carry_i_6\ : label is "lutpair31";
  attribute HLUTNM of \plusOp__94_carry_i_7\ : label is "lutpair30";
  attribute HLUTNM of \plusOp__94_carry_i_8\ : label is "lutpair37";
  attribute HLUTNM of \plusOp__94_carry_i_9\ : label is "lutpair36";
begin
\accum_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(0),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[0]\,
      O => p_1_in(0)
    );
\accum_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(10),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[10]\,
      O => p_1_in(10)
    );
\accum_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(11),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[11]\,
      O => p_1_in(11)
    );
\accum_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(12),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[12]\,
      O => p_1_in(12)
    );
\accum_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(13),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[13]\,
      O => p_1_in(13)
    );
\accum_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(14),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[14]\,
      O => p_1_in(14)
    );
\accum_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(15),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[15]\,
      O => p_1_in(15)
    );
\accum_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(16),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[16]\,
      O => p_1_in(16)
    );
\accum_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(17),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[17]\,
      O => p_1_in(17)
    );
\accum_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(18),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[18]\,
      O => p_1_in(18)
    );
\accum_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(19),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[19]\,
      O => p_1_in(19)
    );
\accum_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(1),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[1]\,
      O => p_1_in(1)
    );
\accum_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(20),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[20]\,
      O => p_1_in(20)
    );
\accum_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(21),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[21]\,
      O => p_1_in(21)
    );
\accum_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(22),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[22]\,
      O => p_1_in(22)
    );
\accum_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(23),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[23]\,
      O => p_1_in(23)
    );
\accum_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(24),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[24]\,
      O => p_1_in(24)
    );
\accum_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(25),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[25]\,
      O => p_1_in(25)
    );
\accum_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(26),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[26]\,
      O => p_1_in(26)
    );
\accum_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(27),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[27]\,
      O => p_1_in(27)
    );
\accum_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(28),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[28]\,
      O => p_1_in(28)
    );
\accum_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(29),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[29]\,
      O => p_1_in(29)
    );
\accum_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(2),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[2]\,
      O => p_1_in(2)
    );
\accum_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(30),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[30]\,
      O => p_1_in(30)
    );
\accum_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(31),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[31]\,
      O => p_1_in(31)
    );
\accum_data[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(0),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(32),
      O => p_1_in(32)
    );
\accum_data[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(1),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(33),
      O => p_1_in(33)
    );
\accum_data[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(2),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(34),
      O => p_1_in(34)
    );
\accum_data[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(3),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(35),
      O => p_1_in(35)
    );
\accum_data[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(4),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(36),
      O => p_1_in(36)
    );
\accum_data[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(5),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(37),
      O => p_1_in(37)
    );
\accum_data[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(6),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(38),
      O => p_1_in(38)
    );
\accum_data[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(7),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(39),
      O => p_1_in(39)
    );
\accum_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(3),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[3]\,
      O => p_1_in(3)
    );
\accum_data[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(8),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(40),
      O => p_1_in(40)
    );
\accum_data[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(9),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(41),
      O => p_1_in(41)
    );
\accum_data[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(10),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(42),
      O => p_1_in(42)
    );
\accum_data[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(11),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(43),
      O => p_1_in(43)
    );
\accum_data[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(12),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(44),
      O => p_1_in(44)
    );
\accum_data[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(13),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(45),
      O => p_1_in(45)
    );
\accum_data[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(14),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(46),
      O => p_1_in(46)
    );
\accum_data[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(15),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(47),
      O => p_1_in(47)
    );
\accum_data[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(16),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(48),
      O => p_1_in(48)
    );
\accum_data[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(17),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(49),
      O => p_1_in(49)
    );
\accum_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(4),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[4]\,
      O => p_1_in(4)
    );
\accum_data[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(18),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(50),
      O => p_1_in(50)
    );
\accum_data[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(19),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(51),
      O => p_1_in(51)
    );
\accum_data[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(20),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(52),
      O => p_1_in(52)
    );
\accum_data[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(21),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(53),
      O => p_1_in(53)
    );
\accum_data[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(22),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(54),
      O => p_1_in(54)
    );
\accum_data[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(23),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(55),
      O => p_1_in(55)
    );
\accum_data[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(24),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(56),
      O => p_1_in(56)
    );
\accum_data[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(25),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(57),
      O => p_1_in(57)
    );
\accum_data[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(26),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(58),
      O => p_1_in(58)
    );
\accum_data[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(27),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(59),
      O => p_1_in(59)
    );
\accum_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(5),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[5]\,
      O => p_1_in(5)
    );
\accum_data[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(28),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(60),
      O => p_1_in(60)
    );
\accum_data[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(29),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(61),
      O => p_1_in(61)
    );
\accum_data[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(30),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(62),
      O => p_1_in(62)
    );
\accum_data[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp(31),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => L(63),
      O => p_1_in(63)
    );
\accum_data[63]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => p_0_in
    );
\accum_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(6),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[6]\,
      O => p_1_in(6)
    );
\accum_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(7),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[7]\,
      O => p_1_in(7)
    );
\accum_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(8),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[8]\,
      O => p_1_in(8)
    );
\accum_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8A8"
    )
        port map (
      I0 => plusOp6_out(9),
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => r_flip,
      I4 => \accum_data_reg_n_0_[9]\,
      O => p_1_in(9)
    );
\accum_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(0),
      Q => \accum_data_reg_n_0_[0]\
    );
\accum_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(10),
      Q => \accum_data_reg_n_0_[10]\
    );
\accum_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(11),
      Q => \accum_data_reg_n_0_[11]\
    );
\accum_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(12),
      Q => \accum_data_reg_n_0_[12]\
    );
\accum_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(13),
      Q => \accum_data_reg_n_0_[13]\
    );
\accum_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(14),
      Q => \accum_data_reg_n_0_[14]\
    );
\accum_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(15),
      Q => \accum_data_reg_n_0_[15]\
    );
\accum_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(16),
      Q => \accum_data_reg_n_0_[16]\
    );
\accum_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(17),
      Q => \accum_data_reg_n_0_[17]\
    );
\accum_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(18),
      Q => \accum_data_reg_n_0_[18]\
    );
\accum_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(19),
      Q => \accum_data_reg_n_0_[19]\
    );
\accum_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(1),
      Q => \accum_data_reg_n_0_[1]\
    );
\accum_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(20),
      Q => \accum_data_reg_n_0_[20]\
    );
\accum_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(21),
      Q => \accum_data_reg_n_0_[21]\
    );
\accum_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(22),
      Q => \accum_data_reg_n_0_[22]\
    );
\accum_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(23),
      Q => \accum_data_reg_n_0_[23]\
    );
\accum_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(24),
      Q => \accum_data_reg_n_0_[24]\
    );
\accum_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(25),
      Q => \accum_data_reg_n_0_[25]\
    );
\accum_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(26),
      Q => \accum_data_reg_n_0_[26]\
    );
\accum_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(27),
      Q => \accum_data_reg_n_0_[27]\
    );
\accum_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(28),
      Q => \accum_data_reg_n_0_[28]\
    );
\accum_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(29),
      Q => \accum_data_reg_n_0_[29]\
    );
\accum_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(2),
      Q => \accum_data_reg_n_0_[2]\
    );
\accum_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(30),
      Q => \accum_data_reg_n_0_[30]\
    );
\accum_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(31),
      Q => \accum_data_reg_n_0_[31]\
    );
\accum_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(32),
      Q => L(32)
    );
\accum_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(33),
      Q => L(33)
    );
\accum_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(34),
      Q => L(34)
    );
\accum_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(35),
      Q => L(35)
    );
\accum_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(36),
      Q => L(36)
    );
\accum_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(37),
      Q => L(37)
    );
\accum_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(38),
      Q => L(38)
    );
\accum_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(39),
      Q => L(39)
    );
\accum_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(3),
      Q => \accum_data_reg_n_0_[3]\
    );
\accum_data_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(40),
      Q => L(40)
    );
\accum_data_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(41),
      Q => L(41)
    );
\accum_data_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(42),
      Q => L(42)
    );
\accum_data_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(43),
      Q => L(43)
    );
\accum_data_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(44),
      Q => L(44)
    );
\accum_data_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(45),
      Q => L(45)
    );
\accum_data_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(46),
      Q => L(46)
    );
\accum_data_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(47),
      Q => L(47)
    );
\accum_data_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(48),
      Q => L(48)
    );
\accum_data_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(49),
      Q => L(49)
    );
\accum_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(4),
      Q => \accum_data_reg_n_0_[4]\
    );
\accum_data_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(50),
      Q => L(50)
    );
\accum_data_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(51),
      Q => L(51)
    );
\accum_data_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(52),
      Q => L(52)
    );
\accum_data_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(53),
      Q => L(53)
    );
\accum_data_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(54),
      Q => L(54)
    );
\accum_data_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(55),
      Q => L(55)
    );
\accum_data_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(56),
      Q => L(56)
    );
\accum_data_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(57),
      Q => L(57)
    );
\accum_data_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(58),
      Q => L(58)
    );
\accum_data_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(59),
      Q => L(59)
    );
\accum_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(5),
      Q => \accum_data_reg_n_0_[5]\
    );
\accum_data_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(60),
      Q => L(60)
    );
\accum_data_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(61),
      Q => L(61)
    );
\accum_data_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(62),
      Q => L(62)
    );
\accum_data_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(63),
      Q => L(63)
    );
\accum_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(6),
      Q => \accum_data_reg_n_0_[6]\
    );
\accum_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(7),
      Q => \accum_data_reg_n_0_[7]\
    );
\accum_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(8),
      Q => \accum_data_reg_n_0_[8]\
    );
\accum_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in(9),
      Q => \accum_data_reg_n_0_[9]\
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[0]\,
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[10]\,
      O => \m_axis_tdata[10]_i_1_n_0\
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[11]\,
      O => \m_axis_tdata[11]_i_1_n_0\
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[12]\,
      O => \m_axis_tdata[12]_i_1_n_0\
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[13]\,
      O => \m_axis_tdata[13]_i_1_n_0\
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[14]\,
      O => \m_axis_tdata[14]_i_1_n_0\
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[15]\,
      O => \m_axis_tdata[15]_i_1_n_0\
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[16]\,
      O => \m_axis_tdata[16]_i_1_n_0\
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[17]\,
      O => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[18]\,
      O => \m_axis_tdata[18]_i_1_n_0\
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[19]\,
      O => \m_axis_tdata[19]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[1]\,
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[20]\,
      O => \m_axis_tdata[20]_i_1_n_0\
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[21]\,
      O => \m_axis_tdata[21]_i_1_n_0\
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[22]\,
      O => \m_axis_tdata[22]_i_1_n_0\
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[23]\,
      O => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[24]\,
      O => \m_axis_tdata[24]_i_1_n_0\
    );
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[25]\,
      O => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[26]\,
      O => \m_axis_tdata[26]_i_1_n_0\
    );
\m_axis_tdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[27]\,
      O => \m_axis_tdata[27]_i_1_n_0\
    );
\m_axis_tdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[28]\,
      O => \m_axis_tdata[28]_i_1_n_0\
    );
\m_axis_tdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[29]\,
      O => \m_axis_tdata[29]_i_1_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[2]\,
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[30]\,
      O => \m_axis_tdata[30]_i_1_n_0\
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[31]\,
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(32),
      O => \m_axis_tdata[32]_i_1_n_0\
    );
\m_axis_tdata[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(33),
      O => \m_axis_tdata[33]_i_1_n_0\
    );
\m_axis_tdata[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(34),
      O => \m_axis_tdata[34]_i_1_n_0\
    );
\m_axis_tdata[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(35),
      O => \m_axis_tdata[35]_i_1_n_0\
    );
\m_axis_tdata[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(36),
      O => \m_axis_tdata[36]_i_1_n_0\
    );
\m_axis_tdata[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(37),
      O => \m_axis_tdata[37]_i_1_n_0\
    );
\m_axis_tdata[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(38),
      O => \m_axis_tdata[38]_i_1_n_0\
    );
\m_axis_tdata[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(39),
      O => \m_axis_tdata[39]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[3]\,
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(40),
      O => \m_axis_tdata[40]_i_1_n_0\
    );
\m_axis_tdata[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(41),
      O => \m_axis_tdata[41]_i_1_n_0\
    );
\m_axis_tdata[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(42),
      O => \m_axis_tdata[42]_i_1_n_0\
    );
\m_axis_tdata[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(43),
      O => \m_axis_tdata[43]_i_1_n_0\
    );
\m_axis_tdata[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(44),
      O => \m_axis_tdata[44]_i_1_n_0\
    );
\m_axis_tdata[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(45),
      O => \m_axis_tdata[45]_i_1_n_0\
    );
\m_axis_tdata[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(46),
      O => \m_axis_tdata[46]_i_1_n_0\
    );
\m_axis_tdata[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(47),
      O => \m_axis_tdata[47]_i_1_n_0\
    );
\m_axis_tdata[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(48),
      O => \m_axis_tdata[48]_i_1_n_0\
    );
\m_axis_tdata[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(49),
      O => \m_axis_tdata[49]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[4]\,
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(50),
      O => \m_axis_tdata[50]_i_1_n_0\
    );
\m_axis_tdata[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(51),
      O => \m_axis_tdata[51]_i_1_n_0\
    );
\m_axis_tdata[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(52),
      O => \m_axis_tdata[52]_i_1_n_0\
    );
\m_axis_tdata[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(53),
      O => \m_axis_tdata[53]_i_1_n_0\
    );
\m_axis_tdata[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(54),
      O => \m_axis_tdata[54]_i_1_n_0\
    );
\m_axis_tdata[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(55),
      O => \m_axis_tdata[55]_i_1_n_0\
    );
\m_axis_tdata[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(56),
      O => \m_axis_tdata[56]_i_1_n_0\
    );
\m_axis_tdata[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(57),
      O => \m_axis_tdata[57]_i_1_n_0\
    );
\m_axis_tdata[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(58),
      O => \m_axis_tdata[58]_i_1_n_0\
    );
\m_axis_tdata[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(59),
      O => \m_axis_tdata[59]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[5]\,
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(60),
      O => \m_axis_tdata[60]_i_1_n_0\
    );
\m_axis_tdata[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(61),
      O => \m_axis_tdata[61]_i_1_n_0\
    );
\m_axis_tdata[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(62),
      O => \m_axis_tdata[62]_i_1_n_0\
    );
\m_axis_tdata[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => L(63),
      O => \m_axis_tdata[63]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[6]\,
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[7]\,
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[8]\,
      O => \m_axis_tdata[8]_i_1_n_0\
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => r_tlast,
      I1 => s_axis_tvalid,
      I2 => r_flip,
      I3 => \accum_data_reg_n_0_[9]\,
      O => \m_axis_tdata[9]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[10]_i_1_n_0\,
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[11]_i_1_n_0\,
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[12]_i_1_n_0\,
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[13]_i_1_n_0\,
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[14]_i_1_n_0\,
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[15]_i_1_n_0\,
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[16]_i_1_n_0\,
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[17]_i_1_n_0\,
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[18]_i_1_n_0\,
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[19]_i_1_n_0\,
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[20]_i_1_n_0\,
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[21]_i_1_n_0\,
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[22]_i_1_n_0\,
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[23]_i_1_n_0\,
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[24]_i_1_n_0\,
      Q => m_axis_tdata(24),
      R => '0'
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[25]_i_1_n_0\,
      Q => m_axis_tdata(25),
      R => '0'
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[26]_i_1_n_0\,
      Q => m_axis_tdata(26),
      R => '0'
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[27]_i_1_n_0\,
      Q => m_axis_tdata(27),
      R => '0'
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[28]_i_1_n_0\,
      Q => m_axis_tdata(28),
      R => '0'
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[29]_i_1_n_0\,
      Q => m_axis_tdata(29),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[30]_i_1_n_0\,
      Q => m_axis_tdata(30),
      R => '0'
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[31]_i_1_n_0\,
      Q => m_axis_tdata(31),
      R => '0'
    );
\m_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[32]_i_1_n_0\,
      Q => m_axis_tdata(32),
      R => '0'
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[33]_i_1_n_0\,
      Q => m_axis_tdata(33),
      R => '0'
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[34]_i_1_n_0\,
      Q => m_axis_tdata(34),
      R => '0'
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[35]_i_1_n_0\,
      Q => m_axis_tdata(35),
      R => '0'
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[36]_i_1_n_0\,
      Q => m_axis_tdata(36),
      R => '0'
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[37]_i_1_n_0\,
      Q => m_axis_tdata(37),
      R => '0'
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[38]_i_1_n_0\,
      Q => m_axis_tdata(38),
      R => '0'
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[39]_i_1_n_0\,
      Q => m_axis_tdata(39),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[40]_i_1_n_0\,
      Q => m_axis_tdata(40),
      R => '0'
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[41]_i_1_n_0\,
      Q => m_axis_tdata(41),
      R => '0'
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[42]_i_1_n_0\,
      Q => m_axis_tdata(42),
      R => '0'
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[43]_i_1_n_0\,
      Q => m_axis_tdata(43),
      R => '0'
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[44]_i_1_n_0\,
      Q => m_axis_tdata(44),
      R => '0'
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[45]_i_1_n_0\,
      Q => m_axis_tdata(45),
      R => '0'
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[46]_i_1_n_0\,
      Q => m_axis_tdata(46),
      R => '0'
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[47]_i_1_n_0\,
      Q => m_axis_tdata(47),
      R => '0'
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[48]_i_1_n_0\,
      Q => m_axis_tdata(48),
      R => '0'
    );
\m_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[49]_i_1_n_0\,
      Q => m_axis_tdata(49),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[50]_i_1_n_0\,
      Q => m_axis_tdata(50),
      R => '0'
    );
\m_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[51]_i_1_n_0\,
      Q => m_axis_tdata(51),
      R => '0'
    );
\m_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[52]_i_1_n_0\,
      Q => m_axis_tdata(52),
      R => '0'
    );
\m_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[53]_i_1_n_0\,
      Q => m_axis_tdata(53),
      R => '0'
    );
\m_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[54]_i_1_n_0\,
      Q => m_axis_tdata(54),
      R => '0'
    );
\m_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[55]_i_1_n_0\,
      Q => m_axis_tdata(55),
      R => '0'
    );
\m_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[56]_i_1_n_0\,
      Q => m_axis_tdata(56),
      R => '0'
    );
\m_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[57]_i_1_n_0\,
      Q => m_axis_tdata(57),
      R => '0'
    );
\m_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[58]_i_1_n_0\,
      Q => m_axis_tdata(58),
      R => '0'
    );
\m_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[59]_i_1_n_0\,
      Q => m_axis_tdata(59),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[60]_i_1_n_0\,
      Q => m_axis_tdata(60),
      R => '0'
    );
\m_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[61]_i_1_n_0\,
      Q => m_axis_tdata(61),
      R => '0'
    );
\m_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[62]_i_1_n_0\,
      Q => m_axis_tdata(62),
      R => '0'
    );
\m_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[63]_i_1_n_0\,
      Q => m_axis_tdata(63),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[7]_i_1_n_0\,
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[8]_i_1_n_0\,
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => \m_axis_tdata[9]_i_1_n_0\,
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axis_aresetn,
      I1 => r_tlast,
      I2 => s_axis_tvalid,
      O => m_axis_tdata0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => r_flip,
      Q => m_axis_tvalid,
      R => m_axis_tdata0
    );
\plusOp__0_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \plusOp__0_carry_n_0\,
      CO(6) => \plusOp__0_carry_n_1\,
      CO(5) => \plusOp__0_carry_n_2\,
      CO(4) => \plusOp__0_carry_n_3\,
      CO(3) => \plusOp__0_carry_n_4\,
      CO(2) => \plusOp__0_carry_n_5\,
      CO(1) => \plusOp__0_carry_n_6\,
      CO(0) => \plusOp__0_carry_n_7\,
      DI(7) => \plusOp__0_carry_i_1_n_0\,
      DI(6) => \plusOp__0_carry_i_2_n_0\,
      DI(5) => \plusOp__0_carry_i_3_n_0\,
      DI(4) => \plusOp__0_carry_i_4_n_0\,
      DI(3) => \plusOp__0_carry_i_5_n_0\,
      DI(2) => \plusOp__0_carry_i_6_n_0\,
      DI(1) => \plusOp__0_carry_i_7_n_0\,
      DI(0) => '0',
      O(7) => \plusOp__0_carry_n_8\,
      O(6) => \plusOp__0_carry_n_9\,
      O(5) => \plusOp__0_carry_n_10\,
      O(4) => \plusOp__0_carry_n_11\,
      O(3) => \plusOp__0_carry_n_12\,
      O(2) => \plusOp__0_carry_n_13\,
      O(1) => \plusOp__0_carry_n_14\,
      O(0) => \plusOp__0_carry_n_15\,
      S(7) => \plusOp__0_carry_i_8_n_0\,
      S(6) => \plusOp__0_carry_i_9_n_0\,
      S(5) => \plusOp__0_carry_i_10_n_0\,
      S(4) => \plusOp__0_carry_i_11_n_0\,
      S(3) => \plusOp__0_carry_i_12_n_0\,
      S(2) => \plusOp__0_carry_i_13_n_0\,
      S(1) => \plusOp__0_carry_i_14_n_0\,
      S(0) => \plusOp__0_carry_i_15_n_0\
    );
\plusOp__0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__0_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp__0_carry__0_n_0\,
      CO(6) => \plusOp__0_carry__0_n_1\,
      CO(5) => \plusOp__0_carry__0_n_2\,
      CO(4) => \plusOp__0_carry__0_n_3\,
      CO(3) => \plusOp__0_carry__0_n_4\,
      CO(2) => \plusOp__0_carry__0_n_5\,
      CO(1) => \plusOp__0_carry__0_n_6\,
      CO(0) => \plusOp__0_carry__0_n_7\,
      DI(7) => \plusOp__0_carry__0_i_1_n_0\,
      DI(6) => \plusOp__0_carry__0_i_2_n_0\,
      DI(5) => \plusOp__0_carry__0_i_3_n_0\,
      DI(4) => \plusOp__0_carry__0_i_4_n_0\,
      DI(3) => \plusOp__0_carry__0_i_5_n_0\,
      DI(2) => \plusOp__0_carry__0_i_6_n_0\,
      DI(1) => \plusOp__0_carry__0_i_7_n_0\,
      DI(0) => \plusOp__0_carry__0_i_8_n_0\,
      O(7) => \plusOp__0_carry__0_n_8\,
      O(6) => \plusOp__0_carry__0_n_9\,
      O(5) => \plusOp__0_carry__0_n_10\,
      O(4) => \plusOp__0_carry__0_n_11\,
      O(3) => \plusOp__0_carry__0_n_12\,
      O(2) => \plusOp__0_carry__0_n_13\,
      O(1) => \plusOp__0_carry__0_n_14\,
      O(0) => \plusOp__0_carry__0_n_15\,
      S(7) => \plusOp__0_carry__0_i_9_n_0\,
      S(6) => \plusOp__0_carry__0_i_10_n_0\,
      S(5) => \plusOp__0_carry__0_i_11_n_0\,
      S(4) => \plusOp__0_carry__0_i_12_n_0\,
      S(3) => \plusOp__0_carry__0_i_13_n_0\,
      S(2) => \plusOp__0_carry__0_i_14_n_0\,
      S(1) => \plusOp__0_carry__0_i_15_n_0\,
      S(0) => \plusOp__0_carry__0_i_16_n_0\
    );
\plusOp__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(142),
      I1 => s_axis_tdata(206),
      I2 => \accum_data_reg_n_0_[14]\,
      O => \plusOp__0_carry__0_i_1_n_0\
    );
\plusOp__0_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(142),
      I1 => s_axis_tdata(206),
      I2 => \accum_data_reg_n_0_[14]\,
      I3 => \plusOp__0_carry__0_i_2_n_0\,
      O => \plusOp__0_carry__0_i_10_n_0\
    );
\plusOp__0_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(141),
      I1 => s_axis_tdata(205),
      I2 => \accum_data_reg_n_0_[13]\,
      I3 => \plusOp__0_carry__0_i_3_n_0\,
      O => \plusOp__0_carry__0_i_11_n_0\
    );
\plusOp__0_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(140),
      I1 => s_axis_tdata(204),
      I2 => \accum_data_reg_n_0_[12]\,
      I3 => \plusOp__0_carry__0_i_4_n_0\,
      O => \plusOp__0_carry__0_i_12_n_0\
    );
\plusOp__0_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(139),
      I1 => s_axis_tdata(203),
      I2 => \accum_data_reg_n_0_[11]\,
      I3 => \plusOp__0_carry__0_i_5_n_0\,
      O => \plusOp__0_carry__0_i_13_n_0\
    );
\plusOp__0_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(138),
      I1 => s_axis_tdata(202),
      I2 => \accum_data_reg_n_0_[10]\,
      I3 => \plusOp__0_carry__0_i_6_n_0\,
      O => \plusOp__0_carry__0_i_14_n_0\
    );
\plusOp__0_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(137),
      I1 => s_axis_tdata(201),
      I2 => \accum_data_reg_n_0_[9]\,
      I3 => \plusOp__0_carry__0_i_7_n_0\,
      O => \plusOp__0_carry__0_i_15_n_0\
    );
\plusOp__0_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(136),
      I1 => s_axis_tdata(200),
      I2 => \accum_data_reg_n_0_[8]\,
      I3 => \plusOp__0_carry__0_i_8_n_0\,
      O => \plusOp__0_carry__0_i_16_n_0\
    );
\plusOp__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(141),
      I1 => s_axis_tdata(205),
      I2 => \accum_data_reg_n_0_[13]\,
      O => \plusOp__0_carry__0_i_2_n_0\
    );
\plusOp__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(140),
      I1 => s_axis_tdata(204),
      I2 => \accum_data_reg_n_0_[12]\,
      O => \plusOp__0_carry__0_i_3_n_0\
    );
\plusOp__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(139),
      I1 => s_axis_tdata(203),
      I2 => \accum_data_reg_n_0_[11]\,
      O => \plusOp__0_carry__0_i_4_n_0\
    );
\plusOp__0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(138),
      I1 => s_axis_tdata(202),
      I2 => \accum_data_reg_n_0_[10]\,
      O => \plusOp__0_carry__0_i_5_n_0\
    );
\plusOp__0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(137),
      I1 => s_axis_tdata(201),
      I2 => \accum_data_reg_n_0_[9]\,
      O => \plusOp__0_carry__0_i_6_n_0\
    );
\plusOp__0_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(136),
      I1 => s_axis_tdata(200),
      I2 => \accum_data_reg_n_0_[8]\,
      O => \plusOp__0_carry__0_i_7_n_0\
    );
\plusOp__0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(135),
      I1 => s_axis_tdata(199),
      I2 => \accum_data_reg_n_0_[7]\,
      O => \plusOp__0_carry__0_i_8_n_0\
    );
\plusOp__0_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(143),
      I1 => s_axis_tdata(207),
      I2 => \accum_data_reg_n_0_[15]\,
      I3 => \plusOp__0_carry__0_i_1_n_0\,
      O => \plusOp__0_carry__0_i_9_n_0\
    );
\plusOp__0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp__0_carry__1_n_0\,
      CO(6) => \plusOp__0_carry__1_n_1\,
      CO(5) => \plusOp__0_carry__1_n_2\,
      CO(4) => \plusOp__0_carry__1_n_3\,
      CO(3) => \plusOp__0_carry__1_n_4\,
      CO(2) => \plusOp__0_carry__1_n_5\,
      CO(1) => \plusOp__0_carry__1_n_6\,
      CO(0) => \plusOp__0_carry__1_n_7\,
      DI(7) => \plusOp__0_carry__1_i_1_n_0\,
      DI(6) => \plusOp__0_carry__1_i_2_n_0\,
      DI(5) => \plusOp__0_carry__1_i_3_n_0\,
      DI(4) => \plusOp__0_carry__1_i_4_n_0\,
      DI(3) => \plusOp__0_carry__1_i_5_n_0\,
      DI(2) => \plusOp__0_carry__1_i_6_n_0\,
      DI(1) => \plusOp__0_carry__1_i_7_n_0\,
      DI(0) => \plusOp__0_carry__1_i_8_n_0\,
      O(7) => \plusOp__0_carry__1_n_8\,
      O(6) => \plusOp__0_carry__1_n_9\,
      O(5) => \plusOp__0_carry__1_n_10\,
      O(4) => \plusOp__0_carry__1_n_11\,
      O(3) => \plusOp__0_carry__1_n_12\,
      O(2) => \plusOp__0_carry__1_n_13\,
      O(1) => \plusOp__0_carry__1_n_14\,
      O(0) => \plusOp__0_carry__1_n_15\,
      S(7) => \plusOp__0_carry__1_i_9_n_0\,
      S(6) => \plusOp__0_carry__1_i_10_n_0\,
      S(5) => \plusOp__0_carry__1_i_11_n_0\,
      S(4) => \plusOp__0_carry__1_i_12_n_0\,
      S(3) => \plusOp__0_carry__1_i_13_n_0\,
      S(2) => \plusOp__0_carry__1_i_14_n_0\,
      S(1) => \plusOp__0_carry__1_i_15_n_0\,
      S(0) => \plusOp__0_carry__1_i_16_n_0\
    );
\plusOp__0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(150),
      I1 => s_axis_tdata(214),
      I2 => \accum_data_reg_n_0_[22]\,
      O => \plusOp__0_carry__1_i_1_n_0\
    );
\plusOp__0_carry__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(150),
      I1 => s_axis_tdata(214),
      I2 => \accum_data_reg_n_0_[22]\,
      I3 => \plusOp__0_carry__1_i_2_n_0\,
      O => \plusOp__0_carry__1_i_10_n_0\
    );
\plusOp__0_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(149),
      I1 => s_axis_tdata(213),
      I2 => \accum_data_reg_n_0_[21]\,
      I3 => \plusOp__0_carry__1_i_3_n_0\,
      O => \plusOp__0_carry__1_i_11_n_0\
    );
\plusOp__0_carry__1_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(148),
      I1 => s_axis_tdata(212),
      I2 => \accum_data_reg_n_0_[20]\,
      I3 => \plusOp__0_carry__1_i_4_n_0\,
      O => \plusOp__0_carry__1_i_12_n_0\
    );
\plusOp__0_carry__1_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(147),
      I1 => s_axis_tdata(211),
      I2 => \accum_data_reg_n_0_[19]\,
      I3 => \plusOp__0_carry__1_i_5_n_0\,
      O => \plusOp__0_carry__1_i_13_n_0\
    );
\plusOp__0_carry__1_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(146),
      I1 => s_axis_tdata(210),
      I2 => \accum_data_reg_n_0_[18]\,
      I3 => \plusOp__0_carry__1_i_6_n_0\,
      O => \plusOp__0_carry__1_i_14_n_0\
    );
\plusOp__0_carry__1_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(145),
      I1 => s_axis_tdata(209),
      I2 => \accum_data_reg_n_0_[17]\,
      I3 => \plusOp__0_carry__1_i_7_n_0\,
      O => \plusOp__0_carry__1_i_15_n_0\
    );
\plusOp__0_carry__1_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(144),
      I1 => s_axis_tdata(208),
      I2 => \accum_data_reg_n_0_[16]\,
      I3 => \plusOp__0_carry__1_i_8_n_0\,
      O => \plusOp__0_carry__1_i_16_n_0\
    );
\plusOp__0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(149),
      I1 => s_axis_tdata(213),
      I2 => \accum_data_reg_n_0_[21]\,
      O => \plusOp__0_carry__1_i_2_n_0\
    );
\plusOp__0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(148),
      I1 => s_axis_tdata(212),
      I2 => \accum_data_reg_n_0_[20]\,
      O => \plusOp__0_carry__1_i_3_n_0\
    );
\plusOp__0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(147),
      I1 => s_axis_tdata(211),
      I2 => \accum_data_reg_n_0_[19]\,
      O => \plusOp__0_carry__1_i_4_n_0\
    );
\plusOp__0_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(146),
      I1 => s_axis_tdata(210),
      I2 => \accum_data_reg_n_0_[18]\,
      O => \plusOp__0_carry__1_i_5_n_0\
    );
\plusOp__0_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(145),
      I1 => s_axis_tdata(209),
      I2 => \accum_data_reg_n_0_[17]\,
      O => \plusOp__0_carry__1_i_6_n_0\
    );
\plusOp__0_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(144),
      I1 => s_axis_tdata(208),
      I2 => \accum_data_reg_n_0_[16]\,
      O => \plusOp__0_carry__1_i_7_n_0\
    );
\plusOp__0_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(143),
      I1 => s_axis_tdata(207),
      I2 => \accum_data_reg_n_0_[15]\,
      O => \plusOp__0_carry__1_i_8_n_0\
    );
\plusOp__0_carry__1_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(151),
      I1 => s_axis_tdata(215),
      I2 => \accum_data_reg_n_0_[23]\,
      I3 => \plusOp__0_carry__1_i_1_n_0\,
      O => \plusOp__0_carry__1_i_9_n_0\
    );
\plusOp__0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_plusOp__0_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \plusOp__0_carry__2_n_1\,
      CO(5) => \plusOp__0_carry__2_n_2\,
      CO(4) => \plusOp__0_carry__2_n_3\,
      CO(3) => \plusOp__0_carry__2_n_4\,
      CO(2) => \plusOp__0_carry__2_n_5\,
      CO(1) => \plusOp__0_carry__2_n_6\,
      CO(0) => \plusOp__0_carry__2_n_7\,
      DI(7) => '0',
      DI(6) => \plusOp__0_carry__2_i_1_n_0\,
      DI(5) => \plusOp__0_carry__2_i_2_n_0\,
      DI(4) => \plusOp__0_carry__2_i_3_n_0\,
      DI(3) => \plusOp__0_carry__2_i_4_n_0\,
      DI(2) => \plusOp__0_carry__2_i_5_n_0\,
      DI(1) => \plusOp__0_carry__2_i_6_n_0\,
      DI(0) => \plusOp__0_carry__2_i_7_n_0\,
      O(7) => \plusOp__0_carry__2_n_8\,
      O(6) => \plusOp__0_carry__2_n_9\,
      O(5) => \plusOp__0_carry__2_n_10\,
      O(4) => \plusOp__0_carry__2_n_11\,
      O(3) => \plusOp__0_carry__2_n_12\,
      O(2) => \plusOp__0_carry__2_n_13\,
      O(1) => \plusOp__0_carry__2_n_14\,
      O(0) => \plusOp__0_carry__2_n_15\,
      S(7) => \plusOp__0_carry__2_i_8_n_0\,
      S(6) => \plusOp__0_carry__2_i_9_n_0\,
      S(5) => \plusOp__0_carry__2_i_10_n_0\,
      S(4) => \plusOp__0_carry__2_i_11_n_0\,
      S(3) => \plusOp__0_carry__2_i_12_n_0\,
      S(2) => \plusOp__0_carry__2_i_13_n_0\,
      S(1) => \plusOp__0_carry__2_i_14_n_0\,
      S(0) => \plusOp__0_carry__2_i_15_n_0\
    );
\plusOp__0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(157),
      I1 => s_axis_tdata(221),
      I2 => \accum_data_reg_n_0_[29]\,
      O => \plusOp__0_carry__2_i_1_n_0\
    );
\plusOp__0_carry__2_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(157),
      I1 => s_axis_tdata(221),
      I2 => \accum_data_reg_n_0_[29]\,
      I3 => \plusOp__0_carry__2_i_2_n_0\,
      O => \plusOp__0_carry__2_i_10_n_0\
    );
\plusOp__0_carry__2_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(156),
      I1 => s_axis_tdata(220),
      I2 => \accum_data_reg_n_0_[28]\,
      I3 => \plusOp__0_carry__2_i_3_n_0\,
      O => \plusOp__0_carry__2_i_11_n_0\
    );
\plusOp__0_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(155),
      I1 => s_axis_tdata(219),
      I2 => \accum_data_reg_n_0_[27]\,
      I3 => \plusOp__0_carry__2_i_4_n_0\,
      O => \plusOp__0_carry__2_i_12_n_0\
    );
\plusOp__0_carry__2_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(154),
      I1 => s_axis_tdata(218),
      I2 => \accum_data_reg_n_0_[26]\,
      I3 => \plusOp__0_carry__2_i_5_n_0\,
      O => \plusOp__0_carry__2_i_13_n_0\
    );
\plusOp__0_carry__2_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(153),
      I1 => s_axis_tdata(217),
      I2 => \accum_data_reg_n_0_[25]\,
      I3 => \plusOp__0_carry__2_i_6_n_0\,
      O => \plusOp__0_carry__2_i_14_n_0\
    );
\plusOp__0_carry__2_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(152),
      I1 => s_axis_tdata(216),
      I2 => \accum_data_reg_n_0_[24]\,
      I3 => \plusOp__0_carry__2_i_7_n_0\,
      O => \plusOp__0_carry__2_i_15_n_0\
    );
\plusOp__0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(156),
      I1 => s_axis_tdata(220),
      I2 => \accum_data_reg_n_0_[28]\,
      O => \plusOp__0_carry__2_i_2_n_0\
    );
\plusOp__0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(155),
      I1 => s_axis_tdata(219),
      I2 => \accum_data_reg_n_0_[27]\,
      O => \plusOp__0_carry__2_i_3_n_0\
    );
\plusOp__0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(154),
      I1 => s_axis_tdata(218),
      I2 => \accum_data_reg_n_0_[26]\,
      O => \plusOp__0_carry__2_i_4_n_0\
    );
\plusOp__0_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(153),
      I1 => s_axis_tdata(217),
      I2 => \accum_data_reg_n_0_[25]\,
      O => \plusOp__0_carry__2_i_5_n_0\
    );
\plusOp__0_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(152),
      I1 => s_axis_tdata(216),
      I2 => \accum_data_reg_n_0_[24]\,
      O => \plusOp__0_carry__2_i_6_n_0\
    );
\plusOp__0_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(151),
      I1 => s_axis_tdata(215),
      I2 => \accum_data_reg_n_0_[23]\,
      O => \plusOp__0_carry__2_i_7_n_0\
    );
\plusOp__0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \accum_data_reg_n_0_[30]\,
      I1 => s_axis_tdata(222),
      I2 => s_axis_tdata(158),
      I3 => s_axis_tdata(223),
      I4 => s_axis_tdata(159),
      I5 => \accum_data_reg_n_0_[31]\,
      O => \plusOp__0_carry__2_i_8_n_0\
    );
\plusOp__0_carry__2_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__2_i_1_n_0\,
      I1 => s_axis_tdata(222),
      I2 => s_axis_tdata(158),
      I3 => \accum_data_reg_n_0_[30]\,
      O => \plusOp__0_carry__2_i_9_n_0\
    );
\plusOp__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(134),
      I1 => s_axis_tdata(198),
      I2 => \accum_data_reg_n_0_[6]\,
      O => \plusOp__0_carry_i_1_n_0\
    );
\plusOp__0_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(133),
      I1 => s_axis_tdata(197),
      I2 => \accum_data_reg_n_0_[5]\,
      I3 => \plusOp__0_carry_i_3_n_0\,
      O => \plusOp__0_carry_i_10_n_0\
    );
\plusOp__0_carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(132),
      I1 => s_axis_tdata(196),
      I2 => \accum_data_reg_n_0_[4]\,
      I3 => \plusOp__0_carry_i_4_n_0\,
      O => \plusOp__0_carry_i_11_n_0\
    );
\plusOp__0_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(131),
      I1 => s_axis_tdata(195),
      I2 => \accum_data_reg_n_0_[3]\,
      I3 => \plusOp__0_carry_i_5_n_0\,
      O => \plusOp__0_carry_i_12_n_0\
    );
\plusOp__0_carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(130),
      I1 => s_axis_tdata(194),
      I2 => \accum_data_reg_n_0_[2]\,
      I3 => \plusOp__0_carry_i_6_n_0\,
      O => \plusOp__0_carry_i_13_n_0\
    );
\plusOp__0_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(129),
      I1 => s_axis_tdata(193),
      I2 => \accum_data_reg_n_0_[1]\,
      I3 => \plusOp__0_carry_i_7_n_0\,
      O => \plusOp__0_carry_i_14_n_0\
    );
\plusOp__0_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(128),
      I1 => s_axis_tdata(192),
      I2 => \accum_data_reg_n_0_[0]\,
      O => \plusOp__0_carry_i_15_n_0\
    );
\plusOp__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(133),
      I1 => s_axis_tdata(197),
      I2 => \accum_data_reg_n_0_[5]\,
      O => \plusOp__0_carry_i_2_n_0\
    );
\plusOp__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(132),
      I1 => s_axis_tdata(196),
      I2 => \accum_data_reg_n_0_[4]\,
      O => \plusOp__0_carry_i_3_n_0\
    );
\plusOp__0_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(131),
      I1 => s_axis_tdata(195),
      I2 => \accum_data_reg_n_0_[3]\,
      O => \plusOp__0_carry_i_4_n_0\
    );
\plusOp__0_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(130),
      I1 => s_axis_tdata(194),
      I2 => \accum_data_reg_n_0_[2]\,
      O => \plusOp__0_carry_i_5_n_0\
    );
\plusOp__0_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(129),
      I1 => s_axis_tdata(193),
      I2 => \accum_data_reg_n_0_[1]\,
      O => \plusOp__0_carry_i_6_n_0\
    );
\plusOp__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(128),
      I1 => s_axis_tdata(192),
      I2 => \accum_data_reg_n_0_[0]\,
      O => \plusOp__0_carry_i_7_n_0\
    );
\plusOp__0_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(135),
      I1 => s_axis_tdata(199),
      I2 => \accum_data_reg_n_0_[7]\,
      I3 => \plusOp__0_carry_i_1_n_0\,
      O => \plusOp__0_carry_i_8_n_0\
    );
\plusOp__0_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(134),
      I1 => s_axis_tdata(198),
      I2 => \accum_data_reg_n_0_[6]\,
      I3 => \plusOp__0_carry_i_2_n_0\,
      O => \plusOp__0_carry_i_9_n_0\
    );
\plusOp__188_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \plusOp__188_carry_n_0\,
      CO(6) => \plusOp__188_carry_n_1\,
      CO(5) => \plusOp__188_carry_n_2\,
      CO(4) => \plusOp__188_carry_n_3\,
      CO(3) => \plusOp__188_carry_n_4\,
      CO(2) => \plusOp__188_carry_n_5\,
      CO(1) => \plusOp__188_carry_n_6\,
      CO(0) => \plusOp__188_carry_n_7\,
      DI(7) => \plusOp__188_carry_i_1_n_0\,
      DI(6) => \plusOp__188_carry_i_2_n_0\,
      DI(5) => \plusOp__188_carry_i_3_n_0\,
      DI(4) => \plusOp__188_carry_i_4_n_0\,
      DI(3) => \plusOp__188_carry_i_5_n_0\,
      DI(2) => \plusOp__188_carry_i_6_n_0\,
      DI(1) => \plusOp__188_carry_i_7_n_0\,
      DI(0) => '0',
      O(7) => \plusOp__188_carry_n_8\,
      O(6) => \plusOp__188_carry_n_9\,
      O(5) => \plusOp__188_carry_n_10\,
      O(4) => \plusOp__188_carry_n_11\,
      O(3) => \plusOp__188_carry_n_12\,
      O(2) => \plusOp__188_carry_n_13\,
      O(1) => \plusOp__188_carry_n_14\,
      O(0) => \plusOp__188_carry_n_15\,
      S(7) => \plusOp__188_carry_i_8_n_0\,
      S(6) => \plusOp__188_carry_i_9_n_0\,
      S(5) => \plusOp__188_carry_i_10_n_0\,
      S(4) => \plusOp__188_carry_i_11_n_0\,
      S(3) => \plusOp__188_carry_i_12_n_0\,
      S(2) => \plusOp__188_carry_i_13_n_0\,
      S(1) => \plusOp__188_carry_i_14_n_0\,
      S(0) => \plusOp__188_carry_i_15_n_0\
    );
\plusOp__188_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__188_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp__188_carry__0_n_0\,
      CO(6) => \plusOp__188_carry__0_n_1\,
      CO(5) => \plusOp__188_carry__0_n_2\,
      CO(4) => \plusOp__188_carry__0_n_3\,
      CO(3) => \plusOp__188_carry__0_n_4\,
      CO(2) => \plusOp__188_carry__0_n_5\,
      CO(1) => \plusOp__188_carry__0_n_6\,
      CO(0) => \plusOp__188_carry__0_n_7\,
      DI(7) => \plusOp__188_carry__0_i_1_n_0\,
      DI(6) => \plusOp__188_carry__0_i_2_n_0\,
      DI(5) => \plusOp__188_carry__0_i_3_n_0\,
      DI(4) => \plusOp__188_carry__0_i_4_n_0\,
      DI(3) => \plusOp__188_carry__0_i_5_n_0\,
      DI(2) => \plusOp__188_carry__0_i_6_n_0\,
      DI(1) => \plusOp__188_carry__0_i_7_n_0\,
      DI(0) => \plusOp__188_carry__0_i_8_n_0\,
      O(7) => \plusOp__188_carry__0_n_8\,
      O(6) => \plusOp__188_carry__0_n_9\,
      O(5) => \plusOp__188_carry__0_n_10\,
      O(4) => \plusOp__188_carry__0_n_11\,
      O(3) => \plusOp__188_carry__0_n_12\,
      O(2) => \plusOp__188_carry__0_n_13\,
      O(1) => \plusOp__188_carry__0_n_14\,
      O(0) => \plusOp__188_carry__0_n_15\,
      S(7) => \plusOp__188_carry__0_i_9_n_0\,
      S(6) => \plusOp__188_carry__0_i_10_n_0\,
      S(5) => \plusOp__188_carry__0_i_11_n_0\,
      S(4) => \plusOp__188_carry__0_i_12_n_0\,
      S(3) => \plusOp__188_carry__0_i_13_n_0\,
      S(2) => \plusOp__188_carry__0_i_14_n_0\,
      S(1) => \plusOp__188_carry__0_i_15_n_0\,
      S(0) => \plusOp__188_carry__0_i_16_n_0\
    );
\plusOp__188_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(174),
      I1 => s_axis_tdata(238),
      I2 => L(46),
      O => \plusOp__188_carry__0_i_1_n_0\
    );
\plusOp__188_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(174),
      I1 => s_axis_tdata(238),
      I2 => L(46),
      I3 => \plusOp__188_carry__0_i_2_n_0\,
      O => \plusOp__188_carry__0_i_10_n_0\
    );
\plusOp__188_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(173),
      I1 => s_axis_tdata(237),
      I2 => L(45),
      I3 => \plusOp__188_carry__0_i_3_n_0\,
      O => \plusOp__188_carry__0_i_11_n_0\
    );
\plusOp__188_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(172),
      I1 => s_axis_tdata(236),
      I2 => L(44),
      I3 => \plusOp__188_carry__0_i_4_n_0\,
      O => \plusOp__188_carry__0_i_12_n_0\
    );
\plusOp__188_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(171),
      I1 => s_axis_tdata(235),
      I2 => L(43),
      I3 => \plusOp__188_carry__0_i_5_n_0\,
      O => \plusOp__188_carry__0_i_13_n_0\
    );
\plusOp__188_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(170),
      I1 => s_axis_tdata(234),
      I2 => L(42),
      I3 => \plusOp__188_carry__0_i_6_n_0\,
      O => \plusOp__188_carry__0_i_14_n_0\
    );
\plusOp__188_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(169),
      I1 => s_axis_tdata(233),
      I2 => L(41),
      I3 => \plusOp__188_carry__0_i_7_n_0\,
      O => \plusOp__188_carry__0_i_15_n_0\
    );
\plusOp__188_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(168),
      I1 => s_axis_tdata(232),
      I2 => L(40),
      I3 => \plusOp__188_carry__0_i_8_n_0\,
      O => \plusOp__188_carry__0_i_16_n_0\
    );
\plusOp__188_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(173),
      I1 => s_axis_tdata(237),
      I2 => L(45),
      O => \plusOp__188_carry__0_i_2_n_0\
    );
\plusOp__188_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(172),
      I1 => s_axis_tdata(236),
      I2 => L(44),
      O => \plusOp__188_carry__0_i_3_n_0\
    );
\plusOp__188_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(171),
      I1 => s_axis_tdata(235),
      I2 => L(43),
      O => \plusOp__188_carry__0_i_4_n_0\
    );
\plusOp__188_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(170),
      I1 => s_axis_tdata(234),
      I2 => L(42),
      O => \plusOp__188_carry__0_i_5_n_0\
    );
\plusOp__188_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(169),
      I1 => s_axis_tdata(233),
      I2 => L(41),
      O => \plusOp__188_carry__0_i_6_n_0\
    );
\plusOp__188_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(168),
      I1 => s_axis_tdata(232),
      I2 => L(40),
      O => \plusOp__188_carry__0_i_7_n_0\
    );
\plusOp__188_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(167),
      I1 => s_axis_tdata(231),
      I2 => L(39),
      O => \plusOp__188_carry__0_i_8_n_0\
    );
\plusOp__188_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(175),
      I1 => s_axis_tdata(239),
      I2 => L(47),
      I3 => \plusOp__188_carry__0_i_1_n_0\,
      O => \plusOp__188_carry__0_i_9_n_0\
    );
\plusOp__188_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__188_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp__188_carry__1_n_0\,
      CO(6) => \plusOp__188_carry__1_n_1\,
      CO(5) => \plusOp__188_carry__1_n_2\,
      CO(4) => \plusOp__188_carry__1_n_3\,
      CO(3) => \plusOp__188_carry__1_n_4\,
      CO(2) => \plusOp__188_carry__1_n_5\,
      CO(1) => \plusOp__188_carry__1_n_6\,
      CO(0) => \plusOp__188_carry__1_n_7\,
      DI(7) => \plusOp__188_carry__1_i_1_n_0\,
      DI(6) => \plusOp__188_carry__1_i_2_n_0\,
      DI(5) => \plusOp__188_carry__1_i_3_n_0\,
      DI(4) => \plusOp__188_carry__1_i_4_n_0\,
      DI(3) => \plusOp__188_carry__1_i_5_n_0\,
      DI(2) => \plusOp__188_carry__1_i_6_n_0\,
      DI(1) => \plusOp__188_carry__1_i_7_n_0\,
      DI(0) => \plusOp__188_carry__1_i_8_n_0\,
      O(7) => \plusOp__188_carry__1_n_8\,
      O(6) => \plusOp__188_carry__1_n_9\,
      O(5) => \plusOp__188_carry__1_n_10\,
      O(4) => \plusOp__188_carry__1_n_11\,
      O(3) => \plusOp__188_carry__1_n_12\,
      O(2) => \plusOp__188_carry__1_n_13\,
      O(1) => \plusOp__188_carry__1_n_14\,
      O(0) => \plusOp__188_carry__1_n_15\,
      S(7) => \plusOp__188_carry__1_i_9_n_0\,
      S(6) => \plusOp__188_carry__1_i_10_n_0\,
      S(5) => \plusOp__188_carry__1_i_11_n_0\,
      S(4) => \plusOp__188_carry__1_i_12_n_0\,
      S(3) => \plusOp__188_carry__1_i_13_n_0\,
      S(2) => \plusOp__188_carry__1_i_14_n_0\,
      S(1) => \plusOp__188_carry__1_i_15_n_0\,
      S(0) => \plusOp__188_carry__1_i_16_n_0\
    );
\plusOp__188_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(182),
      I1 => s_axis_tdata(246),
      I2 => L(54),
      O => \plusOp__188_carry__1_i_1_n_0\
    );
\plusOp__188_carry__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(182),
      I1 => s_axis_tdata(246),
      I2 => L(54),
      I3 => \plusOp__188_carry__1_i_2_n_0\,
      O => \plusOp__188_carry__1_i_10_n_0\
    );
\plusOp__188_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(181),
      I1 => s_axis_tdata(245),
      I2 => L(53),
      I3 => \plusOp__188_carry__1_i_3_n_0\,
      O => \plusOp__188_carry__1_i_11_n_0\
    );
\plusOp__188_carry__1_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(180),
      I1 => s_axis_tdata(244),
      I2 => L(52),
      I3 => \plusOp__188_carry__1_i_4_n_0\,
      O => \plusOp__188_carry__1_i_12_n_0\
    );
\plusOp__188_carry__1_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(179),
      I1 => s_axis_tdata(243),
      I2 => L(51),
      I3 => \plusOp__188_carry__1_i_5_n_0\,
      O => \plusOp__188_carry__1_i_13_n_0\
    );
\plusOp__188_carry__1_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(178),
      I1 => s_axis_tdata(242),
      I2 => L(50),
      I3 => \plusOp__188_carry__1_i_6_n_0\,
      O => \plusOp__188_carry__1_i_14_n_0\
    );
\plusOp__188_carry__1_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(177),
      I1 => s_axis_tdata(241),
      I2 => L(49),
      I3 => \plusOp__188_carry__1_i_7_n_0\,
      O => \plusOp__188_carry__1_i_15_n_0\
    );
\plusOp__188_carry__1_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(176),
      I1 => s_axis_tdata(240),
      I2 => L(48),
      I3 => \plusOp__188_carry__1_i_8_n_0\,
      O => \plusOp__188_carry__1_i_16_n_0\
    );
\plusOp__188_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(181),
      I1 => s_axis_tdata(245),
      I2 => L(53),
      O => \plusOp__188_carry__1_i_2_n_0\
    );
\plusOp__188_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(180),
      I1 => s_axis_tdata(244),
      I2 => L(52),
      O => \plusOp__188_carry__1_i_3_n_0\
    );
\plusOp__188_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(179),
      I1 => s_axis_tdata(243),
      I2 => L(51),
      O => \plusOp__188_carry__1_i_4_n_0\
    );
\plusOp__188_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(178),
      I1 => s_axis_tdata(242),
      I2 => L(50),
      O => \plusOp__188_carry__1_i_5_n_0\
    );
\plusOp__188_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(177),
      I1 => s_axis_tdata(241),
      I2 => L(49),
      O => \plusOp__188_carry__1_i_6_n_0\
    );
\plusOp__188_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(176),
      I1 => s_axis_tdata(240),
      I2 => L(48),
      O => \plusOp__188_carry__1_i_7_n_0\
    );
\plusOp__188_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(175),
      I1 => s_axis_tdata(239),
      I2 => L(47),
      O => \plusOp__188_carry__1_i_8_n_0\
    );
\plusOp__188_carry__1_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(183),
      I1 => s_axis_tdata(247),
      I2 => L(55),
      I3 => \plusOp__188_carry__1_i_1_n_0\,
      O => \plusOp__188_carry__1_i_9_n_0\
    );
\plusOp__188_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__188_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_plusOp__188_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \plusOp__188_carry__2_n_1\,
      CO(5) => \plusOp__188_carry__2_n_2\,
      CO(4) => \plusOp__188_carry__2_n_3\,
      CO(3) => \plusOp__188_carry__2_n_4\,
      CO(2) => \plusOp__188_carry__2_n_5\,
      CO(1) => \plusOp__188_carry__2_n_6\,
      CO(0) => \plusOp__188_carry__2_n_7\,
      DI(7) => '0',
      DI(6) => \plusOp__188_carry__2_i_1_n_0\,
      DI(5) => \plusOp__188_carry__2_i_2_n_0\,
      DI(4) => \plusOp__188_carry__2_i_3_n_0\,
      DI(3) => \plusOp__188_carry__2_i_4_n_0\,
      DI(2) => \plusOp__188_carry__2_i_5_n_0\,
      DI(1) => \plusOp__188_carry__2_i_6_n_0\,
      DI(0) => \plusOp__188_carry__2_i_7_n_0\,
      O(7) => \plusOp__188_carry__2_n_8\,
      O(6) => \plusOp__188_carry__2_n_9\,
      O(5) => \plusOp__188_carry__2_n_10\,
      O(4) => \plusOp__188_carry__2_n_11\,
      O(3) => \plusOp__188_carry__2_n_12\,
      O(2) => \plusOp__188_carry__2_n_13\,
      O(1) => \plusOp__188_carry__2_n_14\,
      O(0) => \plusOp__188_carry__2_n_15\,
      S(7) => \plusOp__188_carry__2_i_8_n_0\,
      S(6) => \plusOp__188_carry__2_i_9_n_0\,
      S(5) => \plusOp__188_carry__2_i_10_n_0\,
      S(4) => \plusOp__188_carry__2_i_11_n_0\,
      S(3) => \plusOp__188_carry__2_i_12_n_0\,
      S(2) => \plusOp__188_carry__2_i_13_n_0\,
      S(1) => \plusOp__188_carry__2_i_14_n_0\,
      S(0) => \plusOp__188_carry__2_i_15_n_0\
    );
\plusOp__188_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(189),
      I1 => s_axis_tdata(253),
      I2 => L(61),
      O => \plusOp__188_carry__2_i_1_n_0\
    );
\plusOp__188_carry__2_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(189),
      I1 => s_axis_tdata(253),
      I2 => L(61),
      I3 => \plusOp__188_carry__2_i_2_n_0\,
      O => \plusOp__188_carry__2_i_10_n_0\
    );
\plusOp__188_carry__2_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(188),
      I1 => s_axis_tdata(252),
      I2 => L(60),
      I3 => \plusOp__188_carry__2_i_3_n_0\,
      O => \plusOp__188_carry__2_i_11_n_0\
    );
\plusOp__188_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(187),
      I1 => s_axis_tdata(251),
      I2 => L(59),
      I3 => \plusOp__188_carry__2_i_4_n_0\,
      O => \plusOp__188_carry__2_i_12_n_0\
    );
\plusOp__188_carry__2_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(186),
      I1 => s_axis_tdata(250),
      I2 => L(58),
      I3 => \plusOp__188_carry__2_i_5_n_0\,
      O => \plusOp__188_carry__2_i_13_n_0\
    );
\plusOp__188_carry__2_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(185),
      I1 => s_axis_tdata(249),
      I2 => L(57),
      I3 => \plusOp__188_carry__2_i_6_n_0\,
      O => \plusOp__188_carry__2_i_14_n_0\
    );
\plusOp__188_carry__2_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(184),
      I1 => s_axis_tdata(248),
      I2 => L(56),
      I3 => \plusOp__188_carry__2_i_7_n_0\,
      O => \plusOp__188_carry__2_i_15_n_0\
    );
\plusOp__188_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(188),
      I1 => s_axis_tdata(252),
      I2 => L(60),
      O => \plusOp__188_carry__2_i_2_n_0\
    );
\plusOp__188_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(187),
      I1 => s_axis_tdata(251),
      I2 => L(59),
      O => \plusOp__188_carry__2_i_3_n_0\
    );
\plusOp__188_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(186),
      I1 => s_axis_tdata(250),
      I2 => L(58),
      O => \plusOp__188_carry__2_i_4_n_0\
    );
\plusOp__188_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(185),
      I1 => s_axis_tdata(249),
      I2 => L(57),
      O => \plusOp__188_carry__2_i_5_n_0\
    );
\plusOp__188_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(184),
      I1 => s_axis_tdata(248),
      I2 => L(56),
      O => \plusOp__188_carry__2_i_6_n_0\
    );
\plusOp__188_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(183),
      I1 => s_axis_tdata(247),
      I2 => L(55),
      O => \plusOp__188_carry__2_i_7_n_0\
    );
\plusOp__188_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => L(62),
      I1 => s_axis_tdata(254),
      I2 => s_axis_tdata(190),
      I3 => s_axis_tdata(255),
      I4 => s_axis_tdata(191),
      I5 => L(63),
      O => \plusOp__188_carry__2_i_8_n_0\
    );
\plusOp__188_carry__2_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__2_i_1_n_0\,
      I1 => s_axis_tdata(254),
      I2 => s_axis_tdata(190),
      I3 => L(62),
      O => \plusOp__188_carry__2_i_9_n_0\
    );
\plusOp__188_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(166),
      I1 => s_axis_tdata(230),
      I2 => L(38),
      O => \plusOp__188_carry_i_1_n_0\
    );
\plusOp__188_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(165),
      I1 => s_axis_tdata(229),
      I2 => L(37),
      I3 => \plusOp__188_carry_i_3_n_0\,
      O => \plusOp__188_carry_i_10_n_0\
    );
\plusOp__188_carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(164),
      I1 => s_axis_tdata(228),
      I2 => L(36),
      I3 => \plusOp__188_carry_i_4_n_0\,
      O => \plusOp__188_carry_i_11_n_0\
    );
\plusOp__188_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(163),
      I1 => s_axis_tdata(227),
      I2 => L(35),
      I3 => \plusOp__188_carry_i_5_n_0\,
      O => \plusOp__188_carry_i_12_n_0\
    );
\plusOp__188_carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(162),
      I1 => s_axis_tdata(226),
      I2 => L(34),
      I3 => \plusOp__188_carry_i_6_n_0\,
      O => \plusOp__188_carry_i_13_n_0\
    );
\plusOp__188_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(161),
      I1 => s_axis_tdata(225),
      I2 => L(33),
      I3 => \plusOp__188_carry_i_7_n_0\,
      O => \plusOp__188_carry_i_14_n_0\
    );
\plusOp__188_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(160),
      I1 => s_axis_tdata(224),
      I2 => L(32),
      O => \plusOp__188_carry_i_15_n_0\
    );
\plusOp__188_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(165),
      I1 => s_axis_tdata(229),
      I2 => L(37),
      O => \plusOp__188_carry_i_2_n_0\
    );
\plusOp__188_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(164),
      I1 => s_axis_tdata(228),
      I2 => L(36),
      O => \plusOp__188_carry_i_3_n_0\
    );
\plusOp__188_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(163),
      I1 => s_axis_tdata(227),
      I2 => L(35),
      O => \plusOp__188_carry_i_4_n_0\
    );
\plusOp__188_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(162),
      I1 => s_axis_tdata(226),
      I2 => L(34),
      O => \plusOp__188_carry_i_5_n_0\
    );
\plusOp__188_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(161),
      I1 => s_axis_tdata(225),
      I2 => L(33),
      O => \plusOp__188_carry_i_6_n_0\
    );
\plusOp__188_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(160),
      I1 => s_axis_tdata(224),
      I2 => L(32),
      O => \plusOp__188_carry_i_7_n_0\
    );
\plusOp__188_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(167),
      I1 => s_axis_tdata(231),
      I2 => L(39),
      I3 => \plusOp__188_carry_i_1_n_0\,
      O => \plusOp__188_carry_i_8_n_0\
    );
\plusOp__188_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(166),
      I1 => s_axis_tdata(230),
      I2 => L(38),
      I3 => \plusOp__188_carry_i_2_n_0\,
      O => \plusOp__188_carry_i_9_n_0\
    );
\plusOp__282_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \plusOp__282_carry_n_0\,
      CO(6) => \plusOp__282_carry_n_1\,
      CO(5) => \plusOp__282_carry_n_2\,
      CO(4) => \plusOp__282_carry_n_3\,
      CO(3) => \plusOp__282_carry_n_4\,
      CO(2) => \plusOp__282_carry_n_5\,
      CO(1) => \plusOp__282_carry_n_6\,
      CO(0) => \plusOp__282_carry_n_7\,
      DI(7) => \plusOp__282_carry_i_1_n_0\,
      DI(6) => \plusOp__282_carry_i_2_n_0\,
      DI(5) => \plusOp__282_carry_i_3_n_0\,
      DI(4) => \plusOp__282_carry_i_4_n_0\,
      DI(3) => \plusOp__282_carry_i_5_n_0\,
      DI(2) => \plusOp__282_carry_i_6_n_0\,
      DI(1) => \plusOp__282_carry_i_7_n_0\,
      DI(0) => '0',
      O(7 downto 0) => plusOp(7 downto 0),
      S(7) => \plusOp__282_carry_i_8_n_0\,
      S(6) => \plusOp__282_carry_i_9_n_0\,
      S(5) => \plusOp__282_carry_i_10_n_0\,
      S(4) => \plusOp__282_carry_i_11_n_0\,
      S(3) => \plusOp__282_carry_i_12_n_0\,
      S(2) => \plusOp__282_carry_i_13_n_0\,
      S(1) => \plusOp__282_carry_i_14_n_0\,
      S(0) => \plusOp__282_carry_i_15_n_0\
    );
\plusOp__282_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__282_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp__282_carry__0_n_0\,
      CO(6) => \plusOp__282_carry__0_n_1\,
      CO(5) => \plusOp__282_carry__0_n_2\,
      CO(4) => \plusOp__282_carry__0_n_3\,
      CO(3) => \plusOp__282_carry__0_n_4\,
      CO(2) => \plusOp__282_carry__0_n_5\,
      CO(1) => \plusOp__282_carry__0_n_6\,
      CO(0) => \plusOp__282_carry__0_n_7\,
      DI(7) => \plusOp__282_carry__0_i_1_n_0\,
      DI(6) => \plusOp__282_carry__0_i_2_n_0\,
      DI(5) => \plusOp__282_carry__0_i_3_n_0\,
      DI(4) => \plusOp__282_carry__0_i_4_n_0\,
      DI(3) => \plusOp__282_carry__0_i_5_n_0\,
      DI(2) => \plusOp__282_carry__0_i_6_n_0\,
      DI(1) => \plusOp__282_carry__0_i_7_n_0\,
      DI(0) => \plusOp__282_carry__0_i_8_n_0\,
      O(7 downto 0) => plusOp(15 downto 8),
      S(7) => \plusOp__282_carry__0_i_9_n_0\,
      S(6) => \plusOp__282_carry__0_i_10_n_0\,
      S(5) => \plusOp__282_carry__0_i_11_n_0\,
      S(4) => \plusOp__282_carry__0_i_12_n_0\,
      S(3) => \plusOp__282_carry__0_i_13_n_0\,
      S(2) => \plusOp__282_carry__0_i_14_n_0\,
      S(1) => \plusOp__282_carry__0_i_15_n_0\,
      S(0) => \plusOp__282_carry__0_i_16_n_0\
    );
\plusOp__282_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_9\,
      I1 => s_axis_tdata(46),
      I2 => s_axis_tdata(110),
      O => \plusOp__282_carry__0_i_1_n_0\
    );
\plusOp__282_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_9\,
      I1 => s_axis_tdata(46),
      I2 => s_axis_tdata(110),
      I3 => \plusOp__282_carry__0_i_2_n_0\,
      O => \plusOp__282_carry__0_i_10_n_0\
    );
\plusOp__282_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_10\,
      I1 => s_axis_tdata(45),
      I2 => s_axis_tdata(109),
      I3 => \plusOp__282_carry__0_i_3_n_0\,
      O => \plusOp__282_carry__0_i_11_n_0\
    );
\plusOp__282_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_11\,
      I1 => s_axis_tdata(44),
      I2 => s_axis_tdata(108),
      I3 => \plusOp__282_carry__0_i_4_n_0\,
      O => \plusOp__282_carry__0_i_12_n_0\
    );
\plusOp__282_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_12\,
      I1 => s_axis_tdata(43),
      I2 => s_axis_tdata(107),
      I3 => \plusOp__282_carry__0_i_5_n_0\,
      O => \plusOp__282_carry__0_i_13_n_0\
    );
\plusOp__282_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_13\,
      I1 => s_axis_tdata(42),
      I2 => s_axis_tdata(106),
      I3 => \plusOp__282_carry__0_i_6_n_0\,
      O => \plusOp__282_carry__0_i_14_n_0\
    );
\plusOp__282_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_14\,
      I1 => s_axis_tdata(41),
      I2 => s_axis_tdata(105),
      I3 => \plusOp__282_carry__0_i_7_n_0\,
      O => \plusOp__282_carry__0_i_15_n_0\
    );
\plusOp__282_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_15\,
      I1 => s_axis_tdata(40),
      I2 => s_axis_tdata(104),
      I3 => \plusOp__282_carry__0_i_8_n_0\,
      O => \plusOp__282_carry__0_i_16_n_0\
    );
\plusOp__282_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_10\,
      I1 => s_axis_tdata(45),
      I2 => s_axis_tdata(109),
      O => \plusOp__282_carry__0_i_2_n_0\
    );
\plusOp__282_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_11\,
      I1 => s_axis_tdata(44),
      I2 => s_axis_tdata(108),
      O => \plusOp__282_carry__0_i_3_n_0\
    );
\plusOp__282_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_12\,
      I1 => s_axis_tdata(43),
      I2 => s_axis_tdata(107),
      O => \plusOp__282_carry__0_i_4_n_0\
    );
\plusOp__282_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_13\,
      I1 => s_axis_tdata(42),
      I2 => s_axis_tdata(106),
      O => \plusOp__282_carry__0_i_5_n_0\
    );
\plusOp__282_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_14\,
      I1 => s_axis_tdata(41),
      I2 => s_axis_tdata(105),
      O => \plusOp__282_carry__0_i_6_n_0\
    );
\plusOp__282_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_15\,
      I1 => s_axis_tdata(40),
      I2 => s_axis_tdata(104),
      O => \plusOp__282_carry__0_i_7_n_0\
    );
\plusOp__282_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry_n_8\,
      I1 => s_axis_tdata(39),
      I2 => s_axis_tdata(103),
      O => \plusOp__282_carry__0_i_8_n_0\
    );
\plusOp__282_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_8\,
      I1 => s_axis_tdata(47),
      I2 => s_axis_tdata(111),
      I3 => \plusOp__282_carry__0_i_1_n_0\,
      O => \plusOp__282_carry__0_i_9_n_0\
    );
\plusOp__282_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__282_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp__282_carry__1_n_0\,
      CO(6) => \plusOp__282_carry__1_n_1\,
      CO(5) => \plusOp__282_carry__1_n_2\,
      CO(4) => \plusOp__282_carry__1_n_3\,
      CO(3) => \plusOp__282_carry__1_n_4\,
      CO(2) => \plusOp__282_carry__1_n_5\,
      CO(1) => \plusOp__282_carry__1_n_6\,
      CO(0) => \plusOp__282_carry__1_n_7\,
      DI(7) => \plusOp__282_carry__1_i_1_n_0\,
      DI(6) => \plusOp__282_carry__1_i_2_n_0\,
      DI(5) => \plusOp__282_carry__1_i_3_n_0\,
      DI(4) => \plusOp__282_carry__1_i_4_n_0\,
      DI(3) => \plusOp__282_carry__1_i_5_n_0\,
      DI(2) => \plusOp__282_carry__1_i_6_n_0\,
      DI(1) => \plusOp__282_carry__1_i_7_n_0\,
      DI(0) => \plusOp__282_carry__1_i_8_n_0\,
      O(7 downto 0) => plusOp(23 downto 16),
      S(7) => \plusOp__282_carry__1_i_9_n_0\,
      S(6) => \plusOp__282_carry__1_i_10_n_0\,
      S(5) => \plusOp__282_carry__1_i_11_n_0\,
      S(4) => \plusOp__282_carry__1_i_12_n_0\,
      S(3) => \plusOp__282_carry__1_i_13_n_0\,
      S(2) => \plusOp__282_carry__1_i_14_n_0\,
      S(1) => \plusOp__282_carry__1_i_15_n_0\,
      S(0) => \plusOp__282_carry__1_i_16_n_0\
    );
\plusOp__282_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_9\,
      I1 => s_axis_tdata(54),
      I2 => s_axis_tdata(118),
      O => \plusOp__282_carry__1_i_1_n_0\
    );
\plusOp__282_carry__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_9\,
      I1 => s_axis_tdata(54),
      I2 => s_axis_tdata(118),
      I3 => \plusOp__282_carry__1_i_2_n_0\,
      O => \plusOp__282_carry__1_i_10_n_0\
    );
\plusOp__282_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_10\,
      I1 => s_axis_tdata(53),
      I2 => s_axis_tdata(117),
      I3 => \plusOp__282_carry__1_i_3_n_0\,
      O => \plusOp__282_carry__1_i_11_n_0\
    );
\plusOp__282_carry__1_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_11\,
      I1 => s_axis_tdata(52),
      I2 => s_axis_tdata(116),
      I3 => \plusOp__282_carry__1_i_4_n_0\,
      O => \plusOp__282_carry__1_i_12_n_0\
    );
\plusOp__282_carry__1_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_12\,
      I1 => s_axis_tdata(51),
      I2 => s_axis_tdata(115),
      I3 => \plusOp__282_carry__1_i_5_n_0\,
      O => \plusOp__282_carry__1_i_13_n_0\
    );
\plusOp__282_carry__1_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_13\,
      I1 => s_axis_tdata(50),
      I2 => s_axis_tdata(114),
      I3 => \plusOp__282_carry__1_i_6_n_0\,
      O => \plusOp__282_carry__1_i_14_n_0\
    );
\plusOp__282_carry__1_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_14\,
      I1 => s_axis_tdata(49),
      I2 => s_axis_tdata(113),
      I3 => \plusOp__282_carry__1_i_7_n_0\,
      O => \plusOp__282_carry__1_i_15_n_0\
    );
\plusOp__282_carry__1_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_15\,
      I1 => s_axis_tdata(48),
      I2 => s_axis_tdata(112),
      I3 => \plusOp__282_carry__1_i_8_n_0\,
      O => \plusOp__282_carry__1_i_16_n_0\
    );
\plusOp__282_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_10\,
      I1 => s_axis_tdata(53),
      I2 => s_axis_tdata(117),
      O => \plusOp__282_carry__1_i_2_n_0\
    );
\plusOp__282_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_11\,
      I1 => s_axis_tdata(52),
      I2 => s_axis_tdata(116),
      O => \plusOp__282_carry__1_i_3_n_0\
    );
\plusOp__282_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_12\,
      I1 => s_axis_tdata(51),
      I2 => s_axis_tdata(115),
      O => \plusOp__282_carry__1_i_4_n_0\
    );
\plusOp__282_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_13\,
      I1 => s_axis_tdata(50),
      I2 => s_axis_tdata(114),
      O => \plusOp__282_carry__1_i_5_n_0\
    );
\plusOp__282_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_14\,
      I1 => s_axis_tdata(49),
      I2 => s_axis_tdata(113),
      O => \plusOp__282_carry__1_i_6_n_0\
    );
\plusOp__282_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_15\,
      I1 => s_axis_tdata(48),
      I2 => s_axis_tdata(112),
      O => \plusOp__282_carry__1_i_7_n_0\
    );
\plusOp__282_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__0_n_8\,
      I1 => s_axis_tdata(47),
      I2 => s_axis_tdata(111),
      O => \plusOp__282_carry__1_i_8_n_0\
    );
\plusOp__282_carry__1_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_8\,
      I1 => s_axis_tdata(55),
      I2 => s_axis_tdata(119),
      I3 => \plusOp__282_carry__1_i_1_n_0\,
      O => \plusOp__282_carry__1_i_9_n_0\
    );
\plusOp__282_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__282_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_plusOp__282_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \plusOp__282_carry__2_n_1\,
      CO(5) => \plusOp__282_carry__2_n_2\,
      CO(4) => \plusOp__282_carry__2_n_3\,
      CO(3) => \plusOp__282_carry__2_n_4\,
      CO(2) => \plusOp__282_carry__2_n_5\,
      CO(1) => \plusOp__282_carry__2_n_6\,
      CO(0) => \plusOp__282_carry__2_n_7\,
      DI(7) => '0',
      DI(6) => \plusOp__282_carry__2_i_1_n_0\,
      DI(5) => \plusOp__282_carry__2_i_2_n_0\,
      DI(4) => \plusOp__282_carry__2_i_3_n_0\,
      DI(3) => \plusOp__282_carry__2_i_4_n_0\,
      DI(2) => \plusOp__282_carry__2_i_5_n_0\,
      DI(1) => \plusOp__282_carry__2_i_6_n_0\,
      DI(0) => \plusOp__282_carry__2_i_7_n_0\,
      O(7 downto 0) => plusOp(31 downto 24),
      S(7) => \plusOp__282_carry__2_i_8_n_0\,
      S(6) => \plusOp__282_carry__2_i_9_n_0\,
      S(5) => \plusOp__282_carry__2_i_10_n_0\,
      S(4) => \plusOp__282_carry__2_i_11_n_0\,
      S(3) => \plusOp__282_carry__2_i_12_n_0\,
      S(2) => \plusOp__282_carry__2_i_13_n_0\,
      S(1) => \plusOp__282_carry__2_i_14_n_0\,
      S(0) => \plusOp__282_carry__2_i_15_n_0\
    );
\plusOp__282_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_10\,
      I1 => s_axis_tdata(61),
      I2 => s_axis_tdata(125),
      O => \plusOp__282_carry__2_i_1_n_0\
    );
\plusOp__282_carry__2_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_10\,
      I1 => s_axis_tdata(61),
      I2 => s_axis_tdata(125),
      I3 => \plusOp__282_carry__2_i_2_n_0\,
      O => \plusOp__282_carry__2_i_10_n_0\
    );
\plusOp__282_carry__2_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_11\,
      I1 => s_axis_tdata(60),
      I2 => s_axis_tdata(124),
      I3 => \plusOp__282_carry__2_i_3_n_0\,
      O => \plusOp__282_carry__2_i_11_n_0\
    );
\plusOp__282_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_12\,
      I1 => s_axis_tdata(59),
      I2 => s_axis_tdata(123),
      I3 => \plusOp__282_carry__2_i_4_n_0\,
      O => \plusOp__282_carry__2_i_12_n_0\
    );
\plusOp__282_carry__2_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_13\,
      I1 => s_axis_tdata(58),
      I2 => s_axis_tdata(122),
      I3 => \plusOp__282_carry__2_i_5_n_0\,
      O => \plusOp__282_carry__2_i_13_n_0\
    );
\plusOp__282_carry__2_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_14\,
      I1 => s_axis_tdata(57),
      I2 => s_axis_tdata(121),
      I3 => \plusOp__282_carry__2_i_6_n_0\,
      O => \plusOp__282_carry__2_i_14_n_0\
    );
\plusOp__282_carry__2_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_15\,
      I1 => s_axis_tdata(56),
      I2 => s_axis_tdata(120),
      I3 => \plusOp__282_carry__2_i_7_n_0\,
      O => \plusOp__282_carry__2_i_15_n_0\
    );
\plusOp__282_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_11\,
      I1 => s_axis_tdata(60),
      I2 => s_axis_tdata(124),
      O => \plusOp__282_carry__2_i_2_n_0\
    );
\plusOp__282_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_12\,
      I1 => s_axis_tdata(59),
      I2 => s_axis_tdata(123),
      O => \plusOp__282_carry__2_i_3_n_0\
    );
\plusOp__282_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_13\,
      I1 => s_axis_tdata(58),
      I2 => s_axis_tdata(122),
      O => \plusOp__282_carry__2_i_4_n_0\
    );
\plusOp__282_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_14\,
      I1 => s_axis_tdata(57),
      I2 => s_axis_tdata(121),
      O => \plusOp__282_carry__2_i_5_n_0\
    );
\plusOp__282_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__2_n_15\,
      I1 => s_axis_tdata(56),
      I2 => s_axis_tdata(120),
      O => \plusOp__282_carry__2_i_6_n_0\
    );
\plusOp__282_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry__1_n_8\,
      I1 => s_axis_tdata(55),
      I2 => s_axis_tdata(119),
      O => \plusOp__282_carry__2_i_7_n_0\
    );
\plusOp__282_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => s_axis_tdata(126),
      I1 => s_axis_tdata(62),
      I2 => \plusOp__188_carry__2_n_9\,
      I3 => s_axis_tdata(63),
      I4 => \plusOp__188_carry__2_n_8\,
      I5 => s_axis_tdata(127),
      O => \plusOp__282_carry__2_i_8_n_0\
    );
\plusOp__282_carry__2_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__282_carry__2_i_1_n_0\,
      I1 => s_axis_tdata(62),
      I2 => \plusOp__188_carry__2_n_9\,
      I3 => s_axis_tdata(126),
      O => \plusOp__282_carry__2_i_9_n_0\
    );
\plusOp__282_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry_n_9\,
      I1 => s_axis_tdata(38),
      I2 => s_axis_tdata(102),
      O => \plusOp__282_carry_i_1_n_0\
    );
\plusOp__282_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry_n_10\,
      I1 => s_axis_tdata(37),
      I2 => s_axis_tdata(101),
      I3 => \plusOp__282_carry_i_3_n_0\,
      O => \plusOp__282_carry_i_10_n_0\
    );
\plusOp__282_carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry_n_11\,
      I1 => s_axis_tdata(36),
      I2 => s_axis_tdata(100),
      I3 => \plusOp__282_carry_i_4_n_0\,
      O => \plusOp__282_carry_i_11_n_0\
    );
\plusOp__282_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry_n_12\,
      I1 => s_axis_tdata(35),
      I2 => s_axis_tdata(99),
      I3 => \plusOp__282_carry_i_5_n_0\,
      O => \plusOp__282_carry_i_12_n_0\
    );
\plusOp__282_carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry_n_13\,
      I1 => s_axis_tdata(34),
      I2 => s_axis_tdata(98),
      I3 => \plusOp__282_carry_i_6_n_0\,
      O => \plusOp__282_carry_i_13_n_0\
    );
\plusOp__282_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry_n_14\,
      I1 => s_axis_tdata(33),
      I2 => s_axis_tdata(97),
      I3 => \plusOp__282_carry_i_7_n_0\,
      O => \plusOp__282_carry_i_14_n_0\
    );
\plusOp__282_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \plusOp__188_carry_n_15\,
      I1 => s_axis_tdata(32),
      I2 => s_axis_tdata(96),
      O => \plusOp__282_carry_i_15_n_0\
    );
\plusOp__282_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry_n_10\,
      I1 => s_axis_tdata(37),
      I2 => s_axis_tdata(101),
      O => \plusOp__282_carry_i_2_n_0\
    );
\plusOp__282_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry_n_11\,
      I1 => s_axis_tdata(36),
      I2 => s_axis_tdata(100),
      O => \plusOp__282_carry_i_3_n_0\
    );
\plusOp__282_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry_n_12\,
      I1 => s_axis_tdata(35),
      I2 => s_axis_tdata(99),
      O => \plusOp__282_carry_i_4_n_0\
    );
\plusOp__282_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry_n_13\,
      I1 => s_axis_tdata(34),
      I2 => s_axis_tdata(98),
      O => \plusOp__282_carry_i_5_n_0\
    );
\plusOp__282_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry_n_14\,
      I1 => s_axis_tdata(33),
      I2 => s_axis_tdata(97),
      O => \plusOp__282_carry_i_6_n_0\
    );
\plusOp__282_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__188_carry_n_15\,
      I1 => s_axis_tdata(32),
      I2 => s_axis_tdata(96),
      O => \plusOp__282_carry_i_7_n_0\
    );
\plusOp__282_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry_n_8\,
      I1 => s_axis_tdata(39),
      I2 => s_axis_tdata(103),
      I3 => \plusOp__282_carry_i_1_n_0\,
      O => \plusOp__282_carry_i_8_n_0\
    );
\plusOp__282_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__188_carry_n_9\,
      I1 => s_axis_tdata(38),
      I2 => s_axis_tdata(102),
      I3 => \plusOp__282_carry_i_2_n_0\,
      O => \plusOp__282_carry_i_9_n_0\
    );
\plusOp__94_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \plusOp__94_carry_n_0\,
      CO(6) => \plusOp__94_carry_n_1\,
      CO(5) => \plusOp__94_carry_n_2\,
      CO(4) => \plusOp__94_carry_n_3\,
      CO(3) => \plusOp__94_carry_n_4\,
      CO(2) => \plusOp__94_carry_n_5\,
      CO(1) => \plusOp__94_carry_n_6\,
      CO(0) => \plusOp__94_carry_n_7\,
      DI(7) => \plusOp__94_carry_i_1_n_0\,
      DI(6) => \plusOp__94_carry_i_2_n_0\,
      DI(5) => \plusOp__94_carry_i_3_n_0\,
      DI(4) => \plusOp__94_carry_i_4_n_0\,
      DI(3) => \plusOp__94_carry_i_5_n_0\,
      DI(2) => \plusOp__94_carry_i_6_n_0\,
      DI(1) => \plusOp__94_carry_i_7_n_0\,
      DI(0) => '0',
      O(7 downto 0) => plusOp6_out(7 downto 0),
      S(7) => \plusOp__94_carry_i_8_n_0\,
      S(6) => \plusOp__94_carry_i_9_n_0\,
      S(5) => \plusOp__94_carry_i_10_n_0\,
      S(4) => \plusOp__94_carry_i_11_n_0\,
      S(3) => \plusOp__94_carry_i_12_n_0\,
      S(2) => \plusOp__94_carry_i_13_n_0\,
      S(1) => \plusOp__94_carry_i_14_n_0\,
      S(0) => \plusOp__94_carry_i_15_n_0\
    );
\plusOp__94_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__94_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp__94_carry__0_n_0\,
      CO(6) => \plusOp__94_carry__0_n_1\,
      CO(5) => \plusOp__94_carry__0_n_2\,
      CO(4) => \plusOp__94_carry__0_n_3\,
      CO(3) => \plusOp__94_carry__0_n_4\,
      CO(2) => \plusOp__94_carry__0_n_5\,
      CO(1) => \plusOp__94_carry__0_n_6\,
      CO(0) => \plusOp__94_carry__0_n_7\,
      DI(7) => \plusOp__94_carry__0_i_1_n_0\,
      DI(6) => \plusOp__94_carry__0_i_2_n_0\,
      DI(5) => \plusOp__94_carry__0_i_3_n_0\,
      DI(4) => \plusOp__94_carry__0_i_4_n_0\,
      DI(3) => \plusOp__94_carry__0_i_5_n_0\,
      DI(2) => \plusOp__94_carry__0_i_6_n_0\,
      DI(1) => \plusOp__94_carry__0_i_7_n_0\,
      DI(0) => \plusOp__94_carry__0_i_8_n_0\,
      O(7 downto 0) => plusOp6_out(15 downto 8),
      S(7) => \plusOp__94_carry__0_i_9_n_0\,
      S(6) => \plusOp__94_carry__0_i_10_n_0\,
      S(5) => \plusOp__94_carry__0_i_11_n_0\,
      S(4) => \plusOp__94_carry__0_i_12_n_0\,
      S(3) => \plusOp__94_carry__0_i_13_n_0\,
      S(2) => \plusOp__94_carry__0_i_14_n_0\,
      S(1) => \plusOp__94_carry__0_i_15_n_0\,
      S(0) => \plusOp__94_carry__0_i_16_n_0\
    );
\plusOp__94_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_9\,
      I1 => s_axis_tdata(14),
      I2 => s_axis_tdata(78),
      O => \plusOp__94_carry__0_i_1_n_0\
    );
\plusOp__94_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_9\,
      I1 => s_axis_tdata(14),
      I2 => s_axis_tdata(78),
      I3 => \plusOp__94_carry__0_i_2_n_0\,
      O => \plusOp__94_carry__0_i_10_n_0\
    );
\plusOp__94_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_10\,
      I1 => s_axis_tdata(13),
      I2 => s_axis_tdata(77),
      I3 => \plusOp__94_carry__0_i_3_n_0\,
      O => \plusOp__94_carry__0_i_11_n_0\
    );
\plusOp__94_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_11\,
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(76),
      I3 => \plusOp__94_carry__0_i_4_n_0\,
      O => \plusOp__94_carry__0_i_12_n_0\
    );
\plusOp__94_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_12\,
      I1 => s_axis_tdata(11),
      I2 => s_axis_tdata(75),
      I3 => \plusOp__94_carry__0_i_5_n_0\,
      O => \plusOp__94_carry__0_i_13_n_0\
    );
\plusOp__94_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_13\,
      I1 => s_axis_tdata(10),
      I2 => s_axis_tdata(74),
      I3 => \plusOp__94_carry__0_i_6_n_0\,
      O => \plusOp__94_carry__0_i_14_n_0\
    );
\plusOp__94_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_14\,
      I1 => s_axis_tdata(9),
      I2 => s_axis_tdata(73),
      I3 => \plusOp__94_carry__0_i_7_n_0\,
      O => \plusOp__94_carry__0_i_15_n_0\
    );
\plusOp__94_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_15\,
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(72),
      I3 => \plusOp__94_carry__0_i_8_n_0\,
      O => \plusOp__94_carry__0_i_16_n_0\
    );
\plusOp__94_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_10\,
      I1 => s_axis_tdata(13),
      I2 => s_axis_tdata(77),
      O => \plusOp__94_carry__0_i_2_n_0\
    );
\plusOp__94_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_11\,
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(76),
      O => \plusOp__94_carry__0_i_3_n_0\
    );
\plusOp__94_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_12\,
      I1 => s_axis_tdata(11),
      I2 => s_axis_tdata(75),
      O => \plusOp__94_carry__0_i_4_n_0\
    );
\plusOp__94_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_13\,
      I1 => s_axis_tdata(10),
      I2 => s_axis_tdata(74),
      O => \plusOp__94_carry__0_i_5_n_0\
    );
\plusOp__94_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_14\,
      I1 => s_axis_tdata(9),
      I2 => s_axis_tdata(73),
      O => \plusOp__94_carry__0_i_6_n_0\
    );
\plusOp__94_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_15\,
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(72),
      O => \plusOp__94_carry__0_i_7_n_0\
    );
\plusOp__94_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry_n_8\,
      I1 => s_axis_tdata(7),
      I2 => s_axis_tdata(71),
      O => \plusOp__94_carry__0_i_8_n_0\
    );
\plusOp__94_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_8\,
      I1 => s_axis_tdata(15),
      I2 => s_axis_tdata(79),
      I3 => \plusOp__94_carry__0_i_1_n_0\,
      O => \plusOp__94_carry__0_i_9_n_0\
    );
\plusOp__94_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__94_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp__94_carry__1_n_0\,
      CO(6) => \plusOp__94_carry__1_n_1\,
      CO(5) => \plusOp__94_carry__1_n_2\,
      CO(4) => \plusOp__94_carry__1_n_3\,
      CO(3) => \plusOp__94_carry__1_n_4\,
      CO(2) => \plusOp__94_carry__1_n_5\,
      CO(1) => \plusOp__94_carry__1_n_6\,
      CO(0) => \plusOp__94_carry__1_n_7\,
      DI(7) => \plusOp__94_carry__1_i_1_n_0\,
      DI(6) => \plusOp__94_carry__1_i_2_n_0\,
      DI(5) => \plusOp__94_carry__1_i_3_n_0\,
      DI(4) => \plusOp__94_carry__1_i_4_n_0\,
      DI(3) => \plusOp__94_carry__1_i_5_n_0\,
      DI(2) => \plusOp__94_carry__1_i_6_n_0\,
      DI(1) => \plusOp__94_carry__1_i_7_n_0\,
      DI(0) => \plusOp__94_carry__1_i_8_n_0\,
      O(7 downto 0) => plusOp6_out(23 downto 16),
      S(7) => \plusOp__94_carry__1_i_9_n_0\,
      S(6) => \plusOp__94_carry__1_i_10_n_0\,
      S(5) => \plusOp__94_carry__1_i_11_n_0\,
      S(4) => \plusOp__94_carry__1_i_12_n_0\,
      S(3) => \plusOp__94_carry__1_i_13_n_0\,
      S(2) => \plusOp__94_carry__1_i_14_n_0\,
      S(1) => \plusOp__94_carry__1_i_15_n_0\,
      S(0) => \plusOp__94_carry__1_i_16_n_0\
    );
\plusOp__94_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_9\,
      I1 => s_axis_tdata(22),
      I2 => s_axis_tdata(86),
      O => \plusOp__94_carry__1_i_1_n_0\
    );
\plusOp__94_carry__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_9\,
      I1 => s_axis_tdata(22),
      I2 => s_axis_tdata(86),
      I3 => \plusOp__94_carry__1_i_2_n_0\,
      O => \plusOp__94_carry__1_i_10_n_0\
    );
\plusOp__94_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_10\,
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(85),
      I3 => \plusOp__94_carry__1_i_3_n_0\,
      O => \plusOp__94_carry__1_i_11_n_0\
    );
\plusOp__94_carry__1_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_11\,
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(84),
      I3 => \plusOp__94_carry__1_i_4_n_0\,
      O => \plusOp__94_carry__1_i_12_n_0\
    );
\plusOp__94_carry__1_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_12\,
      I1 => s_axis_tdata(19),
      I2 => s_axis_tdata(83),
      I3 => \plusOp__94_carry__1_i_5_n_0\,
      O => \plusOp__94_carry__1_i_13_n_0\
    );
\plusOp__94_carry__1_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_13\,
      I1 => s_axis_tdata(18),
      I2 => s_axis_tdata(82),
      I3 => \plusOp__94_carry__1_i_6_n_0\,
      O => \plusOp__94_carry__1_i_14_n_0\
    );
\plusOp__94_carry__1_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_14\,
      I1 => s_axis_tdata(17),
      I2 => s_axis_tdata(81),
      I3 => \plusOp__94_carry__1_i_7_n_0\,
      O => \plusOp__94_carry__1_i_15_n_0\
    );
\plusOp__94_carry__1_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_15\,
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(80),
      I3 => \plusOp__94_carry__1_i_8_n_0\,
      O => \plusOp__94_carry__1_i_16_n_0\
    );
\plusOp__94_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_10\,
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(85),
      O => \plusOp__94_carry__1_i_2_n_0\
    );
\plusOp__94_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_11\,
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(84),
      O => \plusOp__94_carry__1_i_3_n_0\
    );
\plusOp__94_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_12\,
      I1 => s_axis_tdata(19),
      I2 => s_axis_tdata(83),
      O => \plusOp__94_carry__1_i_4_n_0\
    );
\plusOp__94_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_13\,
      I1 => s_axis_tdata(18),
      I2 => s_axis_tdata(82),
      O => \plusOp__94_carry__1_i_5_n_0\
    );
\plusOp__94_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_14\,
      I1 => s_axis_tdata(17),
      I2 => s_axis_tdata(81),
      O => \plusOp__94_carry__1_i_6_n_0\
    );
\plusOp__94_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_15\,
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(80),
      O => \plusOp__94_carry__1_i_7_n_0\
    );
\plusOp__94_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__0_n_8\,
      I1 => s_axis_tdata(15),
      I2 => s_axis_tdata(79),
      O => \plusOp__94_carry__1_i_8_n_0\
    );
\plusOp__94_carry__1_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_8\,
      I1 => s_axis_tdata(23),
      I2 => s_axis_tdata(87),
      I3 => \plusOp__94_carry__1_i_1_n_0\,
      O => \plusOp__94_carry__1_i_9_n_0\
    );
\plusOp__94_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__94_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_plusOp__94_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \plusOp__94_carry__2_n_1\,
      CO(5) => \plusOp__94_carry__2_n_2\,
      CO(4) => \plusOp__94_carry__2_n_3\,
      CO(3) => \plusOp__94_carry__2_n_4\,
      CO(2) => \plusOp__94_carry__2_n_5\,
      CO(1) => \plusOp__94_carry__2_n_6\,
      CO(0) => \plusOp__94_carry__2_n_7\,
      DI(7) => '0',
      DI(6) => \plusOp__94_carry__2_i_1_n_0\,
      DI(5) => \plusOp__94_carry__2_i_2_n_0\,
      DI(4) => \plusOp__94_carry__2_i_3_n_0\,
      DI(3) => \plusOp__94_carry__2_i_4_n_0\,
      DI(2) => \plusOp__94_carry__2_i_5_n_0\,
      DI(1) => \plusOp__94_carry__2_i_6_n_0\,
      DI(0) => \plusOp__94_carry__2_i_7_n_0\,
      O(7 downto 0) => plusOp6_out(31 downto 24),
      S(7) => \plusOp__94_carry__2_i_8_n_0\,
      S(6) => \plusOp__94_carry__2_i_9_n_0\,
      S(5) => \plusOp__94_carry__2_i_10_n_0\,
      S(4) => \plusOp__94_carry__2_i_11_n_0\,
      S(3) => \plusOp__94_carry__2_i_12_n_0\,
      S(2) => \plusOp__94_carry__2_i_13_n_0\,
      S(1) => \plusOp__94_carry__2_i_14_n_0\,
      S(0) => \plusOp__94_carry__2_i_15_n_0\
    );
\plusOp__94_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_10\,
      I1 => s_axis_tdata(29),
      I2 => s_axis_tdata(93),
      O => \plusOp__94_carry__2_i_1_n_0\
    );
\plusOp__94_carry__2_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_10\,
      I1 => s_axis_tdata(29),
      I2 => s_axis_tdata(93),
      I3 => \plusOp__94_carry__2_i_2_n_0\,
      O => \plusOp__94_carry__2_i_10_n_0\
    );
\plusOp__94_carry__2_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_11\,
      I1 => s_axis_tdata(28),
      I2 => s_axis_tdata(92),
      I3 => \plusOp__94_carry__2_i_3_n_0\,
      O => \plusOp__94_carry__2_i_11_n_0\
    );
\plusOp__94_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_12\,
      I1 => s_axis_tdata(27),
      I2 => s_axis_tdata(91),
      I3 => \plusOp__94_carry__2_i_4_n_0\,
      O => \plusOp__94_carry__2_i_12_n_0\
    );
\plusOp__94_carry__2_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_13\,
      I1 => s_axis_tdata(26),
      I2 => s_axis_tdata(90),
      I3 => \plusOp__94_carry__2_i_5_n_0\,
      O => \plusOp__94_carry__2_i_13_n_0\
    );
\plusOp__94_carry__2_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_14\,
      I1 => s_axis_tdata(25),
      I2 => s_axis_tdata(89),
      I3 => \plusOp__94_carry__2_i_6_n_0\,
      O => \plusOp__94_carry__2_i_14_n_0\
    );
\plusOp__94_carry__2_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_15\,
      I1 => s_axis_tdata(24),
      I2 => s_axis_tdata(88),
      I3 => \plusOp__94_carry__2_i_7_n_0\,
      O => \plusOp__94_carry__2_i_15_n_0\
    );
\plusOp__94_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_11\,
      I1 => s_axis_tdata(28),
      I2 => s_axis_tdata(92),
      O => \plusOp__94_carry__2_i_2_n_0\
    );
\plusOp__94_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_12\,
      I1 => s_axis_tdata(27),
      I2 => s_axis_tdata(91),
      O => \plusOp__94_carry__2_i_3_n_0\
    );
\plusOp__94_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_13\,
      I1 => s_axis_tdata(26),
      I2 => s_axis_tdata(90),
      O => \plusOp__94_carry__2_i_4_n_0\
    );
\plusOp__94_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_14\,
      I1 => s_axis_tdata(25),
      I2 => s_axis_tdata(89),
      O => \plusOp__94_carry__2_i_5_n_0\
    );
\plusOp__94_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__2_n_15\,
      I1 => s_axis_tdata(24),
      I2 => s_axis_tdata(88),
      O => \plusOp__94_carry__2_i_6_n_0\
    );
\plusOp__94_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry__1_n_8\,
      I1 => s_axis_tdata(23),
      I2 => s_axis_tdata(87),
      O => \plusOp__94_carry__2_i_7_n_0\
    );
\plusOp__94_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => s_axis_tdata(94),
      I1 => s_axis_tdata(30),
      I2 => \plusOp__0_carry__2_n_9\,
      I3 => s_axis_tdata(31),
      I4 => \plusOp__0_carry__2_n_8\,
      I5 => s_axis_tdata(95),
      O => \plusOp__94_carry__2_i_8_n_0\
    );
\plusOp__94_carry__2_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__94_carry__2_i_1_n_0\,
      I1 => s_axis_tdata(30),
      I2 => \plusOp__0_carry__2_n_9\,
      I3 => s_axis_tdata(94),
      O => \plusOp__94_carry__2_i_9_n_0\
    );
\plusOp__94_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry_n_9\,
      I1 => s_axis_tdata(6),
      I2 => s_axis_tdata(70),
      O => \plusOp__94_carry_i_1_n_0\
    );
\plusOp__94_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry_n_10\,
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(69),
      I3 => \plusOp__94_carry_i_3_n_0\,
      O => \plusOp__94_carry_i_10_n_0\
    );
\plusOp__94_carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry_n_11\,
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(68),
      I3 => \plusOp__94_carry_i_4_n_0\,
      O => \plusOp__94_carry_i_11_n_0\
    );
\plusOp__94_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry_n_12\,
      I1 => s_axis_tdata(3),
      I2 => s_axis_tdata(67),
      I3 => \plusOp__94_carry_i_5_n_0\,
      O => \plusOp__94_carry_i_12_n_0\
    );
\plusOp__94_carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry_n_13\,
      I1 => s_axis_tdata(2),
      I2 => s_axis_tdata(66),
      I3 => \plusOp__94_carry_i_6_n_0\,
      O => \plusOp__94_carry_i_13_n_0\
    );
\plusOp__94_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry_n_14\,
      I1 => s_axis_tdata(1),
      I2 => s_axis_tdata(65),
      I3 => \plusOp__94_carry_i_7_n_0\,
      O => \plusOp__94_carry_i_14_n_0\
    );
\plusOp__94_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \plusOp__0_carry_n_15\,
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(64),
      O => \plusOp__94_carry_i_15_n_0\
    );
\plusOp__94_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry_n_10\,
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(69),
      O => \plusOp__94_carry_i_2_n_0\
    );
\plusOp__94_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry_n_11\,
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(68),
      O => \plusOp__94_carry_i_3_n_0\
    );
\plusOp__94_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry_n_12\,
      I1 => s_axis_tdata(3),
      I2 => s_axis_tdata(67),
      O => \plusOp__94_carry_i_4_n_0\
    );
\plusOp__94_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry_n_13\,
      I1 => s_axis_tdata(2),
      I2 => s_axis_tdata(66),
      O => \plusOp__94_carry_i_5_n_0\
    );
\plusOp__94_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry_n_14\,
      I1 => s_axis_tdata(1),
      I2 => s_axis_tdata(65),
      O => \plusOp__94_carry_i_6_n_0\
    );
\plusOp__94_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \plusOp__0_carry_n_15\,
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(64),
      O => \plusOp__94_carry_i_7_n_0\
    );
\plusOp__94_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry_n_8\,
      I1 => s_axis_tdata(7),
      I2 => s_axis_tdata(71),
      I3 => \plusOp__94_carry_i_1_n_0\,
      O => \plusOp__94_carry_i_8_n_0\
    );
\plusOp__94_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \plusOp__0_carry_n_9\,
      I1 => s_axis_tdata(6),
      I2 => s_axis_tdata(70),
      I3 => \plusOp__94_carry_i_2_n_0\,
      O => \plusOp__94_carry_i_9_n_0\
    );
r_flip_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAA"
    )
        port map (
      I0 => r_flip,
      I1 => s_axis_tvalid,
      I2 => r_tlast,
      I3 => axis_aresetn,
      O => r_flip_i_1_n_0
    );
r_flip_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => r_flip_i_1_n_0,
      Q => r_flip,
      R => '0'
    );
r_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => s_axis_tlast,
      Q => r_tlast,
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
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cfo_correction_inst_0_sum_0_0,sum,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sum,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tuser(7) <= \<const0>\;
  m_axis_tuser(6) <= \<const0>\;
  m_axis_tuser(5) <= \<const0>\;
  m_axis_tuser(4) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sum
     port map (
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(255 downto 0) => s_axis_tdata(255 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
