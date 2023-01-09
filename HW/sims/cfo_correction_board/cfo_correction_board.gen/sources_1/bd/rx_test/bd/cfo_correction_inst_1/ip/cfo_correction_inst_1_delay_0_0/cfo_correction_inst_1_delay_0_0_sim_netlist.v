// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:12 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cfo_correction_inst_1_delay_0_0 -prefix
//               cfo_correction_inst_1_delay_0_0_ cfo_correction_inst_0_delay_0_0_sim_netlist.v
// Design      : cfo_correction_inst_0_delay_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cfo_correction_inst_0_delay_0_0,delay,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "delay,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module cfo_correction_inst_1_delay_0_0
   (axis_aclk,
    axis_aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tuser,
    s_axis_tlast,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tuser,
    m_axis_tlast,
    i_symbol);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [7:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [7:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TID" *) output [7:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output [7:0]m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;
  input i_symbol;

  wire axis_aclk;
  wire axis_aresetn;
  wire i_symbol;
  wire [127:0]m_axis_tdata;
  wire [7:0]m_axis_tid;
  wire m_axis_tlast;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  cfo_correction_inst_1_delay_0_0_delay inst
       (.axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .i_symbol(i_symbol),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module cfo_correction_inst_1_delay_0_0_delay
   (m_axis_tdata,
    m_axis_tid,
    m_axis_tuser,
    s_axis_tready,
    m_axis_tlast,
    m_axis_tvalid,
    s_axis_tdata,
    axis_aclk,
    s_axis_tid,
    s_axis_tuser,
    i_symbol,
    s_axis_tvalid,
    axis_aresetn,
    s_axis_tlast);
  output [127:0]m_axis_tdata;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tuser;
  output s_axis_tready;
  output m_axis_tlast;
  output m_axis_tvalid;
  input [127:0]s_axis_tdata;
  input axis_aclk;
  input [7:0]s_axis_tid;
  input [7:0]s_axis_tuser;
  input i_symbol;
  input s_axis_tvalid;
  input axis_aresetn;
  input s_axis_tlast;

  wire \active_counter[6]_i_1_n_0 ;
  wire \active_counter[6]_i_4_n_0 ;
  wire \active_counter[6]_i_5_n_0 ;
  wire [6:0]active_counter_reg;
  wire axis_aclk;
  wire axis_aresetn;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [8:0]counter_reg;
  wire delay_valid;
  wire delay_valid_i_1_n_0;
  wire i_symbol;
  wire [127:0]m_axis_tdata;
  wire \m_axis_tdata[127]_i_1_n_0 ;
  wire [7:0]m_axis_tid;
  wire m_axis_tlast;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire [8:0]p_0_in;
  wire p_0_in_0;
  wire [8:0]plusOp;
  wire [6:0]plusOp__0;
  wire \quiet_counter[8]_i_1_n_0 ;
  wire \quiet_counter[8]_i_3_n_0 ;
  wire \quiet_counter[8]_i_4_n_0 ;
  wire [8:0]quiet_counter_reg;
  wire r_flip_i_1_n_0;
  wire r_flip_reg_n_0;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tready_INST_0_i_1_n_0;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  LUT1 #(
    .INIT(2'h1)) 
    \active_counter[0]_i_1 
       (.I0(active_counter_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \active_counter[1]_i_1 
       (.I0(active_counter_reg[0]),
        .I1(active_counter_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \active_counter[2]_i_1 
       (.I0(active_counter_reg[1]),
        .I1(active_counter_reg[0]),
        .I2(active_counter_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \active_counter[3]_i_1 
       (.I0(active_counter_reg[2]),
        .I1(active_counter_reg[0]),
        .I2(active_counter_reg[1]),
        .I3(active_counter_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \active_counter[4]_i_1 
       (.I0(active_counter_reg[3]),
        .I1(active_counter_reg[1]),
        .I2(active_counter_reg[0]),
        .I3(active_counter_reg[2]),
        .I4(active_counter_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \active_counter[5]_i_1 
       (.I0(active_counter_reg[1]),
        .I1(active_counter_reg[0]),
        .I2(active_counter_reg[2]),
        .I3(active_counter_reg[3]),
        .I4(active_counter_reg[4]),
        .I5(active_counter_reg[5]),
        .O(plusOp__0[5]));
  LUT6 #(
    .INIT(64'h00000080FFFFFFFF)) 
    \active_counter[6]_i_1 
       (.I0(\quiet_counter[8]_i_3_n_0 ),
        .I1(quiet_counter_reg[6]),
        .I2(\active_counter[6]_i_4_n_0 ),
        .I3(\quiet_counter[8]_i_4_n_0 ),
        .I4(s_axis_tready_INST_0_i_1_n_0),
        .I5(delay_valid),
        .O(\active_counter[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \active_counter[6]_i_2 
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .I1(active_counter_reg[0]),
        .I2(active_counter_reg[5]),
        .I3(active_counter_reg[6]),
        .O(p_0_in_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \active_counter[6]_i_3 
       (.I0(\active_counter[6]_i_5_n_0 ),
        .I1(active_counter_reg[5]),
        .I2(active_counter_reg[4]),
        .I3(active_counter_reg[3]),
        .I4(active_counter_reg[6]),
        .O(plusOp__0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \active_counter[6]_i_4 
       (.I0(quiet_counter_reg[7]),
        .I1(quiet_counter_reg[8]),
        .O(\active_counter[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \active_counter[6]_i_5 
       (.I0(active_counter_reg[1]),
        .I1(active_counter_reg[0]),
        .I2(active_counter_reg[2]),
        .O(\active_counter[6]_i_5_n_0 ));
  FDRE \active_counter_reg[0] 
       (.C(axis_aclk),
        .CE(p_0_in_0),
        .D(plusOp__0[0]),
        .Q(active_counter_reg[0]),
        .R(\active_counter[6]_i_1_n_0 ));
  FDRE \active_counter_reg[1] 
       (.C(axis_aclk),
        .CE(p_0_in_0),
        .D(plusOp__0[1]),
        .Q(active_counter_reg[1]),
        .R(\active_counter[6]_i_1_n_0 ));
  FDRE \active_counter_reg[2] 
       (.C(axis_aclk),
        .CE(p_0_in_0),
        .D(plusOp__0[2]),
        .Q(active_counter_reg[2]),
        .R(\active_counter[6]_i_1_n_0 ));
  FDRE \active_counter_reg[3] 
       (.C(axis_aclk),
        .CE(p_0_in_0),
        .D(plusOp__0[3]),
        .Q(active_counter_reg[3]),
        .R(\active_counter[6]_i_1_n_0 ));
  FDRE \active_counter_reg[4] 
       (.C(axis_aclk),
        .CE(p_0_in_0),
        .D(plusOp__0[4]),
        .Q(active_counter_reg[4]),
        .R(\active_counter[6]_i_1_n_0 ));
  FDRE \active_counter_reg[5] 
       (.C(axis_aclk),
        .CE(p_0_in_0),
        .D(plusOp__0[5]),
        .Q(active_counter_reg[5]),
        .R(\active_counter[6]_i_1_n_0 ));
  FDRE \active_counter_reg[6] 
       (.C(axis_aclk),
        .CE(p_0_in_0),
        .D(plusOp__0[6]),
        .Q(active_counter_reg[6]),
        .R(\active_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h555C)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .I1(i_symbol),
        .I2(s_axis_tvalid),
        .I3(r_flip_reg_n_0),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h666666F0)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(i_symbol),
        .I3(s_axis_tvalid),
        .I4(r_flip_reg_n_0),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h787878787878FF00)) 
    \counter[2]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(i_symbol),
        .I4(s_axis_tvalid),
        .I5(r_flip_reg_n_0),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h7F807F80FFFF0000)) 
    \counter[3]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .I3(counter_reg[3]),
        .I4(i_symbol),
        .I5(\counter[8]_i_5_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hB4B4B4B4B4B4FF00)) 
    \counter[4]_i_1 
       (.I0(\counter[4]_i_2_n_0 ),
        .I1(counter_reg[1]),
        .I2(counter_reg[4]),
        .I3(i_symbol),
        .I4(s_axis_tvalid),
        .I5(r_flip_reg_n_0),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[4]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .O(\counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB4B4B4B4B4B4FF00)) 
    \counter[5]_i_1 
       (.I0(\counter[5]_i_2_n_0 ),
        .I1(counter_reg[1]),
        .I2(counter_reg[5]),
        .I3(i_symbol),
        .I4(s_axis_tvalid),
        .I5(r_flip_reg_n_0),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[5]_i_2 
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(counter_reg[4]),
        .O(\counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB4B4B4B4B4B4FF00)) 
    \counter[6]_i_1 
       (.I0(\counter[6]_i_2_n_0 ),
        .I1(counter_reg[1]),
        .I2(counter_reg[6]),
        .I3(i_symbol),
        .I4(s_axis_tvalid),
        .I5(r_flip_reg_n_0),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter[6]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[2]),
        .I2(counter_reg[0]),
        .I3(counter_reg[3]),
        .I4(counter_reg[5]),
        .O(\counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB4B4B4B4B4B4FF00)) 
    \counter[7]_i_1 
       (.I0(\counter[8]_i_4_n_0 ),
        .I1(counter_reg[1]),
        .I2(counter_reg[7]),
        .I3(i_symbol),
        .I4(s_axis_tvalid),
        .I5(r_flip_reg_n_0),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFEF0000FFEFFFFF)) 
    \counter[8]_i_1 
       (.I0(counter_reg[8]),
        .I1(counter_reg[1]),
        .I2(counter_reg[7]),
        .I3(\counter[8]_i_4_n_0 ),
        .I4(\counter[8]_i_5_n_0 ),
        .I5(i_symbol),
        .O(\counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF40BF40FFFF0000)) 
    \counter[8]_i_2 
       (.I0(\counter[8]_i_4_n_0 ),
        .I1(counter_reg[7]),
        .I2(counter_reg[1]),
        .I3(counter_reg[8]),
        .I4(i_symbol),
        .I5(\counter[8]_i_5_n_0 ),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_3 
       (.I0(axis_aresetn),
        .O(\counter[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[8]_i_4 
       (.I0(counter_reg[5]),
        .I1(counter_reg[3]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .I4(counter_reg[4]),
        .I5(counter_reg[6]),
        .O(\counter[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[8]_i_5 
       (.I0(s_axis_tvalid),
        .I1(r_flip_reg_n_0),
        .O(\counter[8]_i_5_n_0 ));
  FDCE \counter_reg[0] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[0]),
        .Q(counter_reg[0]));
  FDCE \counter_reg[1] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[1]),
        .Q(counter_reg[1]));
  FDCE \counter_reg[2] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[2]),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[3]),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[4]),
        .Q(counter_reg[4]));
  FDCE \counter_reg[5] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[5]),
        .Q(counter_reg[5]));
  FDCE \counter_reg[6] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[6]),
        .Q(counter_reg[6]));
  FDCE \counter_reg[7] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[7]),
        .Q(counter_reg[7]));
  FDCE \counter_reg[8] 
       (.C(axis_aclk),
        .CE(\counter[8]_i_1_n_0 ),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(p_0_in[8]),
        .Q(counter_reg[8]));
  LUT6 #(
    .INIT(64'hFFFF000000040000)) 
    delay_valid_i_1
       (.I0(\counter[8]_i_4_n_0 ),
        .I1(counter_reg[7]),
        .I2(counter_reg[1]),
        .I3(counter_reg[8]),
        .I4(\counter[8]_i_5_n_0 ),
        .I5(delay_valid),
        .O(delay_valid_i_1_n_0));
  FDCE delay_valid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\counter[8]_i_3_n_0 ),
        .D(delay_valid_i_1_n_0),
        .Q(delay_valid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[127]_i_1 
       (.I0(delay_valid),
        .O(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[100] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[100]),
        .Q(m_axis_tdata[100]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[101] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[101]),
        .Q(m_axis_tdata[101]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[102] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[102]),
        .Q(m_axis_tdata[102]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[103] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[103]),
        .Q(m_axis_tdata[103]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[104] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[104]),
        .Q(m_axis_tdata[104]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[105] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[105]),
        .Q(m_axis_tdata[105]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[106] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[106]),
        .Q(m_axis_tdata[106]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[107] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[107]),
        .Q(m_axis_tdata[107]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[108] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[108]),
        .Q(m_axis_tdata[108]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[109] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[109]),
        .Q(m_axis_tdata[109]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[110] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[110]),
        .Q(m_axis_tdata[110]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[111] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[111]),
        .Q(m_axis_tdata[111]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[112] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[112]),
        .Q(m_axis_tdata[112]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[113] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[113]),
        .Q(m_axis_tdata[113]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[114] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[114]),
        .Q(m_axis_tdata[114]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[115] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[115]),
        .Q(m_axis_tdata[115]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[116] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[116]),
        .Q(m_axis_tdata[116]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[117] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[117]),
        .Q(m_axis_tdata[117]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[118] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[118]),
        .Q(m_axis_tdata[118]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[119] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[119]),
        .Q(m_axis_tdata[119]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[120] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[120]),
        .Q(m_axis_tdata[120]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[121] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[121]),
        .Q(m_axis_tdata[121]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[122] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[122]),
        .Q(m_axis_tdata[122]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[123] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[123]),
        .Q(m_axis_tdata[123]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[124] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[124]),
        .Q(m_axis_tdata[124]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[125] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[125]),
        .Q(m_axis_tdata[125]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[126] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[126]),
        .Q(m_axis_tdata[126]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[127] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[127]),
        .Q(m_axis_tdata[127]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[24]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[25]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[26]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[27]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[28]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[29]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[30]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[31]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[32] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[32]),
        .Q(m_axis_tdata[32]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[33] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[33]),
        .Q(m_axis_tdata[33]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[34] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[34]),
        .Q(m_axis_tdata[34]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[35] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[35]),
        .Q(m_axis_tdata[35]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[36] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[36]),
        .Q(m_axis_tdata[36]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[37] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[37]),
        .Q(m_axis_tdata[37]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[38] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[38]),
        .Q(m_axis_tdata[38]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[39] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[39]),
        .Q(m_axis_tdata[39]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[40] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[40]),
        .Q(m_axis_tdata[40]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[41] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[41]),
        .Q(m_axis_tdata[41]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[42] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[42]),
        .Q(m_axis_tdata[42]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[43] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[43]),
        .Q(m_axis_tdata[43]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[44] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[44]),
        .Q(m_axis_tdata[44]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[45] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[45]),
        .Q(m_axis_tdata[45]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[46] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[46]),
        .Q(m_axis_tdata[46]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[47] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[47]),
        .Q(m_axis_tdata[47]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[48] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[48]),
        .Q(m_axis_tdata[48]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[49] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[49]),
        .Q(m_axis_tdata[49]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[50] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[50]),
        .Q(m_axis_tdata[50]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[51] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[51]),
        .Q(m_axis_tdata[51]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[52] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[52]),
        .Q(m_axis_tdata[52]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[53] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[53]),
        .Q(m_axis_tdata[53]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[54] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[54]),
        .Q(m_axis_tdata[54]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[55] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[55]),
        .Q(m_axis_tdata[55]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[56] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[56]),
        .Q(m_axis_tdata[56]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[57] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[57]),
        .Q(m_axis_tdata[57]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[58] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[58]),
        .Q(m_axis_tdata[58]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[59] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[59]),
        .Q(m_axis_tdata[59]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[60] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[60]),
        .Q(m_axis_tdata[60]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[61] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[61]),
        .Q(m_axis_tdata[61]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[62] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[62]),
        .Q(m_axis_tdata[62]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[63] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[63]),
        .Q(m_axis_tdata[63]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[64] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[64]),
        .Q(m_axis_tdata[64]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[65] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[65]),
        .Q(m_axis_tdata[65]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[66] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[66]),
        .Q(m_axis_tdata[66]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[67] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[67]),
        .Q(m_axis_tdata[67]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[68] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[68]),
        .Q(m_axis_tdata[68]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[69] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[69]),
        .Q(m_axis_tdata[69]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[70] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[70]),
        .Q(m_axis_tdata[70]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[71] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[71]),
        .Q(m_axis_tdata[71]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[72] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[72]),
        .Q(m_axis_tdata[72]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[73] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[73]),
        .Q(m_axis_tdata[73]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[74] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[74]),
        .Q(m_axis_tdata[74]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[75] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[75]),
        .Q(m_axis_tdata[75]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[76] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[76]),
        .Q(m_axis_tdata[76]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[77] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[77]),
        .Q(m_axis_tdata[77]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[78] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[78]),
        .Q(m_axis_tdata[78]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[79] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[79]),
        .Q(m_axis_tdata[79]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[80] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[80]),
        .Q(m_axis_tdata[80]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[81] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[81]),
        .Q(m_axis_tdata[81]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[82] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[82]),
        .Q(m_axis_tdata[82]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[83] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[83]),
        .Q(m_axis_tdata[83]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[84] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[84]),
        .Q(m_axis_tdata[84]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[85] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[85]),
        .Q(m_axis_tdata[85]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[86] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[86]),
        .Q(m_axis_tdata[86]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[87] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[87]),
        .Q(m_axis_tdata[87]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[88] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[88]),
        .Q(m_axis_tdata[88]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[89] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[89]),
        .Q(m_axis_tdata[89]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[90] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[90]),
        .Q(m_axis_tdata[90]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[91] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[91]),
        .Q(m_axis_tdata[91]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[92] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[92]),
        .Q(m_axis_tdata[92]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[93] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[93]),
        .Q(m_axis_tdata[93]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[94] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[94]),
        .Q(m_axis_tdata[94]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[95] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[95]),
        .Q(m_axis_tdata[95]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[96] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[96]),
        .Q(m_axis_tdata[96]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[97] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[97]),
        .Q(m_axis_tdata[97]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[98] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[98]),
        .Q(m_axis_tdata[98]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[99] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[99]),
        .Q(m_axis_tdata[99]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[0]),
        .Q(m_axis_tid[0]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[1]),
        .Q(m_axis_tid[1]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[2]),
        .Q(m_axis_tid[2]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[3]),
        .Q(m_axis_tid[3]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[4]),
        .Q(m_axis_tid[4]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[5]),
        .Q(m_axis_tid[5]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[6]),
        .Q(m_axis_tid[6]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[7]),
        .Q(m_axis_tid[7]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE m_axis_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(m_axis_tlast),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[0]),
        .Q(m_axis_tuser[0]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[1]),
        .Q(m_axis_tuser[1]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[2]),
        .Q(m_axis_tuser[2]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[3]),
        .Q(m_axis_tuser[3]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[4]),
        .Q(m_axis_tuser[4]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[5]),
        .Q(m_axis_tuser[5]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[6]),
        .Q(m_axis_tuser[6]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[7]),
        .Q(m_axis_tuser[7]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888808)) 
    m_axis_tvalid_i_1
       (.I0(s_axis_tvalid),
        .I1(delay_valid),
        .I2(active_counter_reg[6]),
        .I3(active_counter_reg[5]),
        .I4(active_counter_reg[0]),
        .I5(s_axis_tready_INST_0_i_1_n_0),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \quiet_counter[0]_i_1 
       (.I0(quiet_counter_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \quiet_counter[1]_i_1 
       (.I0(quiet_counter_reg[0]),
        .I1(quiet_counter_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \quiet_counter[2]_i_1 
       (.I0(quiet_counter_reg[1]),
        .I1(quiet_counter_reg[0]),
        .I2(quiet_counter_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \quiet_counter[3]_i_1 
       (.I0(quiet_counter_reg[2]),
        .I1(quiet_counter_reg[0]),
        .I2(quiet_counter_reg[1]),
        .I3(quiet_counter_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \quiet_counter[4]_i_1 
       (.I0(quiet_counter_reg[3]),
        .I1(quiet_counter_reg[1]),
        .I2(quiet_counter_reg[0]),
        .I3(quiet_counter_reg[2]),
        .I4(quiet_counter_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \quiet_counter[5]_i_1 
       (.I0(quiet_counter_reg[4]),
        .I1(quiet_counter_reg[2]),
        .I2(quiet_counter_reg[0]),
        .I3(quiet_counter_reg[1]),
        .I4(quiet_counter_reg[3]),
        .I5(quiet_counter_reg[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \quiet_counter[6]_i_1 
       (.I0(\quiet_counter[8]_i_3_n_0 ),
        .I1(quiet_counter_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \quiet_counter[7]_i_1 
       (.I0(quiet_counter_reg[6]),
        .I1(\quiet_counter[8]_i_3_n_0 ),
        .I2(quiet_counter_reg[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0080)) 
    \quiet_counter[8]_i_1 
       (.I0(\quiet_counter[8]_i_3_n_0 ),
        .I1(quiet_counter_reg[6]),
        .I2(quiet_counter_reg[7]),
        .I3(quiet_counter_reg[8]),
        .I4(\quiet_counter[8]_i_4_n_0 ),
        .I5(s_axis_tready_INST_0_i_1_n_0),
        .O(\quiet_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \quiet_counter[8]_i_2 
       (.I0(quiet_counter_reg[7]),
        .I1(\quiet_counter[8]_i_3_n_0 ),
        .I2(quiet_counter_reg[6]),
        .I3(quiet_counter_reg[8]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \quiet_counter[8]_i_3 
       (.I0(quiet_counter_reg[4]),
        .I1(quiet_counter_reg[2]),
        .I2(quiet_counter_reg[0]),
        .I3(quiet_counter_reg[1]),
        .I4(quiet_counter_reg[3]),
        .I5(quiet_counter_reg[5]),
        .O(\quiet_counter[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \quiet_counter[8]_i_4 
       (.I0(active_counter_reg[6]),
        .I1(active_counter_reg[5]),
        .I2(active_counter_reg[0]),
        .O(\quiet_counter[8]_i_4_n_0 ));
  FDRE \quiet_counter_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(quiet_counter_reg[0]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  FDRE \quiet_counter_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(quiet_counter_reg[1]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  FDRE \quiet_counter_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(quiet_counter_reg[2]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  FDRE \quiet_counter_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(quiet_counter_reg[3]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  FDRE \quiet_counter_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(quiet_counter_reg[4]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  FDRE \quiet_counter_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(quiet_counter_reg[5]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  FDRE \quiet_counter_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(quiet_counter_reg[6]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  FDRE \quiet_counter_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(quiet_counter_reg[7]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  FDRE \quiet_counter_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(quiet_counter_reg[8]),
        .R(\quiet_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA8F0)) 
    r_flip_i_1
       (.I0(i_symbol),
        .I1(s_axis_tvalid),
        .I2(r_flip_reg_n_0),
        .I3(axis_aresetn),
        .O(r_flip_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_flip_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(r_flip_i_1_n_0),
        .Q(r_flip_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    s_axis_tready_INST_0
       (.I0(active_counter_reg[6]),
        .I1(active_counter_reg[5]),
        .I2(active_counter_reg[0]),
        .I3(s_axis_tready_INST_0_i_1_n_0),
        .I4(delay_valid),
        .O(s_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_axis_tready_INST_0_i_1
       (.I0(active_counter_reg[2]),
        .I1(active_counter_reg[1]),
        .I2(active_counter_reg[4]),
        .I3(active_counter_reg[3]),
        .O(s_axis_tready_INST_0_i_1_n_0));
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
