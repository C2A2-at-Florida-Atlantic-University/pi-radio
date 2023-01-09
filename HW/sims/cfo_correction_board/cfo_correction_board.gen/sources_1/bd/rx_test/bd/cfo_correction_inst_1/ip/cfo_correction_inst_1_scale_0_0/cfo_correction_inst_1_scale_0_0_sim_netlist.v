// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Oct 19 00:26:53 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_scale_0_0/cfo_correction_inst_1_scale_0_0_sim_netlist.v
// Design      : cfo_correction_inst_1_scale_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cfo_correction_inst_1_scale_0_0,scale,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "scale,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module cfo_correction_inst_1_scale_0_0
   (axis_aclk,
    axis_aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    m_axis_tdata,
    m_axis_tvalid,
    i_symbol,
    o_negative_freq);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, INSERT_VIP 0" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  input i_symbol;
  output o_negative_freq;

  wire \<const0> ;
  wire axis_aclk;
  wire i_symbol;
  wire [28:4]\^m_axis_tdata ;
  wire m_axis_tvalid;
  wire o_negative_freq;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [31:0]NLW_inst_m_axis_tdata_UNCONNECTED;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28:4] = \^m_axis_tdata [28:4];
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  cfo_correction_inst_1_scale_0_0_scale inst
       (.axis_aclk(axis_aclk),
        .axis_aresetn(1'b0),
        .i_symbol(i_symbol),
        .m_axis_tdata({NLW_inst_m_axis_tdata_UNCONNECTED[31:29],\^m_axis_tdata ,NLW_inst_m_axis_tdata_UNCONNECTED[3:0]}),
        .m_axis_tvalid(m_axis_tvalid),
        .o_negative_freq(o_negative_freq),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "dsp_macro_0" *) 
(* X_CORE_INFO = "dsp_macro_v1_0_2,Vivado 2022.1" *) 
module cfo_correction_inst_1_scale_0_0_dsp_macro_0
   (CLK,
    A,
    B,
    C,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [1:0]C;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [45:0]P;

  wire \<const0> ;
  wire [26:0]A;
  wire CLK;
  wire [45:21]\^P ;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [20:0]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  assign P[45:21] = \^P [45:21];
  assign P[20] = \<const0> ;
  assign P[19] = \<const0> ;
  assign P[18] = \<const0> ;
  assign P[17] = \<const0> ;
  assign P[16] = \<const0> ;
  assign P[15] = \<const0> ;
  assign P[14] = \<const0> ;
  assign P[13] = \<const0> ;
  assign P[12] = \<const0> ;
  assign P[11] = \<const0> ;
  assign P[10] = \<const0> ;
  assign P[9] = \<const0> ;
  assign P[8] = \<const0> ;
  assign P[7] = \<const0> ;
  assign P[6] = \<const0> ;
  assign P[5] = \<const0> ;
  assign P[4] = \<const0> ;
  assign P[3] = \<const0> ;
  assign P[2] = \<const0> ;
  assign P[1] = \<const0> ;
  assign P[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "2" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100111000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "45" *) 
  (* C_REG_CONFIG = "00000000000011100011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  cfo_correction_inst_1_scale_0_0_dsp_macro_v1_0_2 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B({1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P({\^P ,NLW_U0_P_UNCONNECTED[20:0]}),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* ORIG_REF_NAME = "scale" *) 
module cfo_correction_inst_1_scale_0_0_scale
   (axis_aclk,
    axis_aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    m_axis_tdata,
    m_axis_tvalid,
    i_symbol,
    o_negative_freq);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498" *) input axis_aclk;
  input axis_aresetn;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input i_symbol;
  output o_negative_freq;

  wire \<const0> ;
  wire [26:0]A;
  wire [45:21]P;
  wire axis_aclk;
  wire dsp_macro_0_inst_i_28_n_2;
  wire dsp_macro_0_inst_i_28_n_3;
  wire dsp_macro_0_inst_i_28_n_4;
  wire dsp_macro_0_inst_i_28_n_5;
  wire dsp_macro_0_inst_i_28_n_6;
  wire dsp_macro_0_inst_i_28_n_7;
  wire dsp_macro_0_inst_i_29_n_0;
  wire dsp_macro_0_inst_i_29_n_1;
  wire dsp_macro_0_inst_i_29_n_2;
  wire dsp_macro_0_inst_i_29_n_3;
  wire dsp_macro_0_inst_i_29_n_4;
  wire dsp_macro_0_inst_i_29_n_5;
  wire dsp_macro_0_inst_i_29_n_6;
  wire dsp_macro_0_inst_i_29_n_7;
  wire dsp_macro_0_inst_i_30_n_0;
  wire dsp_macro_0_inst_i_30_n_1;
  wire dsp_macro_0_inst_i_30_n_2;
  wire dsp_macro_0_inst_i_30_n_3;
  wire dsp_macro_0_inst_i_30_n_4;
  wire dsp_macro_0_inst_i_30_n_5;
  wire dsp_macro_0_inst_i_30_n_6;
  wire dsp_macro_0_inst_i_30_n_7;
  wire dsp_macro_0_inst_i_31_n_0;
  wire dsp_macro_0_inst_i_31_n_1;
  wire dsp_macro_0_inst_i_31_n_2;
  wire dsp_macro_0_inst_i_31_n_3;
  wire dsp_macro_0_inst_i_31_n_4;
  wire dsp_macro_0_inst_i_31_n_5;
  wire dsp_macro_0_inst_i_31_n_6;
  wire dsp_macro_0_inst_i_31_n_7;
  wire i_symbol;
  wire [28:4]\^m_axis_tdata ;
  wire \m_axis_tdata[28]_i_1_n_0 ;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire [31:5]minusOp;
  wire o_negative_freq;
  wire o_negative_freq_i_1_n_0;
  wire [31:0]p_0_in;
  wire [28:4]p_1_in;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \tvalid_pipe_reg[2]_srl3_n_0 ;
  wire w_axis_tvalid;
  wire [20:0]NLW_dsp_macro_0_inst_P_UNCONNECTED;
  wire [7:6]NLW_dsp_macro_0_inst_i_28_CO_UNCONNECTED;
  wire [7:7]NLW_dsp_macro_0_inst_i_28_O_UNCONNECTED;
  wire [3:0]NLW_dsp_macro_0_inst_i_31_O_UNCONNECTED;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28:4] = \^m_axis_tdata [28:4];
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_2,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.1" *) 
  cfo_correction_inst_1_scale_0_0_dsp_macro_0 dsp_macro_0_inst
       (.A(A),
        .B({1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .C({1'b0,1'b0}),
        .CLK(axis_aclk),
        .P({P,NLW_dsp_macro_0_inst_P_UNCONNECTED[20:0]}));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dsp_macro_0_inst_i_1
       (.I0(s_axis_tdata[31]),
        .I1(minusOp[31]),
        .O(A[26]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_10
       (.I0(minusOp[22]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[22]),
        .O(A[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_11
       (.I0(minusOp[21]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[21]),
        .O(A[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_12
       (.I0(minusOp[20]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[20]),
        .O(A[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_13
       (.I0(minusOp[19]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[19]),
        .O(A[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_14
       (.I0(minusOp[18]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[18]),
        .O(A[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_15
       (.I0(minusOp[17]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[17]),
        .O(A[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_16
       (.I0(minusOp[16]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[16]),
        .O(A[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_17
       (.I0(minusOp[15]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[15]),
        .O(A[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_18
       (.I0(minusOp[14]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[14]),
        .O(A[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_19
       (.I0(minusOp[13]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[13]),
        .O(A[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_2
       (.I0(minusOp[30]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[30]),
        .O(A[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_20
       (.I0(minusOp[12]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[12]),
        .O(A[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_21
       (.I0(minusOp[11]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[11]),
        .O(A[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_22
       (.I0(minusOp[10]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[10]),
        .O(A[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_23
       (.I0(minusOp[9]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[9]),
        .O(A[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_24
       (.I0(minusOp[8]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[8]),
        .O(A[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_25
       (.I0(minusOp[7]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[7]),
        .O(A[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_26
       (.I0(minusOp[6]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[6]),
        .O(A[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_27
       (.I0(minusOp[5]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[5]),
        .O(A[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dsp_macro_0_inst_i_28
       (.CI(dsp_macro_0_inst_i_29_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dsp_macro_0_inst_i_28_CO_UNCONNECTED[7:6],dsp_macro_0_inst_i_28_n_2,dsp_macro_0_inst_i_28_n_3,dsp_macro_0_inst_i_28_n_4,dsp_macro_0_inst_i_28_n_5,dsp_macro_0_inst_i_28_n_6,dsp_macro_0_inst_i_28_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_dsp_macro_0_inst_i_28_O_UNCONNECTED[7],minusOp[31:25]}),
        .S({1'b0,p_0_in[31:25]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dsp_macro_0_inst_i_29
       (.CI(dsp_macro_0_inst_i_30_n_0),
        .CI_TOP(1'b0),
        .CO({dsp_macro_0_inst_i_29_n_0,dsp_macro_0_inst_i_29_n_1,dsp_macro_0_inst_i_29_n_2,dsp_macro_0_inst_i_29_n_3,dsp_macro_0_inst_i_29_n_4,dsp_macro_0_inst_i_29_n_5,dsp_macro_0_inst_i_29_n_6,dsp_macro_0_inst_i_29_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(minusOp[24:17]),
        .S(p_0_in[24:17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_3
       (.I0(minusOp[29]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[29]),
        .O(A[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dsp_macro_0_inst_i_30
       (.CI(dsp_macro_0_inst_i_31_n_0),
        .CI_TOP(1'b0),
        .CO({dsp_macro_0_inst_i_30_n_0,dsp_macro_0_inst_i_30_n_1,dsp_macro_0_inst_i_30_n_2,dsp_macro_0_inst_i_30_n_3,dsp_macro_0_inst_i_30_n_4,dsp_macro_0_inst_i_30_n_5,dsp_macro_0_inst_i_30_n_6,dsp_macro_0_inst_i_30_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(minusOp[16:9]),
        .S(p_0_in[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dsp_macro_0_inst_i_31
       (.CI(p_0_in[0]),
        .CI_TOP(1'b0),
        .CO({dsp_macro_0_inst_i_31_n_0,dsp_macro_0_inst_i_31_n_1,dsp_macro_0_inst_i_31_n_2,dsp_macro_0_inst_i_31_n_3,dsp_macro_0_inst_i_31_n_4,dsp_macro_0_inst_i_31_n_5,dsp_macro_0_inst_i_31_n_6,dsp_macro_0_inst_i_31_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({minusOp[8:5],NLW_dsp_macro_0_inst_i_31_O_UNCONNECTED[3:0]}),
        .S(p_0_in[8:1]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_32
       (.I0(s_axis_tdata[31]),
        .O(p_0_in[31]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_33
       (.I0(s_axis_tdata[30]),
        .O(p_0_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_34
       (.I0(s_axis_tdata[29]),
        .O(p_0_in[29]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_35
       (.I0(s_axis_tdata[28]),
        .O(p_0_in[28]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_36
       (.I0(s_axis_tdata[27]),
        .O(p_0_in[27]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_37
       (.I0(s_axis_tdata[26]),
        .O(p_0_in[26]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_38
       (.I0(s_axis_tdata[25]),
        .O(p_0_in[25]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_39
       (.I0(s_axis_tdata[24]),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_4
       (.I0(minusOp[28]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[28]),
        .O(A[23]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_40
       (.I0(s_axis_tdata[23]),
        .O(p_0_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_41
       (.I0(s_axis_tdata[22]),
        .O(p_0_in[22]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_42
       (.I0(s_axis_tdata[21]),
        .O(p_0_in[21]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_43
       (.I0(s_axis_tdata[20]),
        .O(p_0_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_44
       (.I0(s_axis_tdata[19]),
        .O(p_0_in[19]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_45
       (.I0(s_axis_tdata[18]),
        .O(p_0_in[18]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_46
       (.I0(s_axis_tdata[17]),
        .O(p_0_in[17]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_47
       (.I0(s_axis_tdata[16]),
        .O(p_0_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_48
       (.I0(s_axis_tdata[15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_49
       (.I0(s_axis_tdata[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_5
       (.I0(minusOp[27]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[27]),
        .O(A[22]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_50
       (.I0(s_axis_tdata[13]),
        .O(p_0_in[13]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_51
       (.I0(s_axis_tdata[12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_52
       (.I0(s_axis_tdata[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_53
       (.I0(s_axis_tdata[10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_54
       (.I0(s_axis_tdata[9]),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_55
       (.I0(s_axis_tdata[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_56
       (.I0(s_axis_tdata[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_57
       (.I0(s_axis_tdata[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_58
       (.I0(s_axis_tdata[6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_59
       (.I0(s_axis_tdata[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_6
       (.I0(minusOp[26]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[26]),
        .O(A[21]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_60
       (.I0(s_axis_tdata[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_61
       (.I0(s_axis_tdata[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_62
       (.I0(s_axis_tdata[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    dsp_macro_0_inst_i_63
       (.I0(s_axis_tdata[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_7
       (.I0(minusOp[25]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[25]),
        .O(A[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_8
       (.I0(minusOp[24]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[24]),
        .O(A[19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dsp_macro_0_inst_i_9
       (.I0(minusOp[23]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[23]),
        .O(A[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[10]_i_1 
       (.I0(P[27]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[11]_i_1 
       (.I0(P[28]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[12]_i_1 
       (.I0(P[29]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[13]_i_1 
       (.I0(P[30]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[14]_i_1 
       (.I0(P[31]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_i_1 
       (.I0(P[32]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[16]_i_1 
       (.I0(P[33]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[17]_i_1 
       (.I0(P[34]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[18]_i_1 
       (.I0(P[35]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[19]_i_1 
       (.I0(P[36]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[20]_i_1 
       (.I0(P[37]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[21]_i_1 
       (.I0(P[38]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[22]_i_1 
       (.I0(P[39]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[23]_i_1 
       (.I0(P[40]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[24]_i_1 
       (.I0(P[41]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[25]_i_1 
       (.I0(P[42]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[26]_i_1 
       (.I0(P[43]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[27]_i_1 
       (.I0(P[44]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[27]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_tdata[28]_i_1 
       (.I0(w_axis_tvalid),
        .I1(i_symbol),
        .O(\m_axis_tdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[28]_i_2 
       (.I0(P[45]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[4]_i_1 
       (.I0(P[21]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[5]_i_1 
       (.I0(P[22]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[6]_i_1 
       (.I0(P[23]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[7]_i_1 
       (.I0(P[24]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[8]_i_1 
       (.I0(P[25]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[9]_i_1 
       (.I0(P[26]),
        .I1(w_axis_tvalid),
        .I2(i_symbol),
        .O(p_1_in[9]));
  FDRE \m_axis_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\^m_axis_tdata [10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\^m_axis_tdata [11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\^m_axis_tdata [12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\^m_axis_tdata [13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\^m_axis_tdata [14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\^m_axis_tdata [15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\^m_axis_tdata [16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(\^m_axis_tdata [17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(\^m_axis_tdata [18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(\^m_axis_tdata [19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(\^m_axis_tdata [20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(\^m_axis_tdata [21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(\^m_axis_tdata [22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(\^m_axis_tdata [23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(\^m_axis_tdata [24]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(\^m_axis_tdata [25]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(\^m_axis_tdata [26]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(\^m_axis_tdata [27]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(\^m_axis_tdata [28]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\^m_axis_tdata [4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\^m_axis_tdata [5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\^m_axis_tdata [6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\^m_axis_tdata [7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\^m_axis_tdata [8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(\m_axis_tdata[28]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\^m_axis_tdata [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF8)) 
    m_axis_tvalid_i_1
       (.I0(m_axis_tvalid),
        .I1(i_symbol),
        .I2(w_axis_tvalid),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    o_negative_freq_i_1
       (.I0(o_negative_freq),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tvalid),
        .O(o_negative_freq_i_1_n_0));
  FDRE o_negative_freq_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(o_negative_freq_i_1_n_0),
        .Q(o_negative_freq),
        .R(1'b0));
  (* srl_bus_name = "inst/\tvalid_pipe_reg " *) 
  (* srl_name = "inst/\tvalid_pipe_reg[2]_srl3 " *) 
  SRL16E \tvalid_pipe_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(axis_aclk),
        .D(s_axis_tvalid),
        .Q(\tvalid_pipe_reg[2]_srl3_n_0 ));
  FDRE \tvalid_pipe_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(\tvalid_pipe_reg[2]_srl3_n_0 ),
        .Q(w_axis_tvalid),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hpQi2e575oxFDL0FfhJYpDn2Z7sr/nCnfofAXr4j6Wi2vcOZfA2l2OkTdSKknlCSp6IMPD0eHZFM
aqMcygijtcMSA03ISV3kqHHp6+6oDzDybrWzXpDWrpQKeOX5VzAspaQybgWvz7dCX6vIokYXlC1k
HUUc+Du4UI3rcjanmTM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l5Q7g8QwNFxeXCSTeheUamCwYPHM4YRouugZB2FHLf01oaJDP5uN23NV6E3v4oxWaqnwKPUJb6ww
S6HJw8IgqJ5bVE1Xxl9jan3gyYu6tvE3H7alei7rN4gPadbFjLwAOlT6rszsd8JmjY+RD4h43dTR
Zp7/llkBHrde+C2qQdNOUEnkeT14NQClMpKoSNITi5yQOix+5cI3q+T7Bqn65O7aGCfBgvuREshq
6Gfo74CtoCbwTuSUjdbmLYwI/MFnWOS6en7x+ia+WKqWj9YrWjfUCy8txj8hZjb4sCPQKFzN8UwT
nLeLrDWqea92fbJoN/EDhnmuuPBTW/1cBNBBlA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YLmdwWwVwjwR7xxsZJO6nTeZvEpSyl5/kFiTBVICsMw7Wyk8IZioDZLx2d1A/HiRyrVNhlIRXScN
VrWPhFB2yYVCoJPXf0KqD1f50Y9dNOdsiZSkX+V5kuGZyPAquml/+eRBcgSZigDcNqhOBDVIVKUg
5MJsRWevOd9XaTlKW+U=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cHrHwj/OHXOSxE2scD822kVW7wJExChuOsnxBy9RNdjkQgteHHV6YsvR0emQtlJ0GIZNiz11himX
S/ittbr8jl+aDkB03CHSCLjzLJk7xBdvkwTjogb4CJ9cZd5DvBCIIdqtba9zEzZfLzyhkLQySHma
JrNGvEFKiEPTG629+wy8W7rsXcMA0L8tC+NomPSJYkWzdCeAqRfAd/DyYStpNndscgPmfn2gc7q/
Fj2twMI6DAlvyACIArrTd0F5q4RwkwFHHeQ6aJPNrcj5o09ZDDyo+QRssr0nboYYK6iIjNKX4pQr
ejdysDKPOiVLgegrye5keqnwenqRzl3uJpV/6w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nnbbI+BwyID4XoMrizSDP+jbZllz3yV1mmv6KNslMVw0sxrXKbrk408TmRsjvNSSuvhV51xndPA2
FU/wKzy7/AMDxbCMLjCG3u6MmyP2CX0pkDA3BTOIP1RCGzoDoEb83gFGy4nFfeR1pJFfhq9ds51u
juJObeDYjLjaaSktbcxa2wjR8foiPfeQsrERLidvnNNkPysqj7W5ZcFAw0ZPMd/v13jyfN/jqn1i
QmYQT4M7dy8otwubi6E5mHTAgo3FK9AXEahtK94r4/ZYi/nn0T6yS29la85vqokrwRum3oLIDWW4
RrHLa8e7Pot3ZVGSSDWbMhExi6pkElaBXKnLsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DAVdpP5vGcRTzrsFkjJ/uBmxnMYLnU6Yd1VGi3fICAEptToeKbjoM56Fqf/3+Cfd8mfBpvgkqcJO
pfY+YpKNjL2yDpjlxxyMkEha+w2YGizKz0pAEtp70R41DcKB7TvEJA7tJYxqftSlwsGGvwPUrYMC
nbXyJjNoHZ2Ll4Ozu3UZTmP03QzndDIDfmdippWBWBHYOjJtPviLjF1/hizxHax1JTVRawer9Qjr
HVuUQeDxcxrsc02s9iZ/r6iZWZQDgBP5bsxT8EeY4hH3/P58fA9+6lZu6oVDvJeudszCZD1TgyY2
KuYShAnut6vR6Ik+oRDL3Hrp5SQoaOCW524EgA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cKq1TGNuFnDKKcBOyi8e1K8ly+eMeHwVdchpbd+bxxXMpqSnkHpq5kg4iZw9cOYtpKuvS93u2hah
ZNVZf+4AH7FVHFnFtRlIXfTsZnd5cE411yuLelJz1nvpouBPk7pt4Z/iOqTD48yppmHZkkqCOu29
ESLnvCcvKtfqQCX0+hx8dGU2iXc8AovJo7YCt39ZO+Xjc1N6WfC6UJyy/KkYF1qcgNkPu0nKcBwg
JCpUlwfdmeO4oAb0dJxEVi3AyWCWb1zGThxsmDj0x6jY/ymMeDRNma0QdAWnClawUQy80EPah4x3
J4u57yx6daysrYXraEuhL1xsZb4XFB+14K6Njw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Re5fDPZ8EQVPdNEo11DCLuZaBRdc/VJLcPQkEfqHqXr8o7UCTkVHRnYup0/sMrR05rUbcVrX+y26
Zm7KX2M2vi9JNxUdyt8DzqkHtoWjd8ox70Md9MGyYeK44bwvM8my4DW2Wm9Lk9226xF4Qa0n3IIl
lQZWxrNI6H9XjV/BNrqFj+kBeNadHP5ihUPb2EmxXSwdgLkT1zMcUhQaMDxOBzIuAbkRYta/q8za
AzYQt1W3dqFUaiUUjlCj9fYcR8ZBMFpbp3Apje8nX5mVtAmk75DBgu5i8CjYvqpT/iziDeqqtahB
/arsycohVQ1PiCF7Z8siPzsiQym0WVpsiwGZmrCyuy8bykKzLnvUGHATPxXLzSpbh8sZvrGIu0b+
hmoM0a1pF7D2SjJJWLZnJJbzkOramPWLCkoXbMc+KgHQ6OpD1ow3bhmMLg8ZbTRMgJGpfxDNkXyK
+Skb1VkCste5U4nHFrKo7krNZZ2/wytN2CSUdkzF1wfY+K/4CzgnUCs2

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XVWUvZ/UpZ29GMy3XnymX67etmlfLX1Nc5lDCe3Fkh1pzSH0ihbTk0WE9uNfxhCf8deTSeul9LJH
AFPTiQiwkrIU9UQwnfo2xygbWbM3s3AF164xHmX2eegveVO7/ody+W2VwPqhx0nJzF7H2mOI+gFd
H9ZbDirzJXmOb6XX4H4UPFI2jCKk0g8k6n9hkO9ubyQWCValHZ4jd5SyFcQBUKMRosgR3zEL/FrT
9GeJty67V/+tdnWLZB42pnIHq13SObBDE6IhE6u0tLa6y0E5k3ZGicrRPFS2UKq7MQhtPlqMAqv/
4JCNyt5Ii3Brz3T2/Q78DbSBTS/xrLj8akB0xA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o554BP0+ypcNRRGtzgr/JhwpOK42ijCvnsJ/ZGEXGNbD7YOszcAtmtwJ6yD/BOWLsJFEh1TceNo6
tEgA5BZ5N660BJTOaBsfW0VaOmG0IjQVChovqTZyO8uZcwrCqp5pEFJRUPHSP2t89lKF9dVosQz2
kPjTKrUbBzOFxlMpyfHsH3iaz/tZ9Iwhm8UMSdYMfTs7KFLfQa5NwpZLDm185W4w8yRqnhzymUj2
CSalqGjIQkgrCjqQAoNZ+I2RVq7ZwHqV6zFtfm9BnYGQsg1w93oo+cre4NDD9Tw2HWSI8diMMM7U
MEUgr/2ewYskGNmaHA9l39KMEf2m1bZpSzm4mg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/A6G65j0faxauY4Ktb9W/fJYC61sH/GvDs2v67hs3wR2whvbWOOF45Uq3QrHS3q+erSOtNOqCfh
1Lw1YRtRDop4FNBWGTuKExCwkb5kDtZ9g2Yp48LX4oatEoKTXzUYtdp7IKixadZKthrSDbFm3RjY
FRbPKwyclK3D6E/qTj4T8AQOlYoOBa+YZOh6LjlCldMyO/GCJSeCQqysEGeIulDQ044gulIIM4hb
1L/Ewdp+bB1de2M1gfI9dConZ3+ByFqLNrtbTsrYcJVXEdjPg59wSqMv8t27cUIkgqbTosp6z3Ex
eTPM14RIbr4/0RVzoSqdYUA4vR/kQN5Buc45lg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52272)
`pragma protect data_block
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
h6Bk
`pragma protect end_protected
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
