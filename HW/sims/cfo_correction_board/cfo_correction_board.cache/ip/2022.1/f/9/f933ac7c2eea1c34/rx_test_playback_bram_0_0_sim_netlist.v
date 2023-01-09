// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Oct 20 23:10:47 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rx_test_playback_bram_0_0_sim_netlist.v
// Design      : rx_test_playback_bram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_playback_bram
   (BRAM_PORT_addr,
    M_AXIS_tvalid,
    o_finish,
    playback_en,
    num_symbols,
    axis_aclk);
  output [13:0]BRAM_PORT_addr;
  output M_AXIS_tvalid;
  output o_finish;
  input playback_en;
  input [3:0]num_symbols;
  input axis_aclk;

  wire [13:0]BRAM_PORT_addr;
  wire M_AXIS_tvalid;
  wire axis_aclk;
  wire \bram_addr[13]_i_1_n_0 ;
  wire clear;
  wire finish_i_1_n_0;
  wire finish_i_2_n_0;
  wire [3:0]num_symbols;
  wire o_finish;
  wire playback_en;
  wire [3:0]plusOp;
  wire [10:0]plusOp__0;
  wire [13:0]plusOp__1;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire \symbol_counter[3]_i_2_n_0 ;
  wire \symbol_counter[3]_i_4_n_0 ;
  wire \symbol_counter[3]_i_5_n_0 ;
  wire \symbol_counter[3]_i_6_n_0 ;
  wire [3:0]symbol_counter_reg;
  wire \total_counter[10]_i_1_n_0 ;
  wire \total_counter[10]_i_2_n_0 ;
  wire \total_counter[10]_i_4_n_0 ;
  wire \total_counter[10]_i_5_n_0 ;
  wire [10:0]total_counter_reg;
  wire [7:4]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:5]NLW_plusOp_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    M_AXIS_tvalid_INST_0
       (.I0(playback_en),
        .I1(o_finish),
        .O(M_AXIS_tvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[0]_i_1 
       (.I0(BRAM_PORT_addr[0]),
        .O(plusOp__1[0]));
  LUT4 #(
    .INIT(16'h82FF)) 
    \bram_addr[13]_i_1 
       (.I0(finish_i_2_n_0),
        .I1(num_symbols[3]),
        .I2(symbol_counter_reg[3]),
        .I3(playback_en),
        .O(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[0]),
        .Q(BRAM_PORT_addr[0]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[10]),
        .Q(BRAM_PORT_addr[10]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[11]),
        .Q(BRAM_PORT_addr[11]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[12]),
        .Q(BRAM_PORT_addr[12]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[13]),
        .Q(BRAM_PORT_addr[13]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[1]),
        .Q(BRAM_PORT_addr[1]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[2]),
        .Q(BRAM_PORT_addr[2]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[3]),
        .Q(BRAM_PORT_addr[3]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[4]),
        .Q(BRAM_PORT_addr[4]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[5]),
        .Q(BRAM_PORT_addr[5]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[6]),
        .Q(BRAM_PORT_addr[6]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[7]),
        .Q(BRAM_PORT_addr[7]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[8]),
        .Q(BRAM_PORT_addr[8]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE OTHER, MODE MASTER" *) 
  FDRE \bram_addr_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp__1[9]),
        .Q(BRAM_PORT_addr[9]),
        .R(\bram_addr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEBAA0000)) 
    finish_i_1
       (.I0(o_finish),
        .I1(symbol_counter_reg[3]),
        .I2(num_symbols[3]),
        .I3(finish_i_2_n_0),
        .I4(playback_en),
        .O(finish_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    finish_i_2
       (.I0(symbol_counter_reg[0]),
        .I1(num_symbols[0]),
        .I2(num_symbols[2]),
        .I3(symbol_counter_reg[2]),
        .I4(num_symbols[1]),
        .I5(symbol_counter_reg[1]),
        .O(finish_i_2_n_0));
  FDRE finish_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(finish_i_1_n_0),
        .Q(o_finish),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(BRAM_PORT_addr[0]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__1[8:1]),
        .S(BRAM_PORT_addr[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:4],plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:5],plusOp__1[13:9]}),
        .S({1'b0,1'b0,1'b0,BRAM_PORT_addr[13:9]}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \symbol_counter[0]_i_1 
       (.I0(symbol_counter_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \symbol_counter[1]_i_1 
       (.I0(symbol_counter_reg[0]),
        .I1(symbol_counter_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \symbol_counter[2]_i_1 
       (.I0(symbol_counter_reg[0]),
        .I1(symbol_counter_reg[1]),
        .I2(symbol_counter_reg[2]),
        .O(plusOp[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \symbol_counter[3]_i_1 
       (.I0(playback_en),
        .O(clear));
  LUT6 #(
    .INIT(64'h0001010101010001)) 
    \symbol_counter[3]_i_2 
       (.I0(\symbol_counter[3]_i_4_n_0 ),
        .I1(\symbol_counter[3]_i_5_n_0 ),
        .I2(\symbol_counter[3]_i_6_n_0 ),
        .I3(finish_i_2_n_0),
        .I4(num_symbols[3]),
        .I5(symbol_counter_reg[3]),
        .O(\symbol_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \symbol_counter[3]_i_3 
       (.I0(symbol_counter_reg[1]),
        .I1(symbol_counter_reg[0]),
        .I2(symbol_counter_reg[2]),
        .I3(symbol_counter_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \symbol_counter[3]_i_4 
       (.I0(total_counter_reg[7]),
        .I1(total_counter_reg[8]),
        .I2(total_counter_reg[5]),
        .I3(total_counter_reg[6]),
        .O(\symbol_counter[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \symbol_counter[3]_i_5 
       (.I0(total_counter_reg[3]),
        .I1(total_counter_reg[4]),
        .I2(total_counter_reg[1]),
        .I3(total_counter_reg[2]),
        .O(\symbol_counter[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \symbol_counter[3]_i_6 
       (.I0(total_counter_reg[10]),
        .I1(total_counter_reg[0]),
        .I2(total_counter_reg[9]),
        .O(\symbol_counter[3]_i_6_n_0 ));
  FDRE \symbol_counter_reg[0] 
       (.C(axis_aclk),
        .CE(\symbol_counter[3]_i_2_n_0 ),
        .D(plusOp[0]),
        .Q(symbol_counter_reg[0]),
        .R(clear));
  FDRE \symbol_counter_reg[1] 
       (.C(axis_aclk),
        .CE(\symbol_counter[3]_i_2_n_0 ),
        .D(plusOp[1]),
        .Q(symbol_counter_reg[1]),
        .R(clear));
  FDRE \symbol_counter_reg[2] 
       (.C(axis_aclk),
        .CE(\symbol_counter[3]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(symbol_counter_reg[2]),
        .R(clear));
  FDRE \symbol_counter_reg[3] 
       (.C(axis_aclk),
        .CE(\symbol_counter[3]_i_2_n_0 ),
        .D(plusOp[3]),
        .Q(symbol_counter_reg[3]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \total_counter[0]_i_1 
       (.I0(total_counter_reg[0]),
        .O(plusOp__0[0]));
  LUT6 #(
    .INIT(64'h00000007FFFFFFFF)) 
    \total_counter[10]_i_1 
       (.I0(\total_counter[10]_i_4_n_0 ),
        .I1(finish_i_2_n_0),
        .I2(\symbol_counter[3]_i_6_n_0 ),
        .I3(\symbol_counter[3]_i_5_n_0 ),
        .I4(\symbol_counter[3]_i_4_n_0 ),
        .I5(playback_en),
        .O(\total_counter[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7D)) 
    \total_counter[10]_i_2 
       (.I0(finish_i_2_n_0),
        .I1(num_symbols[3]),
        .I2(symbol_counter_reg[3]),
        .O(\total_counter[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \total_counter[10]_i_3 
       (.I0(total_counter_reg[8]),
        .I1(total_counter_reg[6]),
        .I2(\total_counter[10]_i_5_n_0 ),
        .I3(total_counter_reg[7]),
        .I4(total_counter_reg[9]),
        .I5(total_counter_reg[10]),
        .O(plusOp__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \total_counter[10]_i_4 
       (.I0(num_symbols[3]),
        .I1(symbol_counter_reg[3]),
        .O(\total_counter[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \total_counter[10]_i_5 
       (.I0(total_counter_reg[5]),
        .I1(total_counter_reg[3]),
        .I2(total_counter_reg[1]),
        .I3(total_counter_reg[0]),
        .I4(total_counter_reg[2]),
        .I5(total_counter_reg[4]),
        .O(\total_counter[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_counter[1]_i_1 
       (.I0(total_counter_reg[0]),
        .I1(total_counter_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \total_counter[2]_i_1 
       (.I0(total_counter_reg[0]),
        .I1(total_counter_reg[1]),
        .I2(total_counter_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \total_counter[3]_i_1 
       (.I0(total_counter_reg[1]),
        .I1(total_counter_reg[0]),
        .I2(total_counter_reg[2]),
        .I3(total_counter_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \total_counter[4]_i_1 
       (.I0(total_counter_reg[2]),
        .I1(total_counter_reg[0]),
        .I2(total_counter_reg[1]),
        .I3(total_counter_reg[3]),
        .I4(total_counter_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \total_counter[5]_i_1 
       (.I0(total_counter_reg[3]),
        .I1(total_counter_reg[1]),
        .I2(total_counter_reg[0]),
        .I3(total_counter_reg[2]),
        .I4(total_counter_reg[4]),
        .I5(total_counter_reg[5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \total_counter[6]_i_1 
       (.I0(\total_counter[10]_i_5_n_0 ),
        .I1(total_counter_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \total_counter[7]_i_1 
       (.I0(\total_counter[10]_i_5_n_0 ),
        .I1(total_counter_reg[6]),
        .I2(total_counter_reg[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \total_counter[8]_i_1 
       (.I0(total_counter_reg[6]),
        .I1(\total_counter[10]_i_5_n_0 ),
        .I2(total_counter_reg[7]),
        .I3(total_counter_reg[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \total_counter[9]_i_1 
       (.I0(total_counter_reg[7]),
        .I1(\total_counter[10]_i_5_n_0 ),
        .I2(total_counter_reg[6]),
        .I3(total_counter_reg[8]),
        .I4(total_counter_reg[9]),
        .O(plusOp__0[9]));
  FDRE \total_counter_reg[0] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[0]),
        .Q(total_counter_reg[0]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[10] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[10]),
        .Q(total_counter_reg[10]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[1] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[1]),
        .Q(total_counter_reg[1]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[2] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[2]),
        .Q(total_counter_reg[2]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[3] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[3]),
        .Q(total_counter_reg[3]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[4] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[4]),
        .Q(total_counter_reg[4]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[5] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[5]),
        .Q(total_counter_reg[5]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[6] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[6]),
        .Q(total_counter_reg[6]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[7] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[7]),
        .Q(total_counter_reg[7]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[8] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[8]),
        .Q(total_counter_reg[8]),
        .R(\total_counter[10]_i_1_n_0 ));
  FDRE \total_counter_reg[9] 
       (.C(axis_aclk),
        .CE(\total_counter[10]_i_2_n_0 ),
        .D(plusOp__0[9]),
        .Q(total_counter_reg[9]),
        .R(\total_counter[10]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "rx_test_playback_bram_0_0,playback_bram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "playback_bram,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axis_aclk,
    axis_aresetn,
    playback_en,
    num_symbols,
    o_finish,
    BRAM_PORT_addr,
    BRAM_PORT_clk,
    BRAM_PORT_dout,
    BRAM_PORT_rst,
    M_AXIS_tdata,
    M_AXIS_tvalid,
    M_AXIS_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:M_AXIS, FREQ_HZ 249997498" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  input playback_en;
  input [3:0]num_symbols;
  output o_finish;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) output [13:0]BRAM_PORT_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *) output BRAM_PORT_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *) input [127:0]BRAM_PORT_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORT, MASTER_TYPE OTHER, MODE MASTER, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) output BRAM_PORT_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [127:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output M_AXIS_tlast;

  wire \<const0> ;
  wire [13:0]BRAM_PORT_addr;
  wire [127:0]BRAM_PORT_dout;
  wire M_AXIS_tvalid;
  wire axis_aclk;
  wire [3:0]num_symbols;
  wire o_finish;
  wire playback_en;

  assign BRAM_PORT_clk = axis_aclk;
  assign BRAM_PORT_rst = \<const0> ;
  assign M_AXIS_tdata[127:0] = BRAM_PORT_dout;
  assign M_AXIS_tlast = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_playback_bram inst
       (.BRAM_PORT_addr(BRAM_PORT_addr),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .axis_aclk(axis_aclk),
        .num_symbols(num_symbols),
        .o_finish(o_finish),
        .playback_en(playback_en));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
