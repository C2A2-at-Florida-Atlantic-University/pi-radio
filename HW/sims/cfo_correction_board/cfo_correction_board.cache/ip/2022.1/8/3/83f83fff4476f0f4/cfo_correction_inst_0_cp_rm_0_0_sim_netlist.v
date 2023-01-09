// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:12 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_inst_0_cp_rm_0_0_sim_netlist.v
// Design      : cfo_correction_inst_0_cp_rm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cfo_correction_inst_0_cp_rm_0_0,cp_rm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cp_rm,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axis_aclk,
    axis_aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tuser,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tuser,
    m_axis_tlast,
    m_cp_axis_tdata,
    m_cp_axis_tvalid,
    m_cp_axis_tid,
    m_cp_axis_tuser,
    m_cp_axis_tlast,
    o_symbol,
    o_symbol_number);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis:m_cp_axis, FREQ_HZ 249997498" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [7:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [7:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TID" *) output [7:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output [7:0]m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_cp_axis TDATA" *) output [127:0]m_cp_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_cp_axis TVALID" *) output m_cp_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_cp_axis TID" *) output [7:0]m_cp_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_cp_axis TUSER" *) output [7:0]m_cp_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_cp_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_cp_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_cp_axis_tlast;
  output o_symbol;
  output [7:0]o_symbol_number;

  wire axis_aclk;
  wire axis_aresetn;
  wire [127:0]m_axis_tdata;
  wire [7:0]m_axis_tid;
  wire m_axis_tlast;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [127:0]m_cp_axis_tdata;
  wire [7:0]m_cp_axis_tid;
  wire m_cp_axis_tlast;
  wire [7:0]m_cp_axis_tuser;
  wire m_cp_axis_tvalid;
  wire o_symbol;
  wire [7:0]o_symbol_number;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cp_rm inst
       (.axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .m_cp_axis_tdata(m_cp_axis_tdata),
        .m_cp_axis_tid(m_cp_axis_tid),
        .m_cp_axis_tlast(m_cp_axis_tlast),
        .m_cp_axis_tuser(m_cp_axis_tuser),
        .m_cp_axis_tvalid(m_cp_axis_tvalid),
        .o_symbol_number(o_symbol_number),
        .r_symbol_reg_0(o_symbol),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cp_rm
   (r_symbol_reg_0,
    o_symbol_number,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tuser,
    m_axis_tlast,
    m_cp_axis_tdata,
    m_cp_axis_tvalid,
    m_cp_axis_tid,
    m_cp_axis_tuser,
    m_cp_axis_tlast,
    s_axis_tvalid,
    axis_aclk,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tid,
    s_axis_tuser,
    axis_aresetn);
  output r_symbol_reg_0;
  output [7:0]o_symbol_number;
  output [127:0]m_axis_tdata;
  output m_axis_tvalid;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tuser;
  output m_axis_tlast;
  output [127:0]m_cp_axis_tdata;
  output m_cp_axis_tvalid;
  output [7:0]m_cp_axis_tid;
  output [7:0]m_cp_axis_tuser;
  output m_cp_axis_tlast;
  input s_axis_tvalid;
  input axis_aclk;
  input s_axis_tlast;
  input [127:0]s_axis_tdata;
  input [7:0]s_axis_tid;
  input [7:0]s_axis_tuser;
  input axis_aresetn;

  wire axis_aclk;
  wire axis_aresetn;
  wire \cp_counter[5]_i_2_n_0 ;
  wire \cp_counter[9]_i_2_n_0 ;
  wire \cp_counter[9]_i_3_n_0 ;
  wire [9:6]cp_counter_reg;
  wire \cp_counter_reg_n_0_[0] ;
  wire \cp_counter_reg_n_0_[1] ;
  wire \cp_counter_reg_n_0_[2] ;
  wire \cp_counter_reg_n_0_[3] ;
  wire \cp_counter_reg_n_0_[4] ;
  wire \cp_counter_reg_n_0_[5] ;
  wire [127:0]in_tdata;
  wire [7:0]in_tid;
  wire in_tlast;
  wire [7:0]in_tuser;
  wire in_tvalid;
  wire [127:0]m_axis_tdata;
  wire \m_axis_tdata[127]_i_1_n_0 ;
  wire [7:0]m_axis_tid;
  wire m_axis_tlast;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [127:0]m_cp_axis_tdata;
  wire \m_cp_axis_tdata[127]_i_1_n_0 ;
  wire [7:0]m_cp_axis_tid;
  wire m_cp_axis_tlast;
  wire [7:0]m_cp_axis_tuser;
  wire m_cp_axis_tvalid;
  wire [7:0]o_symbol_number;
  wire \out_counter[0]_i_1_n_0 ;
  wire \out_counter[5]_i_2_n_0 ;
  wire \out_counter[9]_i_1_n_0 ;
  wire \out_counter[9]_i_3_n_0 ;
  wire [9:0]out_counter_reg;
  wire [9:0]p_0_in;
  wire [9:1]p_0_in__0;
  wire [7:1]p_0_in__1;
  wire r_symbol_i_1_n_0;
  wire r_symbol_i_2_n_0;
  wire r_symbol_reg_0;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire \symbol_counter[0]_i_1_n_0 ;
  wire \symbol_counter[5]_i_2_n_0 ;
  wire \symbol_counter[7]_i_1_n_0 ;
  wire \symbol_counter[7]_i_3_n_0 ;
  wire \symbol_counter[7]_i_4_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0045)) 
    \cp_counter[0]_i_1 
       (.I0(in_tlast),
        .I1(in_tvalid),
        .I2(s_axis_tvalid),
        .I3(\cp_counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000D0D00)) 
    \cp_counter[1]_i_1 
       (.I0(s_axis_tvalid),
        .I1(in_tvalid),
        .I2(in_tlast),
        .I3(\cp_counter_reg_n_0_[0] ),
        .I4(\cp_counter_reg_n_0_[1] ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h000D0D0D0D000000)) 
    \cp_counter[2]_i_1 
       (.I0(s_axis_tvalid),
        .I1(in_tvalid),
        .I2(in_tlast),
        .I3(\cp_counter_reg_n_0_[1] ),
        .I4(\cp_counter_reg_n_0_[0] ),
        .I5(\cp_counter_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \cp_counter[3]_i_1 
       (.I0(\cp_counter_reg_n_0_[1] ),
        .I1(\cp_counter_reg_n_0_[0] ),
        .I2(\cp_counter_reg_n_0_[2] ),
        .I3(\cp_counter[9]_i_3_n_0 ),
        .I4(\cp_counter_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \cp_counter[4]_i_1 
       (.I0(\cp_counter_reg_n_0_[2] ),
        .I1(\cp_counter_reg_n_0_[0] ),
        .I2(\cp_counter_reg_n_0_[1] ),
        .I3(\cp_counter_reg_n_0_[3] ),
        .I4(\cp_counter[9]_i_3_n_0 ),
        .I5(\cp_counter_reg_n_0_[4] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h20221011)) 
    \cp_counter[5]_i_1 
       (.I0(\cp_counter[5]_i_2_n_0 ),
        .I1(in_tlast),
        .I2(in_tvalid),
        .I3(s_axis_tvalid),
        .I4(\cp_counter_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cp_counter[5]_i_2 
       (.I0(\cp_counter_reg_n_0_[3] ),
        .I1(\cp_counter_reg_n_0_[1] ),
        .I2(\cp_counter_reg_n_0_[0] ),
        .I3(\cp_counter_reg_n_0_[2] ),
        .I4(\cp_counter_reg_n_0_[4] ),
        .O(\cp_counter[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20221011)) 
    \cp_counter[6]_i_1 
       (.I0(\cp_counter[9]_i_2_n_0 ),
        .I1(in_tlast),
        .I2(in_tvalid),
        .I3(s_axis_tvalid),
        .I4(cp_counter_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h0B000B0B04000404)) 
    \cp_counter[7]_i_1 
       (.I0(\cp_counter[9]_i_2_n_0 ),
        .I1(cp_counter_reg[6]),
        .I2(in_tlast),
        .I3(in_tvalid),
        .I4(s_axis_tvalid),
        .I5(cp_counter_reg[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hDF002000)) 
    \cp_counter[8]_i_1 
       (.I0(cp_counter_reg[6]),
        .I1(\cp_counter[9]_i_2_n_0 ),
        .I2(cp_counter_reg[7]),
        .I3(\cp_counter[9]_i_3_n_0 ),
        .I4(cp_counter_reg[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \cp_counter[9]_i_1 
       (.I0(cp_counter_reg[7]),
        .I1(\cp_counter[9]_i_2_n_0 ),
        .I2(cp_counter_reg[6]),
        .I3(cp_counter_reg[8]),
        .I4(\cp_counter[9]_i_3_n_0 ),
        .I5(cp_counter_reg[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cp_counter[9]_i_2 
       (.I0(\cp_counter_reg_n_0_[4] ),
        .I1(\cp_counter_reg_n_0_[2] ),
        .I2(\cp_counter_reg_n_0_[0] ),
        .I3(\cp_counter_reg_n_0_[1] ),
        .I4(\cp_counter_reg_n_0_[3] ),
        .I5(\cp_counter_reg_n_0_[5] ),
        .O(\cp_counter[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \cp_counter[9]_i_3 
       (.I0(s_axis_tvalid),
        .I1(in_tvalid),
        .I2(in_tlast),
        .O(\cp_counter[9]_i_3_n_0 ));
  FDCE \cp_counter_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[0]),
        .Q(\cp_counter_reg_n_0_[0] ));
  FDCE \cp_counter_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[1]),
        .Q(\cp_counter_reg_n_0_[1] ));
  FDCE \cp_counter_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[2]),
        .Q(\cp_counter_reg_n_0_[2] ));
  FDCE \cp_counter_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[3]),
        .Q(\cp_counter_reg_n_0_[3] ));
  FDCE \cp_counter_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[4]),
        .Q(\cp_counter_reg_n_0_[4] ));
  FDCE \cp_counter_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[5]),
        .Q(\cp_counter_reg_n_0_[5] ));
  FDCE \cp_counter_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[6]),
        .Q(cp_counter_reg[6]));
  FDCE \cp_counter_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[7]),
        .Q(cp_counter_reg[7]));
  FDCE \cp_counter_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[8]),
        .Q(cp_counter_reg[8]));
  FDCE \cp_counter_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in[9]),
        .Q(cp_counter_reg[9]));
  FDRE \in_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[0]),
        .Q(in_tdata[0]),
        .R(1'b0));
  FDRE \in_tdata_reg[100] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[100]),
        .Q(in_tdata[100]),
        .R(1'b0));
  FDRE \in_tdata_reg[101] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[101]),
        .Q(in_tdata[101]),
        .R(1'b0));
  FDRE \in_tdata_reg[102] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[102]),
        .Q(in_tdata[102]),
        .R(1'b0));
  FDRE \in_tdata_reg[103] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[103]),
        .Q(in_tdata[103]),
        .R(1'b0));
  FDRE \in_tdata_reg[104] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[104]),
        .Q(in_tdata[104]),
        .R(1'b0));
  FDRE \in_tdata_reg[105] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[105]),
        .Q(in_tdata[105]),
        .R(1'b0));
  FDRE \in_tdata_reg[106] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[106]),
        .Q(in_tdata[106]),
        .R(1'b0));
  FDRE \in_tdata_reg[107] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[107]),
        .Q(in_tdata[107]),
        .R(1'b0));
  FDRE \in_tdata_reg[108] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[108]),
        .Q(in_tdata[108]),
        .R(1'b0));
  FDRE \in_tdata_reg[109] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[109]),
        .Q(in_tdata[109]),
        .R(1'b0));
  FDRE \in_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[10]),
        .Q(in_tdata[10]),
        .R(1'b0));
  FDRE \in_tdata_reg[110] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[110]),
        .Q(in_tdata[110]),
        .R(1'b0));
  FDRE \in_tdata_reg[111] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[111]),
        .Q(in_tdata[111]),
        .R(1'b0));
  FDRE \in_tdata_reg[112] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[112]),
        .Q(in_tdata[112]),
        .R(1'b0));
  FDRE \in_tdata_reg[113] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[113]),
        .Q(in_tdata[113]),
        .R(1'b0));
  FDRE \in_tdata_reg[114] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[114]),
        .Q(in_tdata[114]),
        .R(1'b0));
  FDRE \in_tdata_reg[115] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[115]),
        .Q(in_tdata[115]),
        .R(1'b0));
  FDRE \in_tdata_reg[116] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[116]),
        .Q(in_tdata[116]),
        .R(1'b0));
  FDRE \in_tdata_reg[117] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[117]),
        .Q(in_tdata[117]),
        .R(1'b0));
  FDRE \in_tdata_reg[118] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[118]),
        .Q(in_tdata[118]),
        .R(1'b0));
  FDRE \in_tdata_reg[119] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[119]),
        .Q(in_tdata[119]),
        .R(1'b0));
  FDRE \in_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[11]),
        .Q(in_tdata[11]),
        .R(1'b0));
  FDRE \in_tdata_reg[120] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[120]),
        .Q(in_tdata[120]),
        .R(1'b0));
  FDRE \in_tdata_reg[121] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[121]),
        .Q(in_tdata[121]),
        .R(1'b0));
  FDRE \in_tdata_reg[122] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[122]),
        .Q(in_tdata[122]),
        .R(1'b0));
  FDRE \in_tdata_reg[123] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[123]),
        .Q(in_tdata[123]),
        .R(1'b0));
  FDRE \in_tdata_reg[124] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[124]),
        .Q(in_tdata[124]),
        .R(1'b0));
  FDRE \in_tdata_reg[125] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[125]),
        .Q(in_tdata[125]),
        .R(1'b0));
  FDRE \in_tdata_reg[126] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[126]),
        .Q(in_tdata[126]),
        .R(1'b0));
  FDRE \in_tdata_reg[127] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[127]),
        .Q(in_tdata[127]),
        .R(1'b0));
  FDRE \in_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[12]),
        .Q(in_tdata[12]),
        .R(1'b0));
  FDRE \in_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[13]),
        .Q(in_tdata[13]),
        .R(1'b0));
  FDRE \in_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[14]),
        .Q(in_tdata[14]),
        .R(1'b0));
  FDRE \in_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[15]),
        .Q(in_tdata[15]),
        .R(1'b0));
  FDRE \in_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[16]),
        .Q(in_tdata[16]),
        .R(1'b0));
  FDRE \in_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[17]),
        .Q(in_tdata[17]),
        .R(1'b0));
  FDRE \in_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[18]),
        .Q(in_tdata[18]),
        .R(1'b0));
  FDRE \in_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[19]),
        .Q(in_tdata[19]),
        .R(1'b0));
  FDRE \in_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[1]),
        .Q(in_tdata[1]),
        .R(1'b0));
  FDRE \in_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[20]),
        .Q(in_tdata[20]),
        .R(1'b0));
  FDRE \in_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[21]),
        .Q(in_tdata[21]),
        .R(1'b0));
  FDRE \in_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[22]),
        .Q(in_tdata[22]),
        .R(1'b0));
  FDRE \in_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[23]),
        .Q(in_tdata[23]),
        .R(1'b0));
  FDRE \in_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[24]),
        .Q(in_tdata[24]),
        .R(1'b0));
  FDRE \in_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[25]),
        .Q(in_tdata[25]),
        .R(1'b0));
  FDRE \in_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[26]),
        .Q(in_tdata[26]),
        .R(1'b0));
  FDRE \in_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[27]),
        .Q(in_tdata[27]),
        .R(1'b0));
  FDRE \in_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[28]),
        .Q(in_tdata[28]),
        .R(1'b0));
  FDRE \in_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[29]),
        .Q(in_tdata[29]),
        .R(1'b0));
  FDRE \in_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[2]),
        .Q(in_tdata[2]),
        .R(1'b0));
  FDRE \in_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[30]),
        .Q(in_tdata[30]),
        .R(1'b0));
  FDRE \in_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[31]),
        .Q(in_tdata[31]),
        .R(1'b0));
  FDRE \in_tdata_reg[32] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[32]),
        .Q(in_tdata[32]),
        .R(1'b0));
  FDRE \in_tdata_reg[33] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[33]),
        .Q(in_tdata[33]),
        .R(1'b0));
  FDRE \in_tdata_reg[34] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[34]),
        .Q(in_tdata[34]),
        .R(1'b0));
  FDRE \in_tdata_reg[35] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[35]),
        .Q(in_tdata[35]),
        .R(1'b0));
  FDRE \in_tdata_reg[36] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[36]),
        .Q(in_tdata[36]),
        .R(1'b0));
  FDRE \in_tdata_reg[37] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[37]),
        .Q(in_tdata[37]),
        .R(1'b0));
  FDRE \in_tdata_reg[38] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[38]),
        .Q(in_tdata[38]),
        .R(1'b0));
  FDRE \in_tdata_reg[39] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[39]),
        .Q(in_tdata[39]),
        .R(1'b0));
  FDRE \in_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[3]),
        .Q(in_tdata[3]),
        .R(1'b0));
  FDRE \in_tdata_reg[40] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[40]),
        .Q(in_tdata[40]),
        .R(1'b0));
  FDRE \in_tdata_reg[41] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[41]),
        .Q(in_tdata[41]),
        .R(1'b0));
  FDRE \in_tdata_reg[42] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[42]),
        .Q(in_tdata[42]),
        .R(1'b0));
  FDRE \in_tdata_reg[43] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[43]),
        .Q(in_tdata[43]),
        .R(1'b0));
  FDRE \in_tdata_reg[44] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[44]),
        .Q(in_tdata[44]),
        .R(1'b0));
  FDRE \in_tdata_reg[45] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[45]),
        .Q(in_tdata[45]),
        .R(1'b0));
  FDRE \in_tdata_reg[46] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[46]),
        .Q(in_tdata[46]),
        .R(1'b0));
  FDRE \in_tdata_reg[47] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[47]),
        .Q(in_tdata[47]),
        .R(1'b0));
  FDRE \in_tdata_reg[48] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[48]),
        .Q(in_tdata[48]),
        .R(1'b0));
  FDRE \in_tdata_reg[49] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[49]),
        .Q(in_tdata[49]),
        .R(1'b0));
  FDRE \in_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[4]),
        .Q(in_tdata[4]),
        .R(1'b0));
  FDRE \in_tdata_reg[50] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[50]),
        .Q(in_tdata[50]),
        .R(1'b0));
  FDRE \in_tdata_reg[51] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[51]),
        .Q(in_tdata[51]),
        .R(1'b0));
  FDRE \in_tdata_reg[52] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[52]),
        .Q(in_tdata[52]),
        .R(1'b0));
  FDRE \in_tdata_reg[53] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[53]),
        .Q(in_tdata[53]),
        .R(1'b0));
  FDRE \in_tdata_reg[54] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[54]),
        .Q(in_tdata[54]),
        .R(1'b0));
  FDRE \in_tdata_reg[55] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[55]),
        .Q(in_tdata[55]),
        .R(1'b0));
  FDRE \in_tdata_reg[56] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[56]),
        .Q(in_tdata[56]),
        .R(1'b0));
  FDRE \in_tdata_reg[57] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[57]),
        .Q(in_tdata[57]),
        .R(1'b0));
  FDRE \in_tdata_reg[58] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[58]),
        .Q(in_tdata[58]),
        .R(1'b0));
  FDRE \in_tdata_reg[59] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[59]),
        .Q(in_tdata[59]),
        .R(1'b0));
  FDRE \in_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[5]),
        .Q(in_tdata[5]),
        .R(1'b0));
  FDRE \in_tdata_reg[60] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[60]),
        .Q(in_tdata[60]),
        .R(1'b0));
  FDRE \in_tdata_reg[61] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[61]),
        .Q(in_tdata[61]),
        .R(1'b0));
  FDRE \in_tdata_reg[62] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[62]),
        .Q(in_tdata[62]),
        .R(1'b0));
  FDRE \in_tdata_reg[63] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[63]),
        .Q(in_tdata[63]),
        .R(1'b0));
  FDRE \in_tdata_reg[64] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[64]),
        .Q(in_tdata[64]),
        .R(1'b0));
  FDRE \in_tdata_reg[65] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[65]),
        .Q(in_tdata[65]),
        .R(1'b0));
  FDRE \in_tdata_reg[66] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[66]),
        .Q(in_tdata[66]),
        .R(1'b0));
  FDRE \in_tdata_reg[67] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[67]),
        .Q(in_tdata[67]),
        .R(1'b0));
  FDRE \in_tdata_reg[68] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[68]),
        .Q(in_tdata[68]),
        .R(1'b0));
  FDRE \in_tdata_reg[69] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[69]),
        .Q(in_tdata[69]),
        .R(1'b0));
  FDRE \in_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[6]),
        .Q(in_tdata[6]),
        .R(1'b0));
  FDRE \in_tdata_reg[70] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[70]),
        .Q(in_tdata[70]),
        .R(1'b0));
  FDRE \in_tdata_reg[71] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[71]),
        .Q(in_tdata[71]),
        .R(1'b0));
  FDRE \in_tdata_reg[72] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[72]),
        .Q(in_tdata[72]),
        .R(1'b0));
  FDRE \in_tdata_reg[73] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[73]),
        .Q(in_tdata[73]),
        .R(1'b0));
  FDRE \in_tdata_reg[74] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[74]),
        .Q(in_tdata[74]),
        .R(1'b0));
  FDRE \in_tdata_reg[75] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[75]),
        .Q(in_tdata[75]),
        .R(1'b0));
  FDRE \in_tdata_reg[76] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[76]),
        .Q(in_tdata[76]),
        .R(1'b0));
  FDRE \in_tdata_reg[77] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[77]),
        .Q(in_tdata[77]),
        .R(1'b0));
  FDRE \in_tdata_reg[78] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[78]),
        .Q(in_tdata[78]),
        .R(1'b0));
  FDRE \in_tdata_reg[79] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[79]),
        .Q(in_tdata[79]),
        .R(1'b0));
  FDRE \in_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[7]),
        .Q(in_tdata[7]),
        .R(1'b0));
  FDRE \in_tdata_reg[80] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[80]),
        .Q(in_tdata[80]),
        .R(1'b0));
  FDRE \in_tdata_reg[81] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[81]),
        .Q(in_tdata[81]),
        .R(1'b0));
  FDRE \in_tdata_reg[82] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[82]),
        .Q(in_tdata[82]),
        .R(1'b0));
  FDRE \in_tdata_reg[83] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[83]),
        .Q(in_tdata[83]),
        .R(1'b0));
  FDRE \in_tdata_reg[84] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[84]),
        .Q(in_tdata[84]),
        .R(1'b0));
  FDRE \in_tdata_reg[85] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[85]),
        .Q(in_tdata[85]),
        .R(1'b0));
  FDRE \in_tdata_reg[86] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[86]),
        .Q(in_tdata[86]),
        .R(1'b0));
  FDRE \in_tdata_reg[87] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[87]),
        .Q(in_tdata[87]),
        .R(1'b0));
  FDRE \in_tdata_reg[88] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[88]),
        .Q(in_tdata[88]),
        .R(1'b0));
  FDRE \in_tdata_reg[89] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[89]),
        .Q(in_tdata[89]),
        .R(1'b0));
  FDRE \in_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[8]),
        .Q(in_tdata[8]),
        .R(1'b0));
  FDRE \in_tdata_reg[90] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[90]),
        .Q(in_tdata[90]),
        .R(1'b0));
  FDRE \in_tdata_reg[91] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[91]),
        .Q(in_tdata[91]),
        .R(1'b0));
  FDRE \in_tdata_reg[92] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[92]),
        .Q(in_tdata[92]),
        .R(1'b0));
  FDRE \in_tdata_reg[93] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[93]),
        .Q(in_tdata[93]),
        .R(1'b0));
  FDRE \in_tdata_reg[94] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[94]),
        .Q(in_tdata[94]),
        .R(1'b0));
  FDRE \in_tdata_reg[95] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[95]),
        .Q(in_tdata[95]),
        .R(1'b0));
  FDRE \in_tdata_reg[96] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[96]),
        .Q(in_tdata[96]),
        .R(1'b0));
  FDRE \in_tdata_reg[97] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[97]),
        .Q(in_tdata[97]),
        .R(1'b0));
  FDRE \in_tdata_reg[98] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[98]),
        .Q(in_tdata[98]),
        .R(1'b0));
  FDRE \in_tdata_reg[99] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[99]),
        .Q(in_tdata[99]),
        .R(1'b0));
  FDRE \in_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[9]),
        .Q(in_tdata[9]),
        .R(1'b0));
  FDRE \in_tid_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[0]),
        .Q(in_tid[0]),
        .R(1'b0));
  FDRE \in_tid_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[1]),
        .Q(in_tid[1]),
        .R(1'b0));
  FDRE \in_tid_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[2]),
        .Q(in_tid[2]),
        .R(1'b0));
  FDRE \in_tid_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[3]),
        .Q(in_tid[3]),
        .R(1'b0));
  FDRE \in_tid_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[4]),
        .Q(in_tid[4]),
        .R(1'b0));
  FDRE \in_tid_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[5]),
        .Q(in_tid[5]),
        .R(1'b0));
  FDRE \in_tid_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[6]),
        .Q(in_tid[6]),
        .R(1'b0));
  FDRE \in_tid_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[7]),
        .Q(in_tid[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    in_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(in_tlast),
        .R(1'b0));
  FDRE \in_tuser_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[0]),
        .Q(in_tuser[0]),
        .R(1'b0));
  FDRE \in_tuser_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[1]),
        .Q(in_tuser[1]),
        .R(1'b0));
  FDRE \in_tuser_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[2]),
        .Q(in_tuser[2]),
        .R(1'b0));
  FDRE \in_tuser_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[3]),
        .Q(in_tuser[3]),
        .R(1'b0));
  FDRE \in_tuser_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[4]),
        .Q(in_tuser[4]),
        .R(1'b0));
  FDRE \in_tuser_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[5]),
        .Q(in_tuser[5]),
        .R(1'b0));
  FDRE \in_tuser_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[6]),
        .Q(in_tuser[6]),
        .R(1'b0));
  FDRE \in_tuser_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[7]),
        .Q(in_tuser[7]),
        .R(1'b0));
  FDRE in_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tvalid),
        .Q(in_tvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000100010001FFFF)) 
    \m_axis_tdata[127]_i_1 
       (.I0(cp_counter_reg[8]),
        .I1(cp_counter_reg[9]),
        .I2(cp_counter_reg[6]),
        .I3(cp_counter_reg[7]),
        .I4(in_tvalid),
        .I5(s_axis_tvalid),
        .O(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[100] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[100]),
        .Q(m_axis_tdata[100]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[101] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[101]),
        .Q(m_axis_tdata[101]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[102] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[102]),
        .Q(m_axis_tdata[102]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[103] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[103]),
        .Q(m_axis_tdata[103]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[104] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[104]),
        .Q(m_axis_tdata[104]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[105] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[105]),
        .Q(m_axis_tdata[105]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[106] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[106]),
        .Q(m_axis_tdata[106]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[107] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[107]),
        .Q(m_axis_tdata[107]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[108] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[108]),
        .Q(m_axis_tdata[108]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[109] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[109]),
        .Q(m_axis_tdata[109]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[110] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[110]),
        .Q(m_axis_tdata[110]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[111] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[111]),
        .Q(m_axis_tdata[111]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[112] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[112]),
        .Q(m_axis_tdata[112]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[113] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[113]),
        .Q(m_axis_tdata[113]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[114] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[114]),
        .Q(m_axis_tdata[114]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[115] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[115]),
        .Q(m_axis_tdata[115]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[116] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[116]),
        .Q(m_axis_tdata[116]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[117] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[117]),
        .Q(m_axis_tdata[117]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[118] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[118]),
        .Q(m_axis_tdata[118]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[119] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[119]),
        .Q(m_axis_tdata[119]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[120] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[120]),
        .Q(m_axis_tdata[120]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[121] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[121]),
        .Q(m_axis_tdata[121]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[122] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[122]),
        .Q(m_axis_tdata[122]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[123] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[123]),
        .Q(m_axis_tdata[123]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[124] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[124]),
        .Q(m_axis_tdata[124]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[125] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[125]),
        .Q(m_axis_tdata[125]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[126] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[126]),
        .Q(m_axis_tdata[126]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[127] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[127]),
        .Q(m_axis_tdata[127]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[24]),
        .Q(m_axis_tdata[24]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[25]),
        .Q(m_axis_tdata[25]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[26]),
        .Q(m_axis_tdata[26]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[27]),
        .Q(m_axis_tdata[27]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[28]),
        .Q(m_axis_tdata[28]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[29]),
        .Q(m_axis_tdata[29]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[30]),
        .Q(m_axis_tdata[30]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[31]),
        .Q(m_axis_tdata[31]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[32] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[32]),
        .Q(m_axis_tdata[32]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[33] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[33]),
        .Q(m_axis_tdata[33]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[34] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[34]),
        .Q(m_axis_tdata[34]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[35] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[35]),
        .Q(m_axis_tdata[35]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[36] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[36]),
        .Q(m_axis_tdata[36]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[37] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[37]),
        .Q(m_axis_tdata[37]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[38] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[38]),
        .Q(m_axis_tdata[38]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[39] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[39]),
        .Q(m_axis_tdata[39]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[40] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[40]),
        .Q(m_axis_tdata[40]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[41] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[41]),
        .Q(m_axis_tdata[41]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[42] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[42]),
        .Q(m_axis_tdata[42]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[43] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[43]),
        .Q(m_axis_tdata[43]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[44] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[44]),
        .Q(m_axis_tdata[44]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[45] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[45]),
        .Q(m_axis_tdata[45]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[46] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[46]),
        .Q(m_axis_tdata[46]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[47] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[47]),
        .Q(m_axis_tdata[47]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[48] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[48]),
        .Q(m_axis_tdata[48]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[49] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[49]),
        .Q(m_axis_tdata[49]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[50] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[50]),
        .Q(m_axis_tdata[50]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[51] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[51]),
        .Q(m_axis_tdata[51]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[52] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[52]),
        .Q(m_axis_tdata[52]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[53] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[53]),
        .Q(m_axis_tdata[53]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[54] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[54]),
        .Q(m_axis_tdata[54]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[55] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[55]),
        .Q(m_axis_tdata[55]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[56] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[56]),
        .Q(m_axis_tdata[56]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[57] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[57]),
        .Q(m_axis_tdata[57]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[58] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[58]),
        .Q(m_axis_tdata[58]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[59] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[59]),
        .Q(m_axis_tdata[59]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[60] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[60]),
        .Q(m_axis_tdata[60]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[61] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[61]),
        .Q(m_axis_tdata[61]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[62] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[62]),
        .Q(m_axis_tdata[62]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[63] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[63]),
        .Q(m_axis_tdata[63]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[64] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[64]),
        .Q(m_axis_tdata[64]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[65] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[65]),
        .Q(m_axis_tdata[65]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[66] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[66]),
        .Q(m_axis_tdata[66]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[67] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[67]),
        .Q(m_axis_tdata[67]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[68] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[68]),
        .Q(m_axis_tdata[68]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[69] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[69]),
        .Q(m_axis_tdata[69]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[70] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[70]),
        .Q(m_axis_tdata[70]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[71] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[71]),
        .Q(m_axis_tdata[71]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[72] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[72]),
        .Q(m_axis_tdata[72]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[73] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[73]),
        .Q(m_axis_tdata[73]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[74] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[74]),
        .Q(m_axis_tdata[74]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[75] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[75]),
        .Q(m_axis_tdata[75]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[76] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[76]),
        .Q(m_axis_tdata[76]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[77] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[77]),
        .Q(m_axis_tdata[77]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[78] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[78]),
        .Q(m_axis_tdata[78]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[79] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[79]),
        .Q(m_axis_tdata[79]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[80] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[80]),
        .Q(m_axis_tdata[80]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[81] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[81]),
        .Q(m_axis_tdata[81]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[82] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[82]),
        .Q(m_axis_tdata[82]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[83] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[83]),
        .Q(m_axis_tdata[83]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[84] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[84]),
        .Q(m_axis_tdata[84]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[85] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[85]),
        .Q(m_axis_tdata[85]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[86] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[86]),
        .Q(m_axis_tdata[86]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[87] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[87]),
        .Q(m_axis_tdata[87]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[88] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[88]),
        .Q(m_axis_tdata[88]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[89] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[89]),
        .Q(m_axis_tdata[89]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[90] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[90]),
        .Q(m_axis_tdata[90]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[91] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[91]),
        .Q(m_axis_tdata[91]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[92] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[92]),
        .Q(m_axis_tdata[92]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[93] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[93]),
        .Q(m_axis_tdata[93]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[94] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[94]),
        .Q(m_axis_tdata[94]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[95] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[95]),
        .Q(m_axis_tdata[95]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[96] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[96]),
        .Q(m_axis_tdata[96]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[97] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[97]),
        .Q(m_axis_tdata[97]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[98] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[98]),
        .Q(m_axis_tdata[98]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[99] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[99]),
        .Q(m_axis_tdata[99]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[0]),
        .Q(m_axis_tid[0]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[1]),
        .Q(m_axis_tid[1]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[2]),
        .Q(m_axis_tid[2]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[3]),
        .Q(m_axis_tid[3]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[4]),
        .Q(m_axis_tid[4]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[5]),
        .Q(m_axis_tid[5]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[6]),
        .Q(m_axis_tid[6]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tid_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[7]),
        .Q(m_axis_tid[7]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE m_axis_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tlast),
        .Q(m_axis_tlast),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[0]),
        .Q(m_axis_tuser[0]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[1]),
        .Q(m_axis_tuser[1]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[2]),
        .Q(m_axis_tuser[2]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[3]),
        .Q(m_axis_tuser[3]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[4]),
        .Q(m_axis_tuser[4]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[5]),
        .Q(m_axis_tuser[5]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[6]),
        .Q(m_axis_tuser[6]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_axis_tuser_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[7]),
        .Q(m_axis_tuser[7]),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  FDRE m_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tvalid),
        .Q(m_axis_tvalid),
        .R(\m_axis_tdata[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEF)) 
    \m_cp_axis_tdata[127]_i_1 
       (.I0(cp_counter_reg[8]),
        .I1(cp_counter_reg[9]),
        .I2(s_axis_tvalid),
        .I3(in_tvalid),
        .I4(cp_counter_reg[7]),
        .I5(cp_counter_reg[6]),
        .O(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[0]),
        .Q(m_cp_axis_tdata[0]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[100] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[100]),
        .Q(m_cp_axis_tdata[100]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[101] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[101]),
        .Q(m_cp_axis_tdata[101]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[102] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[102]),
        .Q(m_cp_axis_tdata[102]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[103] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[103]),
        .Q(m_cp_axis_tdata[103]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[104] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[104]),
        .Q(m_cp_axis_tdata[104]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[105] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[105]),
        .Q(m_cp_axis_tdata[105]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[106] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[106]),
        .Q(m_cp_axis_tdata[106]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[107] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[107]),
        .Q(m_cp_axis_tdata[107]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[108] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[108]),
        .Q(m_cp_axis_tdata[108]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[109] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[109]),
        .Q(m_cp_axis_tdata[109]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[10]),
        .Q(m_cp_axis_tdata[10]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[110] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[110]),
        .Q(m_cp_axis_tdata[110]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[111] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[111]),
        .Q(m_cp_axis_tdata[111]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[112] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[112]),
        .Q(m_cp_axis_tdata[112]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[113] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[113]),
        .Q(m_cp_axis_tdata[113]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[114] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[114]),
        .Q(m_cp_axis_tdata[114]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[115] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[115]),
        .Q(m_cp_axis_tdata[115]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[116] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[116]),
        .Q(m_cp_axis_tdata[116]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[117] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[117]),
        .Q(m_cp_axis_tdata[117]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[118] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[118]),
        .Q(m_cp_axis_tdata[118]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[119] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[119]),
        .Q(m_cp_axis_tdata[119]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[11]),
        .Q(m_cp_axis_tdata[11]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[120] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[120]),
        .Q(m_cp_axis_tdata[120]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[121] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[121]),
        .Q(m_cp_axis_tdata[121]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[122] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[122]),
        .Q(m_cp_axis_tdata[122]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[123] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[123]),
        .Q(m_cp_axis_tdata[123]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[124] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[124]),
        .Q(m_cp_axis_tdata[124]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[125] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[125]),
        .Q(m_cp_axis_tdata[125]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[126] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[126]),
        .Q(m_cp_axis_tdata[126]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[127] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[127]),
        .Q(m_cp_axis_tdata[127]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[12]),
        .Q(m_cp_axis_tdata[12]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[13]),
        .Q(m_cp_axis_tdata[13]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[14]),
        .Q(m_cp_axis_tdata[14]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[15]),
        .Q(m_cp_axis_tdata[15]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[16]),
        .Q(m_cp_axis_tdata[16]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[17]),
        .Q(m_cp_axis_tdata[17]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[18]),
        .Q(m_cp_axis_tdata[18]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[19]),
        .Q(m_cp_axis_tdata[19]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[1]),
        .Q(m_cp_axis_tdata[1]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[20]),
        .Q(m_cp_axis_tdata[20]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[21]),
        .Q(m_cp_axis_tdata[21]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[22]),
        .Q(m_cp_axis_tdata[22]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[23]),
        .Q(m_cp_axis_tdata[23]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[24]),
        .Q(m_cp_axis_tdata[24]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[25]),
        .Q(m_cp_axis_tdata[25]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[26]),
        .Q(m_cp_axis_tdata[26]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[27]),
        .Q(m_cp_axis_tdata[27]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[28]),
        .Q(m_cp_axis_tdata[28]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[29]),
        .Q(m_cp_axis_tdata[29]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[2]),
        .Q(m_cp_axis_tdata[2]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[30]),
        .Q(m_cp_axis_tdata[30]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[31]),
        .Q(m_cp_axis_tdata[31]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[32] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[32]),
        .Q(m_cp_axis_tdata[32]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[33] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[33]),
        .Q(m_cp_axis_tdata[33]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[34] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[34]),
        .Q(m_cp_axis_tdata[34]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[35] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[35]),
        .Q(m_cp_axis_tdata[35]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[36] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[36]),
        .Q(m_cp_axis_tdata[36]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[37] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[37]),
        .Q(m_cp_axis_tdata[37]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[38] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[38]),
        .Q(m_cp_axis_tdata[38]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[39] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[39]),
        .Q(m_cp_axis_tdata[39]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[3]),
        .Q(m_cp_axis_tdata[3]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[40] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[40]),
        .Q(m_cp_axis_tdata[40]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[41] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[41]),
        .Q(m_cp_axis_tdata[41]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[42] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[42]),
        .Q(m_cp_axis_tdata[42]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[43] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[43]),
        .Q(m_cp_axis_tdata[43]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[44] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[44]),
        .Q(m_cp_axis_tdata[44]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[45] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[45]),
        .Q(m_cp_axis_tdata[45]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[46] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[46]),
        .Q(m_cp_axis_tdata[46]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[47] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[47]),
        .Q(m_cp_axis_tdata[47]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[48] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[48]),
        .Q(m_cp_axis_tdata[48]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[49] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[49]),
        .Q(m_cp_axis_tdata[49]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[4]),
        .Q(m_cp_axis_tdata[4]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[50] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[50]),
        .Q(m_cp_axis_tdata[50]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[51] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[51]),
        .Q(m_cp_axis_tdata[51]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[52] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[52]),
        .Q(m_cp_axis_tdata[52]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[53] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[53]),
        .Q(m_cp_axis_tdata[53]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[54] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[54]),
        .Q(m_cp_axis_tdata[54]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[55] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[55]),
        .Q(m_cp_axis_tdata[55]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[56] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[56]),
        .Q(m_cp_axis_tdata[56]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[57] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[57]),
        .Q(m_cp_axis_tdata[57]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[58] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[58]),
        .Q(m_cp_axis_tdata[58]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[59] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[59]),
        .Q(m_cp_axis_tdata[59]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[5]),
        .Q(m_cp_axis_tdata[5]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[60] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[60]),
        .Q(m_cp_axis_tdata[60]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[61] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[61]),
        .Q(m_cp_axis_tdata[61]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[62] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[62]),
        .Q(m_cp_axis_tdata[62]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[63] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[63]),
        .Q(m_cp_axis_tdata[63]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[64] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[64]),
        .Q(m_cp_axis_tdata[64]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[65] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[65]),
        .Q(m_cp_axis_tdata[65]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[66] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[66]),
        .Q(m_cp_axis_tdata[66]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[67] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[67]),
        .Q(m_cp_axis_tdata[67]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[68] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[68]),
        .Q(m_cp_axis_tdata[68]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[69] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[69]),
        .Q(m_cp_axis_tdata[69]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[6]),
        .Q(m_cp_axis_tdata[6]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[70] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[70]),
        .Q(m_cp_axis_tdata[70]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[71] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[71]),
        .Q(m_cp_axis_tdata[71]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[72] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[72]),
        .Q(m_cp_axis_tdata[72]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[73] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[73]),
        .Q(m_cp_axis_tdata[73]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[74] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[74]),
        .Q(m_cp_axis_tdata[74]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[75] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[75]),
        .Q(m_cp_axis_tdata[75]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[76] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[76]),
        .Q(m_cp_axis_tdata[76]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[77] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[77]),
        .Q(m_cp_axis_tdata[77]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[78] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[78]),
        .Q(m_cp_axis_tdata[78]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[79] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[79]),
        .Q(m_cp_axis_tdata[79]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[7]),
        .Q(m_cp_axis_tdata[7]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[80] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[80]),
        .Q(m_cp_axis_tdata[80]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[81] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[81]),
        .Q(m_cp_axis_tdata[81]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[82] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[82]),
        .Q(m_cp_axis_tdata[82]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[83] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[83]),
        .Q(m_cp_axis_tdata[83]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[84] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[84]),
        .Q(m_cp_axis_tdata[84]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[85] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[85]),
        .Q(m_cp_axis_tdata[85]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[86] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[86]),
        .Q(m_cp_axis_tdata[86]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[87] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[87]),
        .Q(m_cp_axis_tdata[87]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[88] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[88]),
        .Q(m_cp_axis_tdata[88]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[89] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[89]),
        .Q(m_cp_axis_tdata[89]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[8]),
        .Q(m_cp_axis_tdata[8]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[90] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[90]),
        .Q(m_cp_axis_tdata[90]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[91] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[91]),
        .Q(m_cp_axis_tdata[91]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[92] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[92]),
        .Q(m_cp_axis_tdata[92]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[93] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[93]),
        .Q(m_cp_axis_tdata[93]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[94] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[94]),
        .Q(m_cp_axis_tdata[94]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[95] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[95]),
        .Q(m_cp_axis_tdata[95]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[96] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[96]),
        .Q(m_cp_axis_tdata[96]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[97] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[97]),
        .Q(m_cp_axis_tdata[97]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[98] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[98]),
        .Q(m_cp_axis_tdata[98]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[99] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[99]),
        .Q(m_cp_axis_tdata[99]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tdata[9]),
        .Q(m_cp_axis_tdata[9]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tid_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[0]),
        .Q(m_cp_axis_tid[0]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tid_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[1]),
        .Q(m_cp_axis_tid[1]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tid_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[2]),
        .Q(m_cp_axis_tid[2]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tid_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[3]),
        .Q(m_cp_axis_tid[3]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tid_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[4]),
        .Q(m_cp_axis_tid[4]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tid_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[5]),
        .Q(m_cp_axis_tid[5]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tid_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[6]),
        .Q(m_cp_axis_tid[6]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tid_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tid[7]),
        .Q(m_cp_axis_tid[7]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE m_cp_axis_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tlast),
        .Q(m_cp_axis_tlast),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tuser_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[0]),
        .Q(m_cp_axis_tuser[0]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tuser_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[1]),
        .Q(m_cp_axis_tuser[1]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tuser_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[2]),
        .Q(m_cp_axis_tuser[2]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tuser_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[3]),
        .Q(m_cp_axis_tuser[3]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tuser_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[4]),
        .Q(m_cp_axis_tuser[4]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tuser_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[5]),
        .Q(m_cp_axis_tuser[5]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tuser_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[6]),
        .Q(m_cp_axis_tuser[6]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE \m_cp_axis_tuser_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tuser[7]),
        .Q(m_cp_axis_tuser[7]),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  FDRE m_cp_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(in_tvalid),
        .Q(m_cp_axis_tvalid),
        .R(\m_cp_axis_tdata[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out_counter[0]_i_1 
       (.I0(out_counter_reg[0]),
        .I1(s_axis_tvalid),
        .O(\out_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \out_counter[1]_i_1 
       (.I0(out_counter_reg[0]),
        .I1(out_counter_reg[1]),
        .I2(s_axis_tvalid),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \out_counter[2]_i_1 
       (.I0(out_counter_reg[0]),
        .I1(out_counter_reg[1]),
        .I2(out_counter_reg[2]),
        .I3(s_axis_tvalid),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \out_counter[3]_i_1 
       (.I0(out_counter_reg[1]),
        .I1(out_counter_reg[0]),
        .I2(out_counter_reg[2]),
        .I3(out_counter_reg[3]),
        .I4(s_axis_tvalid),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \out_counter[4]_i_1 
       (.I0(out_counter_reg[2]),
        .I1(out_counter_reg[0]),
        .I2(out_counter_reg[1]),
        .I3(out_counter_reg[3]),
        .I4(out_counter_reg[4]),
        .I5(s_axis_tvalid),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \out_counter[5]_i_1 
       (.I0(\out_counter[5]_i_2_n_0 ),
        .I1(out_counter_reg[5]),
        .I2(s_axis_tvalid),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \out_counter[5]_i_2 
       (.I0(out_counter_reg[3]),
        .I1(out_counter_reg[1]),
        .I2(out_counter_reg[0]),
        .I3(out_counter_reg[2]),
        .I4(out_counter_reg[4]),
        .O(\out_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \out_counter[6]_i_1 
       (.I0(\out_counter[9]_i_3_n_0 ),
        .I1(out_counter_reg[6]),
        .I2(s_axis_tvalid),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5104)) 
    \out_counter[7]_i_1 
       (.I0(s_axis_tvalid),
        .I1(out_counter_reg[6]),
        .I2(\out_counter[9]_i_3_n_0 ),
        .I3(out_counter_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \out_counter[8]_i_1 
       (.I0(out_counter_reg[6]),
        .I1(\out_counter[9]_i_3_n_0 ),
        .I2(out_counter_reg[7]),
        .I3(out_counter_reg[8]),
        .I4(s_axis_tvalid),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \out_counter[9]_i_1 
       (.I0(out_counter_reg[8]),
        .I1(out_counter_reg[9]),
        .I2(s_axis_tvalid),
        .I3(out_counter_reg[7]),
        .I4(\out_counter[9]_i_3_n_0 ),
        .I5(out_counter_reg[6]),
        .O(\out_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFFF2000)) 
    \out_counter[9]_i_2 
       (.I0(out_counter_reg[7]),
        .I1(\out_counter[9]_i_3_n_0 ),
        .I2(out_counter_reg[6]),
        .I3(out_counter_reg[8]),
        .I4(out_counter_reg[9]),
        .I5(s_axis_tvalid),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \out_counter[9]_i_3 
       (.I0(out_counter_reg[4]),
        .I1(out_counter_reg[2]),
        .I2(out_counter_reg[0]),
        .I3(out_counter_reg[1]),
        .I4(out_counter_reg[3]),
        .I5(out_counter_reg[5]),
        .O(\out_counter[9]_i_3_n_0 ));
  FDCE \out_counter_reg[0] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(\out_counter[0]_i_1_n_0 ),
        .Q(out_counter_reg[0]));
  FDCE \out_counter_reg[1] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[1]),
        .Q(out_counter_reg[1]));
  FDCE \out_counter_reg[2] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[2]),
        .Q(out_counter_reg[2]));
  FDCE \out_counter_reg[3] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[3]),
        .Q(out_counter_reg[3]));
  FDCE \out_counter_reg[4] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[4]),
        .Q(out_counter_reg[4]));
  FDCE \out_counter_reg[5] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[5]),
        .Q(out_counter_reg[5]));
  FDCE \out_counter_reg[6] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[6]),
        .Q(out_counter_reg[6]));
  FDCE \out_counter_reg[7] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[7]),
        .Q(out_counter_reg[7]));
  FDCE \out_counter_reg[8] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[8]),
        .Q(out_counter_reg[8]));
  FDCE \out_counter_reg[9] 
       (.C(axis_aclk),
        .CE(\out_counter[9]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__0[9]),
        .Q(out_counter_reg[9]));
  LUT6 #(
    .INIT(64'hFCFCFCACFCFCFCFC)) 
    r_symbol_i_1
       (.I0(s_axis_tvalid),
        .I1(r_symbol_reg_0),
        .I2(axis_aresetn),
        .I3(r_symbol_i_2_n_0),
        .I4(out_counter_reg[9]),
        .I5(out_counter_reg[8]),
        .O(r_symbol_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    r_symbol_i_2
       (.I0(out_counter_reg[6]),
        .I1(\out_counter[9]_i_3_n_0 ),
        .I2(out_counter_reg[7]),
        .O(r_symbol_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_symbol_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(r_symbol_i_1_n_0),
        .Q(r_symbol_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \symbol_counter[0]_i_1 
       (.I0(r_symbol_reg_0),
        .I1(o_symbol_number[0]),
        .O(\symbol_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \symbol_counter[1]_i_1 
       (.I0(r_symbol_reg_0),
        .I1(o_symbol_number[0]),
        .I2(o_symbol_number[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \symbol_counter[2]_i_1 
       (.I0(o_symbol_number[0]),
        .I1(o_symbol_number[1]),
        .I2(r_symbol_reg_0),
        .I3(o_symbol_number[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \symbol_counter[3]_i_1 
       (.I0(o_symbol_number[1]),
        .I1(o_symbol_number[0]),
        .I2(o_symbol_number[2]),
        .I3(r_symbol_reg_0),
        .I4(o_symbol_number[3]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \symbol_counter[4]_i_1 
       (.I0(o_symbol_number[2]),
        .I1(o_symbol_number[0]),
        .I2(o_symbol_number[1]),
        .I3(o_symbol_number[3]),
        .I4(r_symbol_reg_0),
        .I5(o_symbol_number[4]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \symbol_counter[5]_i_1 
       (.I0(\symbol_counter[5]_i_2_n_0 ),
        .I1(r_symbol_reg_0),
        .I2(o_symbol_number[5]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \symbol_counter[5]_i_2 
       (.I0(o_symbol_number[3]),
        .I1(o_symbol_number[1]),
        .I2(o_symbol_number[0]),
        .I3(o_symbol_number[2]),
        .I4(o_symbol_number[4]),
        .O(\symbol_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \symbol_counter[6]_i_1 
       (.I0(\symbol_counter[7]_i_4_n_0 ),
        .I1(r_symbol_reg_0),
        .I2(o_symbol_number[6]),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \symbol_counter[7]_i_1 
       (.I0(in_tlast),
        .I1(r_symbol_reg_0),
        .O(\symbol_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \symbol_counter[7]_i_2 
       (.I0(\symbol_counter[7]_i_4_n_0 ),
        .I1(o_symbol_number[6]),
        .I2(r_symbol_reg_0),
        .I3(o_symbol_number[7]),
        .O(p_0_in__1[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \symbol_counter[7]_i_3 
       (.I0(axis_aresetn),
        .O(\symbol_counter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \symbol_counter[7]_i_4 
       (.I0(o_symbol_number[4]),
        .I1(o_symbol_number[2]),
        .I2(o_symbol_number[0]),
        .I3(o_symbol_number[1]),
        .I4(o_symbol_number[3]),
        .I5(o_symbol_number[5]),
        .O(\symbol_counter[7]_i_4_n_0 ));
  FDCE \symbol_counter_reg[0] 
       (.C(axis_aclk),
        .CE(\symbol_counter[7]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(\symbol_counter[0]_i_1_n_0 ),
        .Q(o_symbol_number[0]));
  FDCE \symbol_counter_reg[1] 
       (.C(axis_aclk),
        .CE(\symbol_counter[7]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__1[1]),
        .Q(o_symbol_number[1]));
  FDCE \symbol_counter_reg[2] 
       (.C(axis_aclk),
        .CE(\symbol_counter[7]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__1[2]),
        .Q(o_symbol_number[2]));
  FDCE \symbol_counter_reg[3] 
       (.C(axis_aclk),
        .CE(\symbol_counter[7]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__1[3]),
        .Q(o_symbol_number[3]));
  FDCE \symbol_counter_reg[4] 
       (.C(axis_aclk),
        .CE(\symbol_counter[7]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__1[4]),
        .Q(o_symbol_number[4]));
  FDCE \symbol_counter_reg[5] 
       (.C(axis_aclk),
        .CE(\symbol_counter[7]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__1[5]),
        .Q(o_symbol_number[5]));
  FDCE \symbol_counter_reg[6] 
       (.C(axis_aclk),
        .CE(\symbol_counter[7]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__1[6]),
        .Q(o_symbol_number[6]));
  FDCE \symbol_counter_reg[7] 
       (.C(axis_aclk),
        .CE(\symbol_counter[7]_i_1_n_0 ),
        .CLR(\symbol_counter[7]_i_3_n_0 ),
        .D(p_0_in__1[7]),
        .Q(o_symbol_number[7]));
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
