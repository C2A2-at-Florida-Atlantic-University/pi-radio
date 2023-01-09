// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:13 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cfo_correction_inst_1_mux_0_0 -prefix
//               cfo_correction_inst_1_mux_0_0_ cfo_correction_inst_0_mux_0_0_sim_netlist.v
// Design      : cfo_correction_inst_0_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cfo_correction_inst_0_mux_0_0,mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mux,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module cfo_correction_inst_1_mux_0_0
   (axis_aclk,
    axis_aresetn,
    s_axis0_tdata,
    s_axis0_tvalid,
    s_axis0_tid,
    s_axis0_tuser,
    s_axis0_tlast,
    s_axis0_tready,
    s_axis1_tdata,
    s_axis1_tvalid,
    s_axis1_tid,
    s_axis1_tuser,
    s_axis1_tlast,
    s_axis1_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tstrb,
    i_select);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:s_axis1:s_axis0:m_axis, FREQ_HZ 249997498" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis0 TDATA" *) input [127:0]s_axis0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis0 TVALID" *) input s_axis0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis0 TID" *) input [7:0]s_axis0_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis0 TUSER" *) input [7:0]s_axis0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis0 TLAST" *) input s_axis0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis0 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis1 TDATA" *) input [127:0]s_axis1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis1 TVALID" *) input s_axis1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis1 TID" *) input [7:0]s_axis1_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis1 TUSER" *) input [7:0]s_axis1_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis1 TLAST" *) input s_axis1_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis1 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis1, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]m_axis_tstrb;
  input i_select;

  wire \<const0> ;
  wire \<const1> ;
  wire axis_aclk;
  wire i_select;
  wire [127:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tvalid;
  wire [127:0]s_axis0_tdata;
  wire s_axis0_tlast;
  wire s_axis0_tvalid;
  wire [127:0]s_axis1_tdata;
  wire s_axis1_tlast;
  wire s_axis1_tvalid;

  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const1> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const1> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const1> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const1> ;
  assign s_axis0_tready = \<const0> ;
  assign s_axis1_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  cfo_correction_inst_1_mux_0_0_mux inst
       (.axis_aclk(axis_aclk),
        .i_select(i_select),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis0_tdata(s_axis0_tdata),
        .s_axis0_tlast(s_axis0_tlast),
        .s_axis0_tvalid(s_axis0_tvalid),
        .s_axis1_tdata(s_axis1_tdata),
        .s_axis1_tlast(s_axis1_tlast),
        .s_axis1_tvalid(s_axis1_tvalid));
endmodule

module cfo_correction_inst_1_mux_0_0_mux
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    axis_aclk,
    s_axis1_tdata,
    s_axis0_tdata,
    i_select,
    s_axis1_tvalid,
    s_axis0_tvalid,
    s_axis1_tlast,
    s_axis0_tlast);
  output [127:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input axis_aclk;
  input [127:0]s_axis1_tdata;
  input [127:0]s_axis0_tdata;
  input i_select;
  input s_axis1_tvalid;
  input s_axis0_tvalid;
  input s_axis1_tlast;
  input s_axis0_tlast;

  wire axis_aclk;
  wire i_select;
  wire [127:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire [127:0]p_0_in;
  wire [127:0]s_axis0_tdata;
  wire s_axis0_tlast;
  wire s_axis0_tvalid;
  wire [127:0]s_axis1_tdata;
  wire s_axis1_tlast;
  wire s_axis1_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[0]_i_1 
       (.I0(s_axis1_tdata[0]),
        .I1(s_axis0_tdata[0]),
        .I2(i_select),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[100]_i_1 
       (.I0(s_axis1_tdata[100]),
        .I1(s_axis0_tdata[100]),
        .I2(i_select),
        .O(p_0_in[100]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[101]_i_1 
       (.I0(s_axis1_tdata[101]),
        .I1(s_axis0_tdata[101]),
        .I2(i_select),
        .O(p_0_in[101]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[102]_i_1 
       (.I0(s_axis1_tdata[102]),
        .I1(s_axis0_tdata[102]),
        .I2(i_select),
        .O(p_0_in[102]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[103]_i_1 
       (.I0(s_axis1_tdata[103]),
        .I1(s_axis0_tdata[103]),
        .I2(i_select),
        .O(p_0_in[103]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[104]_i_1 
       (.I0(s_axis1_tdata[104]),
        .I1(s_axis0_tdata[104]),
        .I2(i_select),
        .O(p_0_in[104]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[105]_i_1 
       (.I0(s_axis1_tdata[105]),
        .I1(s_axis0_tdata[105]),
        .I2(i_select),
        .O(p_0_in[105]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[106]_i_1 
       (.I0(s_axis1_tdata[106]),
        .I1(s_axis0_tdata[106]),
        .I2(i_select),
        .O(p_0_in[106]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[107]_i_1 
       (.I0(s_axis1_tdata[107]),
        .I1(s_axis0_tdata[107]),
        .I2(i_select),
        .O(p_0_in[107]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[108]_i_1 
       (.I0(s_axis1_tdata[108]),
        .I1(s_axis0_tdata[108]),
        .I2(i_select),
        .O(p_0_in[108]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[109]_i_1 
       (.I0(s_axis1_tdata[109]),
        .I1(s_axis0_tdata[109]),
        .I2(i_select),
        .O(p_0_in[109]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[10]_i_1 
       (.I0(s_axis1_tdata[10]),
        .I1(s_axis0_tdata[10]),
        .I2(i_select),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[110]_i_1 
       (.I0(s_axis1_tdata[110]),
        .I1(s_axis0_tdata[110]),
        .I2(i_select),
        .O(p_0_in[110]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[111]_i_1 
       (.I0(s_axis1_tdata[111]),
        .I1(s_axis0_tdata[111]),
        .I2(i_select),
        .O(p_0_in[111]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[112]_i_1 
       (.I0(s_axis1_tdata[112]),
        .I1(s_axis0_tdata[112]),
        .I2(i_select),
        .O(p_0_in[112]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[113]_i_1 
       (.I0(s_axis1_tdata[113]),
        .I1(s_axis0_tdata[113]),
        .I2(i_select),
        .O(p_0_in[113]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[114]_i_1 
       (.I0(s_axis1_tdata[114]),
        .I1(s_axis0_tdata[114]),
        .I2(i_select),
        .O(p_0_in[114]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[115]_i_1 
       (.I0(s_axis1_tdata[115]),
        .I1(s_axis0_tdata[115]),
        .I2(i_select),
        .O(p_0_in[115]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[116]_i_1 
       (.I0(s_axis1_tdata[116]),
        .I1(s_axis0_tdata[116]),
        .I2(i_select),
        .O(p_0_in[116]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[117]_i_1 
       (.I0(s_axis1_tdata[117]),
        .I1(s_axis0_tdata[117]),
        .I2(i_select),
        .O(p_0_in[117]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[118]_i_1 
       (.I0(s_axis1_tdata[118]),
        .I1(s_axis0_tdata[118]),
        .I2(i_select),
        .O(p_0_in[118]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[119]_i_1 
       (.I0(s_axis1_tdata[119]),
        .I1(s_axis0_tdata[119]),
        .I2(i_select),
        .O(p_0_in[119]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[11]_i_1 
       (.I0(s_axis1_tdata[11]),
        .I1(s_axis0_tdata[11]),
        .I2(i_select),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[120]_i_1 
       (.I0(s_axis1_tdata[120]),
        .I1(s_axis0_tdata[120]),
        .I2(i_select),
        .O(p_0_in[120]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[121]_i_1 
       (.I0(s_axis1_tdata[121]),
        .I1(s_axis0_tdata[121]),
        .I2(i_select),
        .O(p_0_in[121]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[122]_i_1 
       (.I0(s_axis1_tdata[122]),
        .I1(s_axis0_tdata[122]),
        .I2(i_select),
        .O(p_0_in[122]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[123]_i_1 
       (.I0(s_axis1_tdata[123]),
        .I1(s_axis0_tdata[123]),
        .I2(i_select),
        .O(p_0_in[123]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[124]_i_1 
       (.I0(s_axis1_tdata[124]),
        .I1(s_axis0_tdata[124]),
        .I2(i_select),
        .O(p_0_in[124]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[125]_i_1 
       (.I0(s_axis1_tdata[125]),
        .I1(s_axis0_tdata[125]),
        .I2(i_select),
        .O(p_0_in[125]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[126]_i_1 
       (.I0(s_axis1_tdata[126]),
        .I1(s_axis0_tdata[126]),
        .I2(i_select),
        .O(p_0_in[126]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[127]_i_1 
       (.I0(s_axis1_tdata[127]),
        .I1(s_axis0_tdata[127]),
        .I2(i_select),
        .O(p_0_in[127]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[12]_i_1 
       (.I0(s_axis1_tdata[12]),
        .I1(s_axis0_tdata[12]),
        .I2(i_select),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[13]_i_1 
       (.I0(s_axis1_tdata[13]),
        .I1(s_axis0_tdata[13]),
        .I2(i_select),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[14]_i_1 
       (.I0(s_axis1_tdata[14]),
        .I1(s_axis0_tdata[14]),
        .I2(i_select),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[15]_i_1 
       (.I0(s_axis1_tdata[15]),
        .I1(s_axis0_tdata[15]),
        .I2(i_select),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[16]_i_1 
       (.I0(s_axis1_tdata[16]),
        .I1(s_axis0_tdata[16]),
        .I2(i_select),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[17]_i_1 
       (.I0(s_axis1_tdata[17]),
        .I1(s_axis0_tdata[17]),
        .I2(i_select),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[18]_i_1 
       (.I0(s_axis1_tdata[18]),
        .I1(s_axis0_tdata[18]),
        .I2(i_select),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[19]_i_1 
       (.I0(s_axis1_tdata[19]),
        .I1(s_axis0_tdata[19]),
        .I2(i_select),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[1]_i_1 
       (.I0(s_axis1_tdata[1]),
        .I1(s_axis0_tdata[1]),
        .I2(i_select),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[20]_i_1 
       (.I0(s_axis1_tdata[20]),
        .I1(s_axis0_tdata[20]),
        .I2(i_select),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[21]_i_1 
       (.I0(s_axis1_tdata[21]),
        .I1(s_axis0_tdata[21]),
        .I2(i_select),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[22]_i_1 
       (.I0(s_axis1_tdata[22]),
        .I1(s_axis0_tdata[22]),
        .I2(i_select),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[23]_i_1 
       (.I0(s_axis1_tdata[23]),
        .I1(s_axis0_tdata[23]),
        .I2(i_select),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[24]_i_1 
       (.I0(s_axis1_tdata[24]),
        .I1(s_axis0_tdata[24]),
        .I2(i_select),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[25]_i_1 
       (.I0(s_axis1_tdata[25]),
        .I1(s_axis0_tdata[25]),
        .I2(i_select),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[26]_i_1 
       (.I0(s_axis1_tdata[26]),
        .I1(s_axis0_tdata[26]),
        .I2(i_select),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[27]_i_1 
       (.I0(s_axis1_tdata[27]),
        .I1(s_axis0_tdata[27]),
        .I2(i_select),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[28]_i_1 
       (.I0(s_axis1_tdata[28]),
        .I1(s_axis0_tdata[28]),
        .I2(i_select),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[29]_i_1 
       (.I0(s_axis1_tdata[29]),
        .I1(s_axis0_tdata[29]),
        .I2(i_select),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[2]_i_1 
       (.I0(s_axis1_tdata[2]),
        .I1(s_axis0_tdata[2]),
        .I2(i_select),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[30]_i_1 
       (.I0(s_axis1_tdata[30]),
        .I1(s_axis0_tdata[30]),
        .I2(i_select),
        .O(p_0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[31]_i_1 
       (.I0(s_axis1_tdata[31]),
        .I1(s_axis0_tdata[31]),
        .I2(i_select),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[32]_i_1 
       (.I0(s_axis1_tdata[32]),
        .I1(s_axis0_tdata[32]),
        .I2(i_select),
        .O(p_0_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[33]_i_1 
       (.I0(s_axis1_tdata[33]),
        .I1(s_axis0_tdata[33]),
        .I2(i_select),
        .O(p_0_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[34]_i_1 
       (.I0(s_axis1_tdata[34]),
        .I1(s_axis0_tdata[34]),
        .I2(i_select),
        .O(p_0_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[35]_i_1 
       (.I0(s_axis1_tdata[35]),
        .I1(s_axis0_tdata[35]),
        .I2(i_select),
        .O(p_0_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[36]_i_1 
       (.I0(s_axis1_tdata[36]),
        .I1(s_axis0_tdata[36]),
        .I2(i_select),
        .O(p_0_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[37]_i_1 
       (.I0(s_axis1_tdata[37]),
        .I1(s_axis0_tdata[37]),
        .I2(i_select),
        .O(p_0_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[38]_i_1 
       (.I0(s_axis1_tdata[38]),
        .I1(s_axis0_tdata[38]),
        .I2(i_select),
        .O(p_0_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[39]_i_1 
       (.I0(s_axis1_tdata[39]),
        .I1(s_axis0_tdata[39]),
        .I2(i_select),
        .O(p_0_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[3]_i_1 
       (.I0(s_axis1_tdata[3]),
        .I1(s_axis0_tdata[3]),
        .I2(i_select),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[40]_i_1 
       (.I0(s_axis1_tdata[40]),
        .I1(s_axis0_tdata[40]),
        .I2(i_select),
        .O(p_0_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[41]_i_1 
       (.I0(s_axis1_tdata[41]),
        .I1(s_axis0_tdata[41]),
        .I2(i_select),
        .O(p_0_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[42]_i_1 
       (.I0(s_axis1_tdata[42]),
        .I1(s_axis0_tdata[42]),
        .I2(i_select),
        .O(p_0_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[43]_i_1 
       (.I0(s_axis1_tdata[43]),
        .I1(s_axis0_tdata[43]),
        .I2(i_select),
        .O(p_0_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[44]_i_1 
       (.I0(s_axis1_tdata[44]),
        .I1(s_axis0_tdata[44]),
        .I2(i_select),
        .O(p_0_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[45]_i_1 
       (.I0(s_axis1_tdata[45]),
        .I1(s_axis0_tdata[45]),
        .I2(i_select),
        .O(p_0_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[46]_i_1 
       (.I0(s_axis1_tdata[46]),
        .I1(s_axis0_tdata[46]),
        .I2(i_select),
        .O(p_0_in[46]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[47]_i_1 
       (.I0(s_axis1_tdata[47]),
        .I1(s_axis0_tdata[47]),
        .I2(i_select),
        .O(p_0_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[48]_i_1 
       (.I0(s_axis1_tdata[48]),
        .I1(s_axis0_tdata[48]),
        .I2(i_select),
        .O(p_0_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[49]_i_1 
       (.I0(s_axis1_tdata[49]),
        .I1(s_axis0_tdata[49]),
        .I2(i_select),
        .O(p_0_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[4]_i_1 
       (.I0(s_axis1_tdata[4]),
        .I1(s_axis0_tdata[4]),
        .I2(i_select),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[50]_i_1 
       (.I0(s_axis1_tdata[50]),
        .I1(s_axis0_tdata[50]),
        .I2(i_select),
        .O(p_0_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[51]_i_1 
       (.I0(s_axis1_tdata[51]),
        .I1(s_axis0_tdata[51]),
        .I2(i_select),
        .O(p_0_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[52]_i_1 
       (.I0(s_axis1_tdata[52]),
        .I1(s_axis0_tdata[52]),
        .I2(i_select),
        .O(p_0_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[53]_i_1 
       (.I0(s_axis1_tdata[53]),
        .I1(s_axis0_tdata[53]),
        .I2(i_select),
        .O(p_0_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[54]_i_1 
       (.I0(s_axis1_tdata[54]),
        .I1(s_axis0_tdata[54]),
        .I2(i_select),
        .O(p_0_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[55]_i_1 
       (.I0(s_axis1_tdata[55]),
        .I1(s_axis0_tdata[55]),
        .I2(i_select),
        .O(p_0_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[56]_i_1 
       (.I0(s_axis1_tdata[56]),
        .I1(s_axis0_tdata[56]),
        .I2(i_select),
        .O(p_0_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[57]_i_1 
       (.I0(s_axis1_tdata[57]),
        .I1(s_axis0_tdata[57]),
        .I2(i_select),
        .O(p_0_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[58]_i_1 
       (.I0(s_axis1_tdata[58]),
        .I1(s_axis0_tdata[58]),
        .I2(i_select),
        .O(p_0_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[59]_i_1 
       (.I0(s_axis1_tdata[59]),
        .I1(s_axis0_tdata[59]),
        .I2(i_select),
        .O(p_0_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[5]_i_1 
       (.I0(s_axis1_tdata[5]),
        .I1(s_axis0_tdata[5]),
        .I2(i_select),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[60]_i_1 
       (.I0(s_axis1_tdata[60]),
        .I1(s_axis0_tdata[60]),
        .I2(i_select),
        .O(p_0_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[61]_i_1 
       (.I0(s_axis1_tdata[61]),
        .I1(s_axis0_tdata[61]),
        .I2(i_select),
        .O(p_0_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[62]_i_1 
       (.I0(s_axis1_tdata[62]),
        .I1(s_axis0_tdata[62]),
        .I2(i_select),
        .O(p_0_in[62]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[63]_i_1 
       (.I0(s_axis1_tdata[63]),
        .I1(s_axis0_tdata[63]),
        .I2(i_select),
        .O(p_0_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[64]_i_1 
       (.I0(s_axis1_tdata[64]),
        .I1(s_axis0_tdata[64]),
        .I2(i_select),
        .O(p_0_in[64]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[65]_i_1 
       (.I0(s_axis1_tdata[65]),
        .I1(s_axis0_tdata[65]),
        .I2(i_select),
        .O(p_0_in[65]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[66]_i_1 
       (.I0(s_axis1_tdata[66]),
        .I1(s_axis0_tdata[66]),
        .I2(i_select),
        .O(p_0_in[66]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[67]_i_1 
       (.I0(s_axis1_tdata[67]),
        .I1(s_axis0_tdata[67]),
        .I2(i_select),
        .O(p_0_in[67]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[68]_i_1 
       (.I0(s_axis1_tdata[68]),
        .I1(s_axis0_tdata[68]),
        .I2(i_select),
        .O(p_0_in[68]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[69]_i_1 
       (.I0(s_axis1_tdata[69]),
        .I1(s_axis0_tdata[69]),
        .I2(i_select),
        .O(p_0_in[69]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[6]_i_1 
       (.I0(s_axis1_tdata[6]),
        .I1(s_axis0_tdata[6]),
        .I2(i_select),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[70]_i_1 
       (.I0(s_axis1_tdata[70]),
        .I1(s_axis0_tdata[70]),
        .I2(i_select),
        .O(p_0_in[70]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[71]_i_1 
       (.I0(s_axis1_tdata[71]),
        .I1(s_axis0_tdata[71]),
        .I2(i_select),
        .O(p_0_in[71]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[72]_i_1 
       (.I0(s_axis1_tdata[72]),
        .I1(s_axis0_tdata[72]),
        .I2(i_select),
        .O(p_0_in[72]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[73]_i_1 
       (.I0(s_axis1_tdata[73]),
        .I1(s_axis0_tdata[73]),
        .I2(i_select),
        .O(p_0_in[73]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[74]_i_1 
       (.I0(s_axis1_tdata[74]),
        .I1(s_axis0_tdata[74]),
        .I2(i_select),
        .O(p_0_in[74]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[75]_i_1 
       (.I0(s_axis1_tdata[75]),
        .I1(s_axis0_tdata[75]),
        .I2(i_select),
        .O(p_0_in[75]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[76]_i_1 
       (.I0(s_axis1_tdata[76]),
        .I1(s_axis0_tdata[76]),
        .I2(i_select),
        .O(p_0_in[76]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[77]_i_1 
       (.I0(s_axis1_tdata[77]),
        .I1(s_axis0_tdata[77]),
        .I2(i_select),
        .O(p_0_in[77]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[78]_i_1 
       (.I0(s_axis1_tdata[78]),
        .I1(s_axis0_tdata[78]),
        .I2(i_select),
        .O(p_0_in[78]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[79]_i_1 
       (.I0(s_axis1_tdata[79]),
        .I1(s_axis0_tdata[79]),
        .I2(i_select),
        .O(p_0_in[79]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[7]_i_1 
       (.I0(s_axis1_tdata[7]),
        .I1(s_axis0_tdata[7]),
        .I2(i_select),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[80]_i_1 
       (.I0(s_axis1_tdata[80]),
        .I1(s_axis0_tdata[80]),
        .I2(i_select),
        .O(p_0_in[80]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[81]_i_1 
       (.I0(s_axis1_tdata[81]),
        .I1(s_axis0_tdata[81]),
        .I2(i_select),
        .O(p_0_in[81]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[82]_i_1 
       (.I0(s_axis1_tdata[82]),
        .I1(s_axis0_tdata[82]),
        .I2(i_select),
        .O(p_0_in[82]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[83]_i_1 
       (.I0(s_axis1_tdata[83]),
        .I1(s_axis0_tdata[83]),
        .I2(i_select),
        .O(p_0_in[83]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[84]_i_1 
       (.I0(s_axis1_tdata[84]),
        .I1(s_axis0_tdata[84]),
        .I2(i_select),
        .O(p_0_in[84]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[85]_i_1 
       (.I0(s_axis1_tdata[85]),
        .I1(s_axis0_tdata[85]),
        .I2(i_select),
        .O(p_0_in[85]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[86]_i_1 
       (.I0(s_axis1_tdata[86]),
        .I1(s_axis0_tdata[86]),
        .I2(i_select),
        .O(p_0_in[86]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[87]_i_1 
       (.I0(s_axis1_tdata[87]),
        .I1(s_axis0_tdata[87]),
        .I2(i_select),
        .O(p_0_in[87]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[88]_i_1 
       (.I0(s_axis1_tdata[88]),
        .I1(s_axis0_tdata[88]),
        .I2(i_select),
        .O(p_0_in[88]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[89]_i_1 
       (.I0(s_axis1_tdata[89]),
        .I1(s_axis0_tdata[89]),
        .I2(i_select),
        .O(p_0_in[89]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[8]_i_1 
       (.I0(s_axis1_tdata[8]),
        .I1(s_axis0_tdata[8]),
        .I2(i_select),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[90]_i_1 
       (.I0(s_axis1_tdata[90]),
        .I1(s_axis0_tdata[90]),
        .I2(i_select),
        .O(p_0_in[90]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[91]_i_1 
       (.I0(s_axis1_tdata[91]),
        .I1(s_axis0_tdata[91]),
        .I2(i_select),
        .O(p_0_in[91]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[92]_i_1 
       (.I0(s_axis1_tdata[92]),
        .I1(s_axis0_tdata[92]),
        .I2(i_select),
        .O(p_0_in[92]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[93]_i_1 
       (.I0(s_axis1_tdata[93]),
        .I1(s_axis0_tdata[93]),
        .I2(i_select),
        .O(p_0_in[93]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[94]_i_1 
       (.I0(s_axis1_tdata[94]),
        .I1(s_axis0_tdata[94]),
        .I2(i_select),
        .O(p_0_in[94]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[95]_i_1 
       (.I0(s_axis1_tdata[95]),
        .I1(s_axis0_tdata[95]),
        .I2(i_select),
        .O(p_0_in[95]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[96]_i_1 
       (.I0(s_axis1_tdata[96]),
        .I1(s_axis0_tdata[96]),
        .I2(i_select),
        .O(p_0_in[96]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[97]_i_1 
       (.I0(s_axis1_tdata[97]),
        .I1(s_axis0_tdata[97]),
        .I2(i_select),
        .O(p_0_in[97]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[98]_i_1 
       (.I0(s_axis1_tdata[98]),
        .I1(s_axis0_tdata[98]),
        .I2(i_select),
        .O(p_0_in[98]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[99]_i_1 
       (.I0(s_axis1_tdata[99]),
        .I1(s_axis0_tdata[99]),
        .I2(i_select),
        .O(p_0_in[99]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[9]_i_1 
       (.I0(s_axis1_tdata[9]),
        .I1(s_axis0_tdata[9]),
        .I2(i_select),
        .O(p_0_in[9]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[100] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[100]),
        .Q(m_axis_tdata[100]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[101] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[101]),
        .Q(m_axis_tdata[101]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[102] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[102]),
        .Q(m_axis_tdata[102]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[103] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[103]),
        .Q(m_axis_tdata[103]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[104] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[104]),
        .Q(m_axis_tdata[104]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[105] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[105]),
        .Q(m_axis_tdata[105]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[106] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[106]),
        .Q(m_axis_tdata[106]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[107] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[107]),
        .Q(m_axis_tdata[107]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[108] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[108]),
        .Q(m_axis_tdata[108]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[109] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[109]),
        .Q(m_axis_tdata[109]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[110] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[110]),
        .Q(m_axis_tdata[110]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[111] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[111]),
        .Q(m_axis_tdata[111]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[112] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[112]),
        .Q(m_axis_tdata[112]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[113] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[113]),
        .Q(m_axis_tdata[113]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[114] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[114]),
        .Q(m_axis_tdata[114]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[115] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[115]),
        .Q(m_axis_tdata[115]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[116] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[116]),
        .Q(m_axis_tdata[116]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[117] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[117]),
        .Q(m_axis_tdata[117]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[118] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[118]),
        .Q(m_axis_tdata[118]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[119] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[119]),
        .Q(m_axis_tdata[119]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[120] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[120]),
        .Q(m_axis_tdata[120]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[121] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[121]),
        .Q(m_axis_tdata[121]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[122] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[122]),
        .Q(m_axis_tdata[122]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[123] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[123]),
        .Q(m_axis_tdata[123]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[124] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[124]),
        .Q(m_axis_tdata[124]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[125] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[125]),
        .Q(m_axis_tdata[125]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[126] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[126]),
        .Q(m_axis_tdata[126]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[127] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[127]),
        .Q(m_axis_tdata[127]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[24]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[25]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[26]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[27]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[28]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[29]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[30]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[31]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[32] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[32]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[33] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[33]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[34] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[34]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[35] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[35]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[36] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[36]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[37] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[37]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[38] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[38]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[39] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[39]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[40] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[40]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[41] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[41]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[42] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[42]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[43] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[43]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[44] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[44]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[45] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[45]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[46] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[46]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[47] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[47]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[48] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[48]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[49] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[49]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[50] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[50]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[51] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[51]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[52] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[52]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[53] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[53]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[54] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[54]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[55] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[55]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[56] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[56]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[57] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[57]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[58] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[58]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[59] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[59]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[60] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[60]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[61] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[61]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[62] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[62]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[63] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[63]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[64] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[64]),
        .Q(m_axis_tdata[64]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[65] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[65]),
        .Q(m_axis_tdata[65]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[66] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[66]),
        .Q(m_axis_tdata[66]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[67] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[67]),
        .Q(m_axis_tdata[67]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[68] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[68]),
        .Q(m_axis_tdata[68]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[69] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[69]),
        .Q(m_axis_tdata[69]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[70] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[70]),
        .Q(m_axis_tdata[70]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[71] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[71]),
        .Q(m_axis_tdata[71]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[72] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[72]),
        .Q(m_axis_tdata[72]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[73] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[73]),
        .Q(m_axis_tdata[73]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[74] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[74]),
        .Q(m_axis_tdata[74]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[75] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[75]),
        .Q(m_axis_tdata[75]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[76] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[76]),
        .Q(m_axis_tdata[76]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[77] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[77]),
        .Q(m_axis_tdata[77]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[78] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[78]),
        .Q(m_axis_tdata[78]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[79] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[79]),
        .Q(m_axis_tdata[79]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[80] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[80]),
        .Q(m_axis_tdata[80]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[81] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[81]),
        .Q(m_axis_tdata[81]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[82] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[82]),
        .Q(m_axis_tdata[82]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[83] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[83]),
        .Q(m_axis_tdata[83]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[84] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[84]),
        .Q(m_axis_tdata[84]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[85] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[85]),
        .Q(m_axis_tdata[85]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[86] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[86]),
        .Q(m_axis_tdata[86]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[87] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[87]),
        .Q(m_axis_tdata[87]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[88] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[88]),
        .Q(m_axis_tdata[88]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[89] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[89]),
        .Q(m_axis_tdata[89]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[90] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[90]),
        .Q(m_axis_tdata[90]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[91] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[91]),
        .Q(m_axis_tdata[91]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[92] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[92]),
        .Q(m_axis_tdata[92]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[93] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[93]),
        .Q(m_axis_tdata[93]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[94] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[94]),
        .Q(m_axis_tdata[94]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[95] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[95]),
        .Q(m_axis_tdata[95]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[96] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[96]),
        .Q(m_axis_tdata[96]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[97] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[97]),
        .Q(m_axis_tdata[97]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[98] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[98]),
        .Q(m_axis_tdata[98]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[99] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[99]),
        .Q(m_axis_tdata[99]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_tlast_i_1
       (.I0(s_axis1_tlast),
        .I1(i_select),
        .I2(s_axis0_tlast),
        .O(m_axis_tlast_i_1_n_0));
  FDRE m_axis_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_tvalid_i_1
       (.I0(s_axis1_tvalid),
        .I1(i_select),
        .I2(s_axis0_tvalid),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
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
