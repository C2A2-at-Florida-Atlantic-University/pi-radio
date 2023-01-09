// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:13 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rx_test_tlast_gen_0_0_sim_netlist.v
// Design      : rx_test_tlast_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rx_test_tlast_gen_0_0,tlast_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tlast_gen,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axis_aclk,
    axis_aresetn,
    i_start,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  input i_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire axis_aclk;
  wire axis_aresetn;
  wire i_start;
  wire [127:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign s_axis_tready = i_start;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen inst
       (.axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .i_start(i_start),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    s_axis_tdata,
    axis_aclk,
    s_axis_tvalid,
    axis_aresetn,
    i_start);
  output [127:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input [127:0]s_axis_tdata;
  input axis_aclk;
  input s_axis_tvalid;
  input axis_aresetn;
  input i_start;

  wire axis_aclk;
  wire axis_aresetn;
  wire [9:0]counter;
  wire \counter[5]_i_2_n_0 ;
  wire i_start;
  wire [127:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tvalid;
  wire m_axis_tvalid0;
  wire p_0_in;
  wire [9:0]p_1_in;
  wire [127:0]s_axis_tdata;
  wire s_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(counter[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter[1]_i_1 
       (.I0(s_axis_tvalid),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \counter[2]_i_1 
       (.I0(s_axis_tvalid),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \counter[3]_i_1 
       (.I0(s_axis_tvalid),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \counter[4]_i_1 
       (.I0(s_axis_tvalid),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[3]),
        .I5(counter[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \counter[5]_i_1 
       (.I0(s_axis_tvalid),
        .I1(\counter[5]_i_2_n_0 ),
        .I2(counter[4]),
        .I3(counter[3]),
        .I4(counter[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[5]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00EF000000)) 
    \counter[6]_i_1 
       (.I0(counter[7]),
        .I1(counter[9]),
        .I2(counter[8]),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast_i_3_n_0),
        .I5(counter[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \counter[7]_i_1 
       (.I0(s_axis_tvalid),
        .I1(counter[6]),
        .I2(m_axis_tlast_i_3_n_0),
        .I3(counter[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h2288888088888888)) 
    \counter[8]_i_1 
       (.I0(s_axis_tvalid),
        .I1(counter[8]),
        .I2(counter[9]),
        .I3(counter[7]),
        .I4(counter[6]),
        .I5(m_axis_tlast_i_3_n_0),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \counter[9]_i_1 
       (.I0(s_axis_tvalid),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(m_axis_tlast_i_3_n_0),
        .I4(counter[8]),
        .I5(counter[9]),
        .O(p_1_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[9]_i_2 
       (.I0(axis_aresetn),
        .O(p_0_in));
  FDCE \counter_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[0]),
        .Q(counter[0]));
  FDCE \counter_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[1]),
        .Q(counter[1]));
  FDCE \counter_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[2]),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[9]),
        .Q(counter[9]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[100] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[100]),
        .Q(m_axis_tdata[100]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[101] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[101]),
        .Q(m_axis_tdata[101]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[102] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[102]),
        .Q(m_axis_tdata[102]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[103] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[103]),
        .Q(m_axis_tdata[103]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[104] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[104]),
        .Q(m_axis_tdata[104]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[105] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[105]),
        .Q(m_axis_tdata[105]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[106] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[106]),
        .Q(m_axis_tdata[106]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[107] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[107]),
        .Q(m_axis_tdata[107]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[108] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[108]),
        .Q(m_axis_tdata[108]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[109] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[109]),
        .Q(m_axis_tdata[109]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[110] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[110]),
        .Q(m_axis_tdata[110]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[111] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[111]),
        .Q(m_axis_tdata[111]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[112] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[112]),
        .Q(m_axis_tdata[112]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[113] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[113]),
        .Q(m_axis_tdata[113]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[114] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[114]),
        .Q(m_axis_tdata[114]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[115] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[115]),
        .Q(m_axis_tdata[115]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[116] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[116]),
        .Q(m_axis_tdata[116]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[117] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[117]),
        .Q(m_axis_tdata[117]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[118] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[118]),
        .Q(m_axis_tdata[118]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[119] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[119]),
        .Q(m_axis_tdata[119]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[120] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[120]),
        .Q(m_axis_tdata[120]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[121] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[121]),
        .Q(m_axis_tdata[121]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[122] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[122]),
        .Q(m_axis_tdata[122]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[123] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[123]),
        .Q(m_axis_tdata[123]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[124] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[124]),
        .Q(m_axis_tdata[124]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[125] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[125]),
        .Q(m_axis_tdata[125]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[126] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[126]),
        .Q(m_axis_tdata[126]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[127] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[127]),
        .Q(m_axis_tdata[127]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[32] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[32]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[33] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[33]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[34] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[34]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[35] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[35]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[36] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[36]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[37] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[37]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[38] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[38]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[39] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[39]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[40] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[40]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[41] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[41]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[42] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[42]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[43] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[43]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[44] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[44]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[45] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[45]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[46] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[46]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[47] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[47]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[48] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[48]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[49] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[49]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[50] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[50]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[51] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[51]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[52] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[52]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[53] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[53]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[54] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[54]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[55] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[55]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[56] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[56]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[57] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[57]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[58] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[58]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[59] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[59]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[60] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[60]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[61] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[61]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[62] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[62]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[63] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[63]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[64] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[64]),
        .Q(m_axis_tdata[64]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[65] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[65]),
        .Q(m_axis_tdata[65]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[66] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[66]),
        .Q(m_axis_tdata[66]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[67] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[67]),
        .Q(m_axis_tdata[67]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[68] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[68]),
        .Q(m_axis_tdata[68]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[69] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[69]),
        .Q(m_axis_tdata[69]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[70] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[70]),
        .Q(m_axis_tdata[70]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[71] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[71]),
        .Q(m_axis_tdata[71]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[72] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[72]),
        .Q(m_axis_tdata[72]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[73] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[73]),
        .Q(m_axis_tdata[73]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[74] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[74]),
        .Q(m_axis_tdata[74]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[75] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[75]),
        .Q(m_axis_tdata[75]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[76] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[76]),
        .Q(m_axis_tdata[76]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[77] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[77]),
        .Q(m_axis_tdata[77]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[78] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[78]),
        .Q(m_axis_tdata[78]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[79] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[79]),
        .Q(m_axis_tdata[79]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[80] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[80]),
        .Q(m_axis_tdata[80]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[81] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[81]),
        .Q(m_axis_tdata[81]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[82] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[82]),
        .Q(m_axis_tdata[82]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[83] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[83]),
        .Q(m_axis_tdata[83]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[84] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[84]),
        .Q(m_axis_tdata[84]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[85] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[85]),
        .Q(m_axis_tdata[85]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[86] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[86]),
        .Q(m_axis_tdata[86]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[87] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[87]),
        .Q(m_axis_tdata[87]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[88] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[88]),
        .Q(m_axis_tdata[88]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[89] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[89]),
        .Q(m_axis_tdata[89]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[90] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[90]),
        .Q(m_axis_tdata[90]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[91] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[91]),
        .Q(m_axis_tdata[91]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[92] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[92]),
        .Q(m_axis_tdata[92]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[93] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[93]),
        .Q(m_axis_tdata[93]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[94] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[94]),
        .Q(m_axis_tdata[94]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[95] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[95]),
        .Q(m_axis_tdata[95]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[96] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[96]),
        .Q(m_axis_tdata[96]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[97] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[97]),
        .Q(m_axis_tdata[97]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[98] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[98]),
        .Q(m_axis_tdata[98]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[99] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[99]),
        .Q(m_axis_tdata[99]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h3000AAAA)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast),
        .I1(m_axis_tlast_i_2_n_0),
        .I2(m_axis_tlast_i_3_n_0),
        .I3(s_axis_tvalid),
        .I4(axis_aresetn),
        .O(m_axis_tlast_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    m_axis_tlast_i_2
       (.I0(counter[8]),
        .I1(counter[9]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(m_axis_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_axis_tlast_i_3
       (.I0(counter[3]),
        .I1(counter[4]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[2]),
        .I5(counter[5]),
        .O(m_axis_tlast_i_3_n_0));
  FDRE m_axis_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_i_1
       (.I0(i_start),
        .I1(s_axis_tvalid),
        .O(m_axis_tvalid0));
  FDRE m_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(m_axis_tvalid0),
        .Q(m_axis_tvalid),
        .R(1'b0));
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
