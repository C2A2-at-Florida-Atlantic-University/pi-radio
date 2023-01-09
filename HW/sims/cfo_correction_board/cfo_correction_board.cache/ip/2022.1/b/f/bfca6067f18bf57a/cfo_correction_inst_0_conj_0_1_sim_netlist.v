// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:12 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_inst_0_conj_0_1_sim_netlist.v
// Design      : cfo_correction_inst_0_conj_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cfo_correction_inst_0_conj_0_1,conj,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "conj,Vivado 2022.1" *) 
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
    i_negative_freq);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498" *) input axis_aclk;
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
  input i_negative_freq;

  wire axis_aclk;
  wire i_negative_freq;
  wire [127:0]m_axis_tdata;
  wire [7:0]m_axis_tid;
  wire m_axis_tlast;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_conj inst
       (.axis_aclk(axis_aclk),
        .i_negative_freq(i_negative_freq),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_conj
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tdata,
    axis_aclk,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tuser,
    s_axis_tlast,
    i_negative_freq);
  output [127:0]m_axis_tdata;
  output m_axis_tvalid;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tuser;
  output m_axis_tlast;
  input [127:0]s_axis_tdata;
  input axis_aclk;
  input s_axis_tvalid;
  input [7:0]s_axis_tid;
  input [7:0]s_axis_tuser;
  input s_axis_tlast;
  input i_negative_freq;

  wire axis_aclk;
  wire i_negative_freq;
  wire [127:0]m_axis_tdata;
  wire \m_axis_tdata[117]_i_2_n_0 ;
  wire \m_axis_tdata[121]_i_2_n_0 ;
  wire \m_axis_tdata[122]_i_2_n_0 ;
  wire \m_axis_tdata[126]_i_2_n_0 ;
  wire \m_axis_tdata[127]_i_2_n_0 ;
  wire \m_axis_tdata[21]_i_2_n_0 ;
  wire \m_axis_tdata[25]_i_2_n_0 ;
  wire \m_axis_tdata[26]_i_2_n_0 ;
  wire \m_axis_tdata[30]_i_2_n_0 ;
  wire \m_axis_tdata[31]_i_2_n_0 ;
  wire \m_axis_tdata[53]_i_2_n_0 ;
  wire \m_axis_tdata[57]_i_2_n_0 ;
  wire \m_axis_tdata[58]_i_2_n_0 ;
  wire \m_axis_tdata[62]_i_2_n_0 ;
  wire \m_axis_tdata[63]_i_2_n_0 ;
  wire \m_axis_tdata[85]_i_2_n_0 ;
  wire \m_axis_tdata[89]_i_2_n_0 ;
  wire \m_axis_tdata[90]_i_2_n_0 ;
  wire \m_axis_tdata[94]_i_2_n_0 ;
  wire \m_axis_tdata[95]_i_2_n_0 ;
  wire [7:0]m_axis_tid;
  wire m_axis_tlast;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [127:17]p_0_in;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \m_axis_tdata[113]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[112]),
        .I2(s_axis_tdata[113]),
        .O(p_0_in[113]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAB54)) 
    \m_axis_tdata[114]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[113]),
        .I2(s_axis_tdata[112]),
        .I3(s_axis_tdata[114]),
        .O(p_0_in[114]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAB5554)) 
    \m_axis_tdata[115]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[114]),
        .I2(s_axis_tdata[112]),
        .I3(s_axis_tdata[113]),
        .I4(s_axis_tdata[115]),
        .O(p_0_in[115]));
  LUT6 #(
    .INIT(64'hAAAAAAAB55555554)) 
    \m_axis_tdata[116]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[115]),
        .I2(s_axis_tdata[113]),
        .I3(s_axis_tdata[112]),
        .I4(s_axis_tdata[114]),
        .I5(s_axis_tdata[116]),
        .O(p_0_in[116]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[117]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[117]_i_2_n_0 ),
        .I2(s_axis_tdata[117]),
        .O(p_0_in[117]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_axis_tdata[117]_i_2 
       (.I0(s_axis_tdata[115]),
        .I1(s_axis_tdata[113]),
        .I2(s_axis_tdata[112]),
        .I3(s_axis_tdata[114]),
        .I4(s_axis_tdata[116]),
        .O(\m_axis_tdata[117]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[118]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[121]_i_2_n_0 ),
        .I2(s_axis_tdata[118]),
        .O(p_0_in[118]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[119]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[118]),
        .I2(\m_axis_tdata[121]_i_2_n_0 ),
        .I3(s_axis_tdata[119]),
        .O(p_0_in[119]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \m_axis_tdata[120]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[119]),
        .I2(\m_axis_tdata[121]_i_2_n_0 ),
        .I3(s_axis_tdata[118]),
        .I4(s_axis_tdata[120]),
        .O(p_0_in[120]));
  LUT6 #(
    .INIT(64'hAAAAABAA55555455)) 
    \m_axis_tdata[121]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[120]),
        .I2(s_axis_tdata[118]),
        .I3(\m_axis_tdata[121]_i_2_n_0 ),
        .I4(s_axis_tdata[119]),
        .I5(s_axis_tdata[121]),
        .O(p_0_in[121]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_tdata[121]_i_2 
       (.I0(s_axis_tdata[116]),
        .I1(s_axis_tdata[114]),
        .I2(s_axis_tdata[112]),
        .I3(s_axis_tdata[113]),
        .I4(s_axis_tdata[115]),
        .I5(s_axis_tdata[117]),
        .O(\m_axis_tdata[121]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[122]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[122]_i_2_n_0 ),
        .I2(s_axis_tdata[122]),
        .O(p_0_in[122]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[122]_i_2 
       (.I0(s_axis_tdata[120]),
        .I1(s_axis_tdata[118]),
        .I2(\m_axis_tdata[121]_i_2_n_0 ),
        .I3(s_axis_tdata[119]),
        .I4(s_axis_tdata[121]),
        .O(\m_axis_tdata[122]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[123]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[126]_i_2_n_0 ),
        .I2(s_axis_tdata[123]),
        .O(p_0_in[123]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[124]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[123]),
        .I2(\m_axis_tdata[126]_i_2_n_0 ),
        .I3(s_axis_tdata[124]),
        .O(p_0_in[124]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \m_axis_tdata[125]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[124]),
        .I2(\m_axis_tdata[126]_i_2_n_0 ),
        .I3(s_axis_tdata[123]),
        .I4(s_axis_tdata[125]),
        .O(p_0_in[125]));
  LUT6 #(
    .INIT(64'hAAAAABAA55555455)) 
    \m_axis_tdata[126]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[125]),
        .I2(s_axis_tdata[123]),
        .I3(\m_axis_tdata[126]_i_2_n_0 ),
        .I4(s_axis_tdata[124]),
        .I5(s_axis_tdata[126]),
        .O(p_0_in[126]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[126]_i_2 
       (.I0(s_axis_tdata[121]),
        .I1(s_axis_tdata[119]),
        .I2(\m_axis_tdata[121]_i_2_n_0 ),
        .I3(s_axis_tdata[118]),
        .I4(s_axis_tdata[120]),
        .I5(s_axis_tdata[122]),
        .O(\m_axis_tdata[126]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[127]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[126]),
        .I2(\m_axis_tdata[127]_i_2_n_0 ),
        .I3(s_axis_tdata[127]),
        .O(p_0_in[127]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata[127]_i_2 
       (.I0(s_axis_tdata[124]),
        .I1(\m_axis_tdata[126]_i_2_n_0 ),
        .I2(s_axis_tdata[123]),
        .I3(s_axis_tdata[125]),
        .O(\m_axis_tdata[127]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \m_axis_tdata[17]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[17]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAB54)) 
    \m_axis_tdata[18]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[18]),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAB5554)) 
    \m_axis_tdata[19]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAB55555554)) 
    \m_axis_tdata[20]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[18]),
        .I5(s_axis_tdata[20]),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[21]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[21]_i_2_n_0 ),
        .I2(s_axis_tdata[21]),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_axis_tdata[21]_i_2 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[20]),
        .O(\m_axis_tdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[22]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[25]_i_2_n_0 ),
        .I2(s_axis_tdata[22]),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[23]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[22]),
        .I2(\m_axis_tdata[25]_i_2_n_0 ),
        .I3(s_axis_tdata[23]),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \m_axis_tdata[24]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[23]),
        .I2(\m_axis_tdata[25]_i_2_n_0 ),
        .I3(s_axis_tdata[22]),
        .I4(s_axis_tdata[24]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hAAAAABAA55555455)) 
    \m_axis_tdata[25]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[24]),
        .I2(s_axis_tdata[22]),
        .I3(\m_axis_tdata[25]_i_2_n_0 ),
        .I4(s_axis_tdata[23]),
        .I5(s_axis_tdata[25]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_tdata[25]_i_2 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[21]),
        .O(\m_axis_tdata[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[26]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[26]_i_2_n_0 ),
        .I2(s_axis_tdata[26]),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[26]_i_2 
       (.I0(s_axis_tdata[24]),
        .I1(s_axis_tdata[22]),
        .I2(\m_axis_tdata[25]_i_2_n_0 ),
        .I3(s_axis_tdata[23]),
        .I4(s_axis_tdata[25]),
        .O(\m_axis_tdata[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[27]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[30]_i_2_n_0 ),
        .I2(s_axis_tdata[27]),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[28]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[27]),
        .I2(\m_axis_tdata[30]_i_2_n_0 ),
        .I3(s_axis_tdata[28]),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \m_axis_tdata[29]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[28]),
        .I2(\m_axis_tdata[30]_i_2_n_0 ),
        .I3(s_axis_tdata[27]),
        .I4(s_axis_tdata[29]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hAAAAABAA55555455)) 
    \m_axis_tdata[30]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[29]),
        .I2(s_axis_tdata[27]),
        .I3(\m_axis_tdata[30]_i_2_n_0 ),
        .I4(s_axis_tdata[28]),
        .I5(s_axis_tdata[30]),
        .O(p_0_in[30]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[30]_i_2 
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_tdata[23]),
        .I2(\m_axis_tdata[25]_i_2_n_0 ),
        .I3(s_axis_tdata[22]),
        .I4(s_axis_tdata[24]),
        .I5(s_axis_tdata[26]),
        .O(\m_axis_tdata[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[31]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[30]),
        .I2(\m_axis_tdata[31]_i_2_n_0 ),
        .I3(s_axis_tdata[31]),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata[31]_i_2 
       (.I0(s_axis_tdata[28]),
        .I1(\m_axis_tdata[30]_i_2_n_0 ),
        .I2(s_axis_tdata[27]),
        .I3(s_axis_tdata[29]),
        .O(\m_axis_tdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \m_axis_tdata[49]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[48]),
        .I2(s_axis_tdata[49]),
        .O(p_0_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAB54)) 
    \m_axis_tdata[50]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[49]),
        .I2(s_axis_tdata[48]),
        .I3(s_axis_tdata[50]),
        .O(p_0_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAB5554)) 
    \m_axis_tdata[51]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[50]),
        .I2(s_axis_tdata[48]),
        .I3(s_axis_tdata[49]),
        .I4(s_axis_tdata[51]),
        .O(p_0_in[51]));
  LUT6 #(
    .INIT(64'hAAAAAAAB55555554)) 
    \m_axis_tdata[52]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[51]),
        .I2(s_axis_tdata[49]),
        .I3(s_axis_tdata[48]),
        .I4(s_axis_tdata[50]),
        .I5(s_axis_tdata[52]),
        .O(p_0_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[53]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[53]_i_2_n_0 ),
        .I2(s_axis_tdata[53]),
        .O(p_0_in[53]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_axis_tdata[53]_i_2 
       (.I0(s_axis_tdata[51]),
        .I1(s_axis_tdata[49]),
        .I2(s_axis_tdata[48]),
        .I3(s_axis_tdata[50]),
        .I4(s_axis_tdata[52]),
        .O(\m_axis_tdata[53]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[54]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[57]_i_2_n_0 ),
        .I2(s_axis_tdata[54]),
        .O(p_0_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[55]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[54]),
        .I2(\m_axis_tdata[57]_i_2_n_0 ),
        .I3(s_axis_tdata[55]),
        .O(p_0_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \m_axis_tdata[56]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[55]),
        .I2(\m_axis_tdata[57]_i_2_n_0 ),
        .I3(s_axis_tdata[54]),
        .I4(s_axis_tdata[56]),
        .O(p_0_in[56]));
  LUT6 #(
    .INIT(64'hAAAAABAA55555455)) 
    \m_axis_tdata[57]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[56]),
        .I2(s_axis_tdata[54]),
        .I3(\m_axis_tdata[57]_i_2_n_0 ),
        .I4(s_axis_tdata[55]),
        .I5(s_axis_tdata[57]),
        .O(p_0_in[57]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_tdata[57]_i_2 
       (.I0(s_axis_tdata[52]),
        .I1(s_axis_tdata[50]),
        .I2(s_axis_tdata[48]),
        .I3(s_axis_tdata[49]),
        .I4(s_axis_tdata[51]),
        .I5(s_axis_tdata[53]),
        .O(\m_axis_tdata[57]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[58]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[58]_i_2_n_0 ),
        .I2(s_axis_tdata[58]),
        .O(p_0_in[58]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[58]_i_2 
       (.I0(s_axis_tdata[56]),
        .I1(s_axis_tdata[54]),
        .I2(\m_axis_tdata[57]_i_2_n_0 ),
        .I3(s_axis_tdata[55]),
        .I4(s_axis_tdata[57]),
        .O(\m_axis_tdata[58]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[59]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[62]_i_2_n_0 ),
        .I2(s_axis_tdata[59]),
        .O(p_0_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[60]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[59]),
        .I2(\m_axis_tdata[62]_i_2_n_0 ),
        .I3(s_axis_tdata[60]),
        .O(p_0_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \m_axis_tdata[61]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[60]),
        .I2(\m_axis_tdata[62]_i_2_n_0 ),
        .I3(s_axis_tdata[59]),
        .I4(s_axis_tdata[61]),
        .O(p_0_in[61]));
  LUT6 #(
    .INIT(64'hAAAAABAA55555455)) 
    \m_axis_tdata[62]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[61]),
        .I2(s_axis_tdata[59]),
        .I3(\m_axis_tdata[62]_i_2_n_0 ),
        .I4(s_axis_tdata[60]),
        .I5(s_axis_tdata[62]),
        .O(p_0_in[62]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[62]_i_2 
       (.I0(s_axis_tdata[57]),
        .I1(s_axis_tdata[55]),
        .I2(\m_axis_tdata[57]_i_2_n_0 ),
        .I3(s_axis_tdata[54]),
        .I4(s_axis_tdata[56]),
        .I5(s_axis_tdata[58]),
        .O(\m_axis_tdata[62]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[63]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[62]),
        .I2(\m_axis_tdata[63]_i_2_n_0 ),
        .I3(s_axis_tdata[63]),
        .O(p_0_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata[63]_i_2 
       (.I0(s_axis_tdata[60]),
        .I1(\m_axis_tdata[62]_i_2_n_0 ),
        .I2(s_axis_tdata[59]),
        .I3(s_axis_tdata[61]),
        .O(\m_axis_tdata[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \m_axis_tdata[81]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[80]),
        .I2(s_axis_tdata[81]),
        .O(p_0_in[81]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAB54)) 
    \m_axis_tdata[82]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[81]),
        .I2(s_axis_tdata[80]),
        .I3(s_axis_tdata[82]),
        .O(p_0_in[82]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAB5554)) 
    \m_axis_tdata[83]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[82]),
        .I2(s_axis_tdata[80]),
        .I3(s_axis_tdata[81]),
        .I4(s_axis_tdata[83]),
        .O(p_0_in[83]));
  LUT6 #(
    .INIT(64'hAAAAAAAB55555554)) 
    \m_axis_tdata[84]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[83]),
        .I2(s_axis_tdata[81]),
        .I3(s_axis_tdata[80]),
        .I4(s_axis_tdata[82]),
        .I5(s_axis_tdata[84]),
        .O(p_0_in[84]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[85]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[85]_i_2_n_0 ),
        .I2(s_axis_tdata[85]),
        .O(p_0_in[85]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_axis_tdata[85]_i_2 
       (.I0(s_axis_tdata[83]),
        .I1(s_axis_tdata[81]),
        .I2(s_axis_tdata[80]),
        .I3(s_axis_tdata[82]),
        .I4(s_axis_tdata[84]),
        .O(\m_axis_tdata[85]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[86]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[89]_i_2_n_0 ),
        .I2(s_axis_tdata[86]),
        .O(p_0_in[86]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[87]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[86]),
        .I2(\m_axis_tdata[89]_i_2_n_0 ),
        .I3(s_axis_tdata[87]),
        .O(p_0_in[87]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \m_axis_tdata[88]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[87]),
        .I2(\m_axis_tdata[89]_i_2_n_0 ),
        .I3(s_axis_tdata[86]),
        .I4(s_axis_tdata[88]),
        .O(p_0_in[88]));
  LUT6 #(
    .INIT(64'hAAAAABAA55555455)) 
    \m_axis_tdata[89]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[88]),
        .I2(s_axis_tdata[86]),
        .I3(\m_axis_tdata[89]_i_2_n_0 ),
        .I4(s_axis_tdata[87]),
        .I5(s_axis_tdata[89]),
        .O(p_0_in[89]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_tdata[89]_i_2 
       (.I0(s_axis_tdata[84]),
        .I1(s_axis_tdata[82]),
        .I2(s_axis_tdata[80]),
        .I3(s_axis_tdata[81]),
        .I4(s_axis_tdata[83]),
        .I5(s_axis_tdata[85]),
        .O(\m_axis_tdata[89]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[90]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[90]_i_2_n_0 ),
        .I2(s_axis_tdata[90]),
        .O(p_0_in[90]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[90]_i_2 
       (.I0(s_axis_tdata[88]),
        .I1(s_axis_tdata[86]),
        .I2(\m_axis_tdata[89]_i_2_n_0 ),
        .I3(s_axis_tdata[87]),
        .I4(s_axis_tdata[89]),
        .O(\m_axis_tdata[90]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[91]_i_1 
       (.I0(i_negative_freq),
        .I1(\m_axis_tdata[94]_i_2_n_0 ),
        .I2(s_axis_tdata[91]),
        .O(p_0_in[91]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[92]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[91]),
        .I2(\m_axis_tdata[94]_i_2_n_0 ),
        .I3(s_axis_tdata[92]),
        .O(p_0_in[92]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \m_axis_tdata[93]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[92]),
        .I2(\m_axis_tdata[94]_i_2_n_0 ),
        .I3(s_axis_tdata[91]),
        .I4(s_axis_tdata[93]),
        .O(p_0_in[93]));
  LUT6 #(
    .INIT(64'hAAAAABAA55555455)) 
    \m_axis_tdata[94]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[93]),
        .I2(s_axis_tdata[91]),
        .I3(\m_axis_tdata[94]_i_2_n_0 ),
        .I4(s_axis_tdata[92]),
        .I5(s_axis_tdata[94]),
        .O(p_0_in[94]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[94]_i_2 
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[87]),
        .I2(\m_axis_tdata[89]_i_2_n_0 ),
        .I3(s_axis_tdata[86]),
        .I4(s_axis_tdata[88]),
        .I5(s_axis_tdata[90]),
        .O(\m_axis_tdata[94]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA45)) 
    \m_axis_tdata[95]_i_1 
       (.I0(i_negative_freq),
        .I1(s_axis_tdata[94]),
        .I2(\m_axis_tdata[95]_i_2_n_0 ),
        .I3(s_axis_tdata[95]),
        .O(p_0_in[95]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata[95]_i_2 
       (.I0(s_axis_tdata[92]),
        .I1(\m_axis_tdata[94]_i_2_n_0 ),
        .I2(s_axis_tdata[91]),
        .I3(s_axis_tdata[93]),
        .O(\m_axis_tdata[95]_i_2_n_0 ));
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
        .D(s_axis_tdata[11]),
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
        .D(s_axis_tdata[1]),
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
        .D(s_axis_tdata[2]),
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
        .D(p_0_in[49]),
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
        .D(s_axis_tdata[5]),
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
        .D(s_axis_tdata[8]),
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
  FDRE \m_axis_tid_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[0]),
        .Q(m_axis_tid[0]),
        .R(1'b0));
  FDRE \m_axis_tid_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[1]),
        .Q(m_axis_tid[1]),
        .R(1'b0));
  FDRE \m_axis_tid_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[2]),
        .Q(m_axis_tid[2]),
        .R(1'b0));
  FDRE \m_axis_tid_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[3]),
        .Q(m_axis_tid[3]),
        .R(1'b0));
  FDRE \m_axis_tid_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[4]),
        .Q(m_axis_tid[4]),
        .R(1'b0));
  FDRE \m_axis_tid_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[5]),
        .Q(m_axis_tid[5]),
        .R(1'b0));
  FDRE \m_axis_tid_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[6]),
        .Q(m_axis_tid[6]),
        .R(1'b0));
  FDRE \m_axis_tid_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[7]),
        .Q(m_axis_tid[7]),
        .R(1'b0));
  FDRE m_axis_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(m_axis_tlast),
        .R(1'b0));
  FDRE \m_axis_tuser_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[0]),
        .Q(m_axis_tuser[0]),
        .R(1'b0));
  FDRE \m_axis_tuser_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[1]),
        .Q(m_axis_tuser[1]),
        .R(1'b0));
  FDRE \m_axis_tuser_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[2]),
        .Q(m_axis_tuser[2]),
        .R(1'b0));
  FDRE \m_axis_tuser_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[3]),
        .Q(m_axis_tuser[3]),
        .R(1'b0));
  FDRE \m_axis_tuser_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[4]),
        .Q(m_axis_tuser[4]),
        .R(1'b0));
  FDRE \m_axis_tuser_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[5]),
        .Q(m_axis_tuser[5]),
        .R(1'b0));
  FDRE \m_axis_tuser_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[6]),
        .Q(m_axis_tuser[6]),
        .R(1'b0));
  FDRE \m_axis_tuser_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[7]),
        .Q(m_axis_tuser[7]),
        .R(1'b0));
  FDRE m_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tvalid),
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
