-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Oct 21 10:04:39 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_playback_bram_0_0/rx_test_playback_bram_0_0_sim_netlist.vhdl
-- Design      : rx_test_playback_bram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rx_test_playback_bram_0_0_playback_bram is
  port (
    M_AXIS_tvalid : out STD_LOGIC;
    BRAM_PORT_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    o_finish : out STD_LOGIC;
    playback_en : in STD_LOGIC;
    num_symbols : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rx_test_playback_bram_0_0_playback_bram : entity is "playback_bram";
end rx_test_playback_bram_0_0_playback_bram;

architecture STRUCTURE of rx_test_playback_bram_0_0_playback_bram is
  signal \^bram_port_addr\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \bram_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal finish_i_1_n_0 : STD_LOGIC;
  signal finish_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_1 : STD_LOGIC;
  signal \^o_finish\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \symbol_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \symbol_counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \symbol_counter[3]_i_6_n_0\ : STD_LOGIC;
  signal symbol_counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \total_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \total_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \total_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \total_counter[10]_i_5_n_0\ : STD_LOGIC;
  signal total_counter_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_plusOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute x_interface_info : string;
  attribute x_interface_info of \bram_addr_reg[0]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of \bram_addr_reg[0]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[10]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[10]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[11]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[11]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[12]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[12]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[13]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[13]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[1]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[1]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[2]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[2]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[3]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[3]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[4]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[4]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[5]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[5]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[6]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[6]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[7]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[7]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[8]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[8]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute x_interface_info of \bram_addr_reg[9]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[9]\ : label is "MASTER_TYPE OTHER, MODE MASTER";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of finish_i_1 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \symbol_counter[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \symbol_counter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \symbol_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \symbol_counter[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \symbol_counter[3]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \symbol_counter[3]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \symbol_counter[3]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \total_counter[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \total_counter[10]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \total_counter[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \total_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \total_counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \total_counter[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \total_counter[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \total_counter[9]_i_1\ : label is "soft_lutpair0";
begin
  BRAM_PORT_addr(13 downto 0) <= \^bram_port_addr\(13 downto 0);
  o_finish <= \^o_finish\;
M_AXIS_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => playback_en,
      I1 => \^o_finish\,
      O => m_axis_tvalid_1
    );
M_AXIS_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => m_axis_tvalid_1,
      Q => M_AXIS_tvalid,
      R => '0'
    );
\bram_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_port_addr\(0),
      O => \plusOp__1\(0)
    );
\bram_addr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"82FF"
    )
        port map (
      I0 => finish_i_2_n_0,
      I1 => num_symbols(3),
      I2 => symbol_counter_reg(3),
      I3 => playback_en,
      O => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(0),
      Q => \^bram_port_addr\(0),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(10),
      Q => \^bram_port_addr\(10),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(11),
      Q => \^bram_port_addr\(11),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(12),
      Q => \^bram_port_addr\(12),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(13),
      Q => \^bram_port_addr\(13),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(1),
      Q => \^bram_port_addr\(1),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(2),
      Q => \^bram_port_addr\(2),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(3),
      Q => \^bram_port_addr\(3),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(4),
      Q => \^bram_port_addr\(4),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(5),
      Q => \^bram_port_addr\(5),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(6),
      Q => \^bram_port_addr\(6),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(7),
      Q => \^bram_port_addr\(7),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(8),
      Q => \^bram_port_addr\(8),
      R => \bram_addr[13]_i_1_n_0\
    );
\bram_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \plusOp__1\(9),
      Q => \^bram_port_addr\(9),
      R => \bram_addr[13]_i_1_n_0\
    );
finish_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBAA0000"
    )
        port map (
      I0 => \^o_finish\,
      I1 => symbol_counter_reg(3),
      I2 => num_symbols(3),
      I3 => finish_i_2_n_0,
      I4 => playback_en,
      O => finish_i_1_n_0
    );
finish_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => symbol_counter_reg(0),
      I1 => num_symbols(0),
      I2 => num_symbols(2),
      I3 => symbol_counter_reg(2),
      I4 => num_symbols(1),
      I5 => symbol_counter_reg(1),
      O => finish_i_2_n_0
    );
finish_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => finish_i_1_n_0,
      Q => \^o_finish\,
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \^bram_port_addr\(0),
      CI_TOP => '0',
      CO(7) => plusOp_carry_n_0,
      CO(6) => plusOp_carry_n_1,
      CO(5) => plusOp_carry_n_2,
      CO(4) => plusOp_carry_n_3,
      CO(3) => plusOp_carry_n_4,
      CO(2) => plusOp_carry_n_5,
      CO(1) => plusOp_carry_n_6,
      CO(0) => plusOp_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \plusOp__1\(8 downto 1),
      S(7 downto 0) => \^bram_port_addr\(8 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => plusOp_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \plusOp_carry__0_n_4\,
      CO(2) => \plusOp_carry__0_n_5\,
      CO(1) => \plusOp_carry__0_n_6\,
      CO(0) => \plusOp_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_plusOp_carry__0_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => \plusOp__1\(13 downto 9),
      S(7 downto 5) => B"000",
      S(4 downto 0) => \^bram_port_addr\(13 downto 9)
    );
\symbol_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(0),
      O => plusOp(0)
    );
\symbol_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => symbol_counter_reg(0),
      I1 => symbol_counter_reg(1),
      O => plusOp(1)
    );
\symbol_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => symbol_counter_reg(0),
      I1 => symbol_counter_reg(1),
      I2 => symbol_counter_reg(2),
      O => plusOp(2)
    );
\symbol_counter[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => playback_en,
      O => clear
    );
\symbol_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010101010001"
    )
        port map (
      I0 => \symbol_counter[3]_i_4_n_0\,
      I1 => \symbol_counter[3]_i_5_n_0\,
      I2 => \symbol_counter[3]_i_6_n_0\,
      I3 => finish_i_2_n_0,
      I4 => num_symbols(3),
      I5 => symbol_counter_reg(3),
      O => \symbol_counter[3]_i_2_n_0\
    );
\symbol_counter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => symbol_counter_reg(1),
      I1 => symbol_counter_reg(0),
      I2 => symbol_counter_reg(2),
      I3 => symbol_counter_reg(3),
      O => plusOp(3)
    );
\symbol_counter[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => total_counter_reg(7),
      I1 => total_counter_reg(8),
      I2 => total_counter_reg(5),
      I3 => total_counter_reg(6),
      O => \symbol_counter[3]_i_4_n_0\
    );
\symbol_counter[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => total_counter_reg(3),
      I1 => total_counter_reg(4),
      I2 => total_counter_reg(1),
      I3 => total_counter_reg(2),
      O => \symbol_counter[3]_i_5_n_0\
    );
\symbol_counter[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => total_counter_reg(10),
      I1 => total_counter_reg(0),
      I2 => total_counter_reg(9),
      O => \symbol_counter[3]_i_6_n_0\
    );
\symbol_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[3]_i_2_n_0\,
      D => plusOp(0),
      Q => symbol_counter_reg(0),
      R => clear
    );
\symbol_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[3]_i_2_n_0\,
      D => plusOp(1),
      Q => symbol_counter_reg(1),
      R => clear
    );
\symbol_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[3]_i_2_n_0\,
      D => plusOp(2),
      Q => symbol_counter_reg(2),
      R => clear
    );
\symbol_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \symbol_counter[3]_i_2_n_0\,
      D => plusOp(3),
      Q => symbol_counter_reg(3),
      R => clear
    );
\total_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => total_counter_reg(0),
      O => \plusOp__0\(0)
    );
\total_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000007FFFFFFFF"
    )
        port map (
      I0 => \total_counter[10]_i_4_n_0\,
      I1 => finish_i_2_n_0,
      I2 => \symbol_counter[3]_i_6_n_0\,
      I3 => \symbol_counter[3]_i_5_n_0\,
      I4 => \symbol_counter[3]_i_4_n_0\,
      I5 => playback_en,
      O => \total_counter[10]_i_1_n_0\
    );
\total_counter[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7D"
    )
        port map (
      I0 => finish_i_2_n_0,
      I1 => num_symbols(3),
      I2 => symbol_counter_reg(3),
      O => \total_counter[10]_i_2_n_0\
    );
\total_counter[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => total_counter_reg(8),
      I1 => total_counter_reg(6),
      I2 => \total_counter[10]_i_5_n_0\,
      I3 => total_counter_reg(7),
      I4 => total_counter_reg(9),
      I5 => total_counter_reg(10),
      O => \plusOp__0\(10)
    );
\total_counter[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => num_symbols(3),
      I1 => symbol_counter_reg(3),
      O => \total_counter[10]_i_4_n_0\
    );
\total_counter[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => total_counter_reg(5),
      I1 => total_counter_reg(3),
      I2 => total_counter_reg(1),
      I3 => total_counter_reg(0),
      I4 => total_counter_reg(2),
      I5 => total_counter_reg(4),
      O => \total_counter[10]_i_5_n_0\
    );
\total_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_counter_reg(0),
      I1 => total_counter_reg(1),
      O => \plusOp__0\(1)
    );
\total_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => total_counter_reg(0),
      I1 => total_counter_reg(1),
      I2 => total_counter_reg(2),
      O => \plusOp__0\(2)
    );
\total_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => total_counter_reg(1),
      I1 => total_counter_reg(0),
      I2 => total_counter_reg(2),
      I3 => total_counter_reg(3),
      O => \plusOp__0\(3)
    );
\total_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => total_counter_reg(2),
      I1 => total_counter_reg(0),
      I2 => total_counter_reg(1),
      I3 => total_counter_reg(3),
      I4 => total_counter_reg(4),
      O => \plusOp__0\(4)
    );
\total_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => total_counter_reg(3),
      I1 => total_counter_reg(1),
      I2 => total_counter_reg(0),
      I3 => total_counter_reg(2),
      I4 => total_counter_reg(4),
      I5 => total_counter_reg(5),
      O => \plusOp__0\(5)
    );
\total_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_counter[10]_i_5_n_0\,
      I1 => total_counter_reg(6),
      O => \plusOp__0\(6)
    );
\total_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \total_counter[10]_i_5_n_0\,
      I1 => total_counter_reg(6),
      I2 => total_counter_reg(7),
      O => \plusOp__0\(7)
    );
\total_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => total_counter_reg(6),
      I1 => \total_counter[10]_i_5_n_0\,
      I2 => total_counter_reg(7),
      I3 => total_counter_reg(8),
      O => \plusOp__0\(8)
    );
\total_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => total_counter_reg(7),
      I1 => \total_counter[10]_i_5_n_0\,
      I2 => total_counter_reg(6),
      I3 => total_counter_reg(8),
      I4 => total_counter_reg(9),
      O => \plusOp__0\(9)
    );
\total_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(0),
      Q => total_counter_reg(0),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(10),
      Q => total_counter_reg(10),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(1),
      Q => total_counter_reg(1),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(2),
      Q => total_counter_reg(2),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(3),
      Q => total_counter_reg(3),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(4),
      Q => total_counter_reg(4),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(5),
      Q => total_counter_reg(5),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(6),
      Q => total_counter_reg(6),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(7),
      Q => total_counter_reg(7),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(8),
      Q => total_counter_reg(8),
      R => \total_counter[10]_i_1_n_0\
    );
\total_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \total_counter[10]_i_2_n_0\,
      D => \plusOp__0\(9),
      Q => total_counter_reg(9),
      R => \total_counter[10]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rx_test_playback_bram_0_0 is
  port (
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    playback_en : in STD_LOGIC;
    num_symbols : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_finish : out STD_LOGIC;
    BRAM_PORT_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    BRAM_PORT_clk : out STD_LOGIC;
    BRAM_PORT_dout : in STD_LOGIC_VECTOR ( 127 downto 0 );
    BRAM_PORT_rst : out STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    M_AXIS_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rx_test_playback_bram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rx_test_playback_bram_0_0 : entity is "rx_test_playback_bram_0_0,playback_bram,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rx_test_playback_bram_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of rx_test_playback_bram_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rx_test_playback_bram_0_0 : entity is "playback_bram,Vivado 2022.1";
end rx_test_playback_bram_0_0;

architecture STRUCTURE of rx_test_playback_bram_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_port_dout\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^axis_aclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BRAM_PORT_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT CLK";
  attribute X_INTERFACE_INFO of BRAM_PORT_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_rst : signal is "XIL_INTERFACENAME BRAM_PORT, MASTER_TYPE OTHER, MODE MASTER, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of M_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of M_AXIS_tlast : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "ASSOCIATED_BUSIF axis_aclk:M_AXIS, FREQ_HZ 249997498";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of BRAM_PORT_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute X_INTERFACE_INFO of BRAM_PORT_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT";
  attribute X_INTERFACE_INFO of M_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
begin
  BRAM_PORT_clk <= \^axis_aclk\;
  BRAM_PORT_rst <= \<const0>\;
  M_AXIS_tdata(127 downto 0) <= \^bram_port_dout\(127 downto 0);
  M_AXIS_tlast <= \<const0>\;
  \^axis_aclk\ <= axis_aclk;
  \^bram_port_dout\(127 downto 0) <= BRAM_PORT_dout(127 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.rx_test_playback_bram_0_0_playback_bram
     port map (
      BRAM_PORT_addr(13 downto 0) => BRAM_PORT_addr(13 downto 0),
      M_AXIS_tvalid => M_AXIS_tvalid,
      axis_aclk => \^axis_aclk\,
      num_symbols(3 downto 0) => num_symbols(3 downto 0),
      o_finish => o_finish,
      playback_en => playback_en
    );
end STRUCTURE;
