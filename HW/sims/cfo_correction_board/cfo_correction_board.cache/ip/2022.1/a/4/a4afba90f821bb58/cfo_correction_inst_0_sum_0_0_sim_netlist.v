// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:13 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_inst_0_sum_0_0_sim_netlist.v
// Design      : cfo_correction_inst_0_sum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cfo_correction_inst_0_sum_0_0,sum,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sum,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axis_aclk,
    axis_aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tuser,
    s_axis_tid,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tuser,
    m_axis_tid,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis, FREQ_HZ 249997498" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [255:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [7:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [7:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output [7:0]m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TID" *) output [7:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire \<const0> ;
  wire axis_aclk;
  wire axis_aresetn;
  wire [63:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire [255:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tuser[7] = \<const0> ;
  assign m_axis_tuser[6] = \<const0> ;
  assign m_axis_tuser[5] = \<const0> ;
  assign m_axis_tuser[4] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sum inst
       (.axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sum
   (m_axis_tdata,
    m_axis_tvalid,
    s_axis_tvalid,
    s_axis_tlast,
    axis_aclk,
    axis_aresetn,
    s_axis_tdata);
  output [63:0]m_axis_tdata;
  output m_axis_tvalid;
  input s_axis_tvalid;
  input s_axis_tlast;
  input axis_aclk;
  input axis_aresetn;
  input [255:0]s_axis_tdata;

  wire [63:32]L;
  wire \accum_data_reg_n_0_[0] ;
  wire \accum_data_reg_n_0_[10] ;
  wire \accum_data_reg_n_0_[11] ;
  wire \accum_data_reg_n_0_[12] ;
  wire \accum_data_reg_n_0_[13] ;
  wire \accum_data_reg_n_0_[14] ;
  wire \accum_data_reg_n_0_[15] ;
  wire \accum_data_reg_n_0_[16] ;
  wire \accum_data_reg_n_0_[17] ;
  wire \accum_data_reg_n_0_[18] ;
  wire \accum_data_reg_n_0_[19] ;
  wire \accum_data_reg_n_0_[1] ;
  wire \accum_data_reg_n_0_[20] ;
  wire \accum_data_reg_n_0_[21] ;
  wire \accum_data_reg_n_0_[22] ;
  wire \accum_data_reg_n_0_[23] ;
  wire \accum_data_reg_n_0_[24] ;
  wire \accum_data_reg_n_0_[25] ;
  wire \accum_data_reg_n_0_[26] ;
  wire \accum_data_reg_n_0_[27] ;
  wire \accum_data_reg_n_0_[28] ;
  wire \accum_data_reg_n_0_[29] ;
  wire \accum_data_reg_n_0_[2] ;
  wire \accum_data_reg_n_0_[30] ;
  wire \accum_data_reg_n_0_[31] ;
  wire \accum_data_reg_n_0_[3] ;
  wire \accum_data_reg_n_0_[4] ;
  wire \accum_data_reg_n_0_[5] ;
  wire \accum_data_reg_n_0_[6] ;
  wire \accum_data_reg_n_0_[7] ;
  wire \accum_data_reg_n_0_[8] ;
  wire \accum_data_reg_n_0_[9] ;
  wire axis_aclk;
  wire axis_aresetn;
  wire [63:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[10]_i_1_n_0 ;
  wire \m_axis_tdata[11]_i_1_n_0 ;
  wire \m_axis_tdata[12]_i_1_n_0 ;
  wire \m_axis_tdata[13]_i_1_n_0 ;
  wire \m_axis_tdata[14]_i_1_n_0 ;
  wire \m_axis_tdata[15]_i_1_n_0 ;
  wire \m_axis_tdata[16]_i_1_n_0 ;
  wire \m_axis_tdata[17]_i_1_n_0 ;
  wire \m_axis_tdata[18]_i_1_n_0 ;
  wire \m_axis_tdata[19]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[20]_i_1_n_0 ;
  wire \m_axis_tdata[21]_i_1_n_0 ;
  wire \m_axis_tdata[22]_i_1_n_0 ;
  wire \m_axis_tdata[23]_i_1_n_0 ;
  wire \m_axis_tdata[24]_i_1_n_0 ;
  wire \m_axis_tdata[25]_i_1_n_0 ;
  wire \m_axis_tdata[26]_i_1_n_0 ;
  wire \m_axis_tdata[27]_i_1_n_0 ;
  wire \m_axis_tdata[28]_i_1_n_0 ;
  wire \m_axis_tdata[29]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[30]_i_1_n_0 ;
  wire \m_axis_tdata[31]_i_1_n_0 ;
  wire \m_axis_tdata[32]_i_1_n_0 ;
  wire \m_axis_tdata[33]_i_1_n_0 ;
  wire \m_axis_tdata[34]_i_1_n_0 ;
  wire \m_axis_tdata[35]_i_1_n_0 ;
  wire \m_axis_tdata[36]_i_1_n_0 ;
  wire \m_axis_tdata[37]_i_1_n_0 ;
  wire \m_axis_tdata[38]_i_1_n_0 ;
  wire \m_axis_tdata[39]_i_1_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[40]_i_1_n_0 ;
  wire \m_axis_tdata[41]_i_1_n_0 ;
  wire \m_axis_tdata[42]_i_1_n_0 ;
  wire \m_axis_tdata[43]_i_1_n_0 ;
  wire \m_axis_tdata[44]_i_1_n_0 ;
  wire \m_axis_tdata[45]_i_1_n_0 ;
  wire \m_axis_tdata[46]_i_1_n_0 ;
  wire \m_axis_tdata[47]_i_1_n_0 ;
  wire \m_axis_tdata[48]_i_1_n_0 ;
  wire \m_axis_tdata[49]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[50]_i_1_n_0 ;
  wire \m_axis_tdata[51]_i_1_n_0 ;
  wire \m_axis_tdata[52]_i_1_n_0 ;
  wire \m_axis_tdata[53]_i_1_n_0 ;
  wire \m_axis_tdata[54]_i_1_n_0 ;
  wire \m_axis_tdata[55]_i_1_n_0 ;
  wire \m_axis_tdata[56]_i_1_n_0 ;
  wire \m_axis_tdata[57]_i_1_n_0 ;
  wire \m_axis_tdata[58]_i_1_n_0 ;
  wire \m_axis_tdata[59]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[60]_i_1_n_0 ;
  wire \m_axis_tdata[61]_i_1_n_0 ;
  wire \m_axis_tdata[62]_i_1_n_0 ;
  wire \m_axis_tdata[63]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[8]_i_1_n_0 ;
  wire \m_axis_tdata[9]_i_1_n_0 ;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [63:0]p_1_in;
  wire [31:0]plusOp;
  wire [31:0]plusOp6_out;
  wire plusOp__0_carry__0_i_10_n_0;
  wire plusOp__0_carry__0_i_11_n_0;
  wire plusOp__0_carry__0_i_12_n_0;
  wire plusOp__0_carry__0_i_13_n_0;
  wire plusOp__0_carry__0_i_14_n_0;
  wire plusOp__0_carry__0_i_15_n_0;
  wire plusOp__0_carry__0_i_16_n_0;
  wire plusOp__0_carry__0_i_1_n_0;
  wire plusOp__0_carry__0_i_2_n_0;
  wire plusOp__0_carry__0_i_3_n_0;
  wire plusOp__0_carry__0_i_4_n_0;
  wire plusOp__0_carry__0_i_5_n_0;
  wire plusOp__0_carry__0_i_6_n_0;
  wire plusOp__0_carry__0_i_7_n_0;
  wire plusOp__0_carry__0_i_8_n_0;
  wire plusOp__0_carry__0_i_9_n_0;
  wire plusOp__0_carry__0_n_0;
  wire plusOp__0_carry__0_n_1;
  wire plusOp__0_carry__0_n_10;
  wire plusOp__0_carry__0_n_11;
  wire plusOp__0_carry__0_n_12;
  wire plusOp__0_carry__0_n_13;
  wire plusOp__0_carry__0_n_14;
  wire plusOp__0_carry__0_n_15;
  wire plusOp__0_carry__0_n_2;
  wire plusOp__0_carry__0_n_3;
  wire plusOp__0_carry__0_n_4;
  wire plusOp__0_carry__0_n_5;
  wire plusOp__0_carry__0_n_6;
  wire plusOp__0_carry__0_n_7;
  wire plusOp__0_carry__0_n_8;
  wire plusOp__0_carry__0_n_9;
  wire plusOp__0_carry__1_i_10_n_0;
  wire plusOp__0_carry__1_i_11_n_0;
  wire plusOp__0_carry__1_i_12_n_0;
  wire plusOp__0_carry__1_i_13_n_0;
  wire plusOp__0_carry__1_i_14_n_0;
  wire plusOp__0_carry__1_i_15_n_0;
  wire plusOp__0_carry__1_i_16_n_0;
  wire plusOp__0_carry__1_i_1_n_0;
  wire plusOp__0_carry__1_i_2_n_0;
  wire plusOp__0_carry__1_i_3_n_0;
  wire plusOp__0_carry__1_i_4_n_0;
  wire plusOp__0_carry__1_i_5_n_0;
  wire plusOp__0_carry__1_i_6_n_0;
  wire plusOp__0_carry__1_i_7_n_0;
  wire plusOp__0_carry__1_i_8_n_0;
  wire plusOp__0_carry__1_i_9_n_0;
  wire plusOp__0_carry__1_n_0;
  wire plusOp__0_carry__1_n_1;
  wire plusOp__0_carry__1_n_10;
  wire plusOp__0_carry__1_n_11;
  wire plusOp__0_carry__1_n_12;
  wire plusOp__0_carry__1_n_13;
  wire plusOp__0_carry__1_n_14;
  wire plusOp__0_carry__1_n_15;
  wire plusOp__0_carry__1_n_2;
  wire plusOp__0_carry__1_n_3;
  wire plusOp__0_carry__1_n_4;
  wire plusOp__0_carry__1_n_5;
  wire plusOp__0_carry__1_n_6;
  wire plusOp__0_carry__1_n_7;
  wire plusOp__0_carry__1_n_8;
  wire plusOp__0_carry__1_n_9;
  wire plusOp__0_carry__2_i_10_n_0;
  wire plusOp__0_carry__2_i_11_n_0;
  wire plusOp__0_carry__2_i_12_n_0;
  wire plusOp__0_carry__2_i_13_n_0;
  wire plusOp__0_carry__2_i_14_n_0;
  wire plusOp__0_carry__2_i_15_n_0;
  wire plusOp__0_carry__2_i_1_n_0;
  wire plusOp__0_carry__2_i_2_n_0;
  wire plusOp__0_carry__2_i_3_n_0;
  wire plusOp__0_carry__2_i_4_n_0;
  wire plusOp__0_carry__2_i_5_n_0;
  wire plusOp__0_carry__2_i_6_n_0;
  wire plusOp__0_carry__2_i_7_n_0;
  wire plusOp__0_carry__2_i_8_n_0;
  wire plusOp__0_carry__2_i_9_n_0;
  wire plusOp__0_carry__2_n_1;
  wire plusOp__0_carry__2_n_10;
  wire plusOp__0_carry__2_n_11;
  wire plusOp__0_carry__2_n_12;
  wire plusOp__0_carry__2_n_13;
  wire plusOp__0_carry__2_n_14;
  wire plusOp__0_carry__2_n_15;
  wire plusOp__0_carry__2_n_2;
  wire plusOp__0_carry__2_n_3;
  wire plusOp__0_carry__2_n_4;
  wire plusOp__0_carry__2_n_5;
  wire plusOp__0_carry__2_n_6;
  wire plusOp__0_carry__2_n_7;
  wire plusOp__0_carry__2_n_8;
  wire plusOp__0_carry__2_n_9;
  wire plusOp__0_carry_i_10_n_0;
  wire plusOp__0_carry_i_11_n_0;
  wire plusOp__0_carry_i_12_n_0;
  wire plusOp__0_carry_i_13_n_0;
  wire plusOp__0_carry_i_14_n_0;
  wire plusOp__0_carry_i_15_n_0;
  wire plusOp__0_carry_i_1_n_0;
  wire plusOp__0_carry_i_2_n_0;
  wire plusOp__0_carry_i_3_n_0;
  wire plusOp__0_carry_i_4_n_0;
  wire plusOp__0_carry_i_5_n_0;
  wire plusOp__0_carry_i_6_n_0;
  wire plusOp__0_carry_i_7_n_0;
  wire plusOp__0_carry_i_8_n_0;
  wire plusOp__0_carry_i_9_n_0;
  wire plusOp__0_carry_n_0;
  wire plusOp__0_carry_n_1;
  wire plusOp__0_carry_n_10;
  wire plusOp__0_carry_n_11;
  wire plusOp__0_carry_n_12;
  wire plusOp__0_carry_n_13;
  wire plusOp__0_carry_n_14;
  wire plusOp__0_carry_n_15;
  wire plusOp__0_carry_n_2;
  wire plusOp__0_carry_n_3;
  wire plusOp__0_carry_n_4;
  wire plusOp__0_carry_n_5;
  wire plusOp__0_carry_n_6;
  wire plusOp__0_carry_n_7;
  wire plusOp__0_carry_n_8;
  wire plusOp__0_carry_n_9;
  wire plusOp__188_carry__0_i_10_n_0;
  wire plusOp__188_carry__0_i_11_n_0;
  wire plusOp__188_carry__0_i_12_n_0;
  wire plusOp__188_carry__0_i_13_n_0;
  wire plusOp__188_carry__0_i_14_n_0;
  wire plusOp__188_carry__0_i_15_n_0;
  wire plusOp__188_carry__0_i_16_n_0;
  wire plusOp__188_carry__0_i_1_n_0;
  wire plusOp__188_carry__0_i_2_n_0;
  wire plusOp__188_carry__0_i_3_n_0;
  wire plusOp__188_carry__0_i_4_n_0;
  wire plusOp__188_carry__0_i_5_n_0;
  wire plusOp__188_carry__0_i_6_n_0;
  wire plusOp__188_carry__0_i_7_n_0;
  wire plusOp__188_carry__0_i_8_n_0;
  wire plusOp__188_carry__0_i_9_n_0;
  wire plusOp__188_carry__0_n_0;
  wire plusOp__188_carry__0_n_1;
  wire plusOp__188_carry__0_n_10;
  wire plusOp__188_carry__0_n_11;
  wire plusOp__188_carry__0_n_12;
  wire plusOp__188_carry__0_n_13;
  wire plusOp__188_carry__0_n_14;
  wire plusOp__188_carry__0_n_15;
  wire plusOp__188_carry__0_n_2;
  wire plusOp__188_carry__0_n_3;
  wire plusOp__188_carry__0_n_4;
  wire plusOp__188_carry__0_n_5;
  wire plusOp__188_carry__0_n_6;
  wire plusOp__188_carry__0_n_7;
  wire plusOp__188_carry__0_n_8;
  wire plusOp__188_carry__0_n_9;
  wire plusOp__188_carry__1_i_10_n_0;
  wire plusOp__188_carry__1_i_11_n_0;
  wire plusOp__188_carry__1_i_12_n_0;
  wire plusOp__188_carry__1_i_13_n_0;
  wire plusOp__188_carry__1_i_14_n_0;
  wire plusOp__188_carry__1_i_15_n_0;
  wire plusOp__188_carry__1_i_16_n_0;
  wire plusOp__188_carry__1_i_1_n_0;
  wire plusOp__188_carry__1_i_2_n_0;
  wire plusOp__188_carry__1_i_3_n_0;
  wire plusOp__188_carry__1_i_4_n_0;
  wire plusOp__188_carry__1_i_5_n_0;
  wire plusOp__188_carry__1_i_6_n_0;
  wire plusOp__188_carry__1_i_7_n_0;
  wire plusOp__188_carry__1_i_8_n_0;
  wire plusOp__188_carry__1_i_9_n_0;
  wire plusOp__188_carry__1_n_0;
  wire plusOp__188_carry__1_n_1;
  wire plusOp__188_carry__1_n_10;
  wire plusOp__188_carry__1_n_11;
  wire plusOp__188_carry__1_n_12;
  wire plusOp__188_carry__1_n_13;
  wire plusOp__188_carry__1_n_14;
  wire plusOp__188_carry__1_n_15;
  wire plusOp__188_carry__1_n_2;
  wire plusOp__188_carry__1_n_3;
  wire plusOp__188_carry__1_n_4;
  wire plusOp__188_carry__1_n_5;
  wire plusOp__188_carry__1_n_6;
  wire plusOp__188_carry__1_n_7;
  wire plusOp__188_carry__1_n_8;
  wire plusOp__188_carry__1_n_9;
  wire plusOp__188_carry__2_i_10_n_0;
  wire plusOp__188_carry__2_i_11_n_0;
  wire plusOp__188_carry__2_i_12_n_0;
  wire plusOp__188_carry__2_i_13_n_0;
  wire plusOp__188_carry__2_i_14_n_0;
  wire plusOp__188_carry__2_i_15_n_0;
  wire plusOp__188_carry__2_i_1_n_0;
  wire plusOp__188_carry__2_i_2_n_0;
  wire plusOp__188_carry__2_i_3_n_0;
  wire plusOp__188_carry__2_i_4_n_0;
  wire plusOp__188_carry__2_i_5_n_0;
  wire plusOp__188_carry__2_i_6_n_0;
  wire plusOp__188_carry__2_i_7_n_0;
  wire plusOp__188_carry__2_i_8_n_0;
  wire plusOp__188_carry__2_i_9_n_0;
  wire plusOp__188_carry__2_n_1;
  wire plusOp__188_carry__2_n_10;
  wire plusOp__188_carry__2_n_11;
  wire plusOp__188_carry__2_n_12;
  wire plusOp__188_carry__2_n_13;
  wire plusOp__188_carry__2_n_14;
  wire plusOp__188_carry__2_n_15;
  wire plusOp__188_carry__2_n_2;
  wire plusOp__188_carry__2_n_3;
  wire plusOp__188_carry__2_n_4;
  wire plusOp__188_carry__2_n_5;
  wire plusOp__188_carry__2_n_6;
  wire plusOp__188_carry__2_n_7;
  wire plusOp__188_carry__2_n_8;
  wire plusOp__188_carry__2_n_9;
  wire plusOp__188_carry_i_10_n_0;
  wire plusOp__188_carry_i_11_n_0;
  wire plusOp__188_carry_i_12_n_0;
  wire plusOp__188_carry_i_13_n_0;
  wire plusOp__188_carry_i_14_n_0;
  wire plusOp__188_carry_i_15_n_0;
  wire plusOp__188_carry_i_1_n_0;
  wire plusOp__188_carry_i_2_n_0;
  wire plusOp__188_carry_i_3_n_0;
  wire plusOp__188_carry_i_4_n_0;
  wire plusOp__188_carry_i_5_n_0;
  wire plusOp__188_carry_i_6_n_0;
  wire plusOp__188_carry_i_7_n_0;
  wire plusOp__188_carry_i_8_n_0;
  wire plusOp__188_carry_i_9_n_0;
  wire plusOp__188_carry_n_0;
  wire plusOp__188_carry_n_1;
  wire plusOp__188_carry_n_10;
  wire plusOp__188_carry_n_11;
  wire plusOp__188_carry_n_12;
  wire plusOp__188_carry_n_13;
  wire plusOp__188_carry_n_14;
  wire plusOp__188_carry_n_15;
  wire plusOp__188_carry_n_2;
  wire plusOp__188_carry_n_3;
  wire plusOp__188_carry_n_4;
  wire plusOp__188_carry_n_5;
  wire plusOp__188_carry_n_6;
  wire plusOp__188_carry_n_7;
  wire plusOp__188_carry_n_8;
  wire plusOp__188_carry_n_9;
  wire plusOp__282_carry__0_i_10_n_0;
  wire plusOp__282_carry__0_i_11_n_0;
  wire plusOp__282_carry__0_i_12_n_0;
  wire plusOp__282_carry__0_i_13_n_0;
  wire plusOp__282_carry__0_i_14_n_0;
  wire plusOp__282_carry__0_i_15_n_0;
  wire plusOp__282_carry__0_i_16_n_0;
  wire plusOp__282_carry__0_i_1_n_0;
  wire plusOp__282_carry__0_i_2_n_0;
  wire plusOp__282_carry__0_i_3_n_0;
  wire plusOp__282_carry__0_i_4_n_0;
  wire plusOp__282_carry__0_i_5_n_0;
  wire plusOp__282_carry__0_i_6_n_0;
  wire plusOp__282_carry__0_i_7_n_0;
  wire plusOp__282_carry__0_i_8_n_0;
  wire plusOp__282_carry__0_i_9_n_0;
  wire plusOp__282_carry__0_n_0;
  wire plusOp__282_carry__0_n_1;
  wire plusOp__282_carry__0_n_2;
  wire plusOp__282_carry__0_n_3;
  wire plusOp__282_carry__0_n_4;
  wire plusOp__282_carry__0_n_5;
  wire plusOp__282_carry__0_n_6;
  wire plusOp__282_carry__0_n_7;
  wire plusOp__282_carry__1_i_10_n_0;
  wire plusOp__282_carry__1_i_11_n_0;
  wire plusOp__282_carry__1_i_12_n_0;
  wire plusOp__282_carry__1_i_13_n_0;
  wire plusOp__282_carry__1_i_14_n_0;
  wire plusOp__282_carry__1_i_15_n_0;
  wire plusOp__282_carry__1_i_16_n_0;
  wire plusOp__282_carry__1_i_1_n_0;
  wire plusOp__282_carry__1_i_2_n_0;
  wire plusOp__282_carry__1_i_3_n_0;
  wire plusOp__282_carry__1_i_4_n_0;
  wire plusOp__282_carry__1_i_5_n_0;
  wire plusOp__282_carry__1_i_6_n_0;
  wire plusOp__282_carry__1_i_7_n_0;
  wire plusOp__282_carry__1_i_8_n_0;
  wire plusOp__282_carry__1_i_9_n_0;
  wire plusOp__282_carry__1_n_0;
  wire plusOp__282_carry__1_n_1;
  wire plusOp__282_carry__1_n_2;
  wire plusOp__282_carry__1_n_3;
  wire plusOp__282_carry__1_n_4;
  wire plusOp__282_carry__1_n_5;
  wire plusOp__282_carry__1_n_6;
  wire plusOp__282_carry__1_n_7;
  wire plusOp__282_carry__2_i_10_n_0;
  wire plusOp__282_carry__2_i_11_n_0;
  wire plusOp__282_carry__2_i_12_n_0;
  wire plusOp__282_carry__2_i_13_n_0;
  wire plusOp__282_carry__2_i_14_n_0;
  wire plusOp__282_carry__2_i_15_n_0;
  wire plusOp__282_carry__2_i_1_n_0;
  wire plusOp__282_carry__2_i_2_n_0;
  wire plusOp__282_carry__2_i_3_n_0;
  wire plusOp__282_carry__2_i_4_n_0;
  wire plusOp__282_carry__2_i_5_n_0;
  wire plusOp__282_carry__2_i_6_n_0;
  wire plusOp__282_carry__2_i_7_n_0;
  wire plusOp__282_carry__2_i_8_n_0;
  wire plusOp__282_carry__2_i_9_n_0;
  wire plusOp__282_carry__2_n_1;
  wire plusOp__282_carry__2_n_2;
  wire plusOp__282_carry__2_n_3;
  wire plusOp__282_carry__2_n_4;
  wire plusOp__282_carry__2_n_5;
  wire plusOp__282_carry__2_n_6;
  wire plusOp__282_carry__2_n_7;
  wire plusOp__282_carry_i_10_n_0;
  wire plusOp__282_carry_i_11_n_0;
  wire plusOp__282_carry_i_12_n_0;
  wire plusOp__282_carry_i_13_n_0;
  wire plusOp__282_carry_i_14_n_0;
  wire plusOp__282_carry_i_15_n_0;
  wire plusOp__282_carry_i_1_n_0;
  wire plusOp__282_carry_i_2_n_0;
  wire plusOp__282_carry_i_3_n_0;
  wire plusOp__282_carry_i_4_n_0;
  wire plusOp__282_carry_i_5_n_0;
  wire plusOp__282_carry_i_6_n_0;
  wire plusOp__282_carry_i_7_n_0;
  wire plusOp__282_carry_i_8_n_0;
  wire plusOp__282_carry_i_9_n_0;
  wire plusOp__282_carry_n_0;
  wire plusOp__282_carry_n_1;
  wire plusOp__282_carry_n_2;
  wire plusOp__282_carry_n_3;
  wire plusOp__282_carry_n_4;
  wire plusOp__282_carry_n_5;
  wire plusOp__282_carry_n_6;
  wire plusOp__282_carry_n_7;
  wire plusOp__94_carry__0_i_10_n_0;
  wire plusOp__94_carry__0_i_11_n_0;
  wire plusOp__94_carry__0_i_12_n_0;
  wire plusOp__94_carry__0_i_13_n_0;
  wire plusOp__94_carry__0_i_14_n_0;
  wire plusOp__94_carry__0_i_15_n_0;
  wire plusOp__94_carry__0_i_16_n_0;
  wire plusOp__94_carry__0_i_1_n_0;
  wire plusOp__94_carry__0_i_2_n_0;
  wire plusOp__94_carry__0_i_3_n_0;
  wire plusOp__94_carry__0_i_4_n_0;
  wire plusOp__94_carry__0_i_5_n_0;
  wire plusOp__94_carry__0_i_6_n_0;
  wire plusOp__94_carry__0_i_7_n_0;
  wire plusOp__94_carry__0_i_8_n_0;
  wire plusOp__94_carry__0_i_9_n_0;
  wire plusOp__94_carry__0_n_0;
  wire plusOp__94_carry__0_n_1;
  wire plusOp__94_carry__0_n_2;
  wire plusOp__94_carry__0_n_3;
  wire plusOp__94_carry__0_n_4;
  wire plusOp__94_carry__0_n_5;
  wire plusOp__94_carry__0_n_6;
  wire plusOp__94_carry__0_n_7;
  wire plusOp__94_carry__1_i_10_n_0;
  wire plusOp__94_carry__1_i_11_n_0;
  wire plusOp__94_carry__1_i_12_n_0;
  wire plusOp__94_carry__1_i_13_n_0;
  wire plusOp__94_carry__1_i_14_n_0;
  wire plusOp__94_carry__1_i_15_n_0;
  wire plusOp__94_carry__1_i_16_n_0;
  wire plusOp__94_carry__1_i_1_n_0;
  wire plusOp__94_carry__1_i_2_n_0;
  wire plusOp__94_carry__1_i_3_n_0;
  wire plusOp__94_carry__1_i_4_n_0;
  wire plusOp__94_carry__1_i_5_n_0;
  wire plusOp__94_carry__1_i_6_n_0;
  wire plusOp__94_carry__1_i_7_n_0;
  wire plusOp__94_carry__1_i_8_n_0;
  wire plusOp__94_carry__1_i_9_n_0;
  wire plusOp__94_carry__1_n_0;
  wire plusOp__94_carry__1_n_1;
  wire plusOp__94_carry__1_n_2;
  wire plusOp__94_carry__1_n_3;
  wire plusOp__94_carry__1_n_4;
  wire plusOp__94_carry__1_n_5;
  wire plusOp__94_carry__1_n_6;
  wire plusOp__94_carry__1_n_7;
  wire plusOp__94_carry__2_i_10_n_0;
  wire plusOp__94_carry__2_i_11_n_0;
  wire plusOp__94_carry__2_i_12_n_0;
  wire plusOp__94_carry__2_i_13_n_0;
  wire plusOp__94_carry__2_i_14_n_0;
  wire plusOp__94_carry__2_i_15_n_0;
  wire plusOp__94_carry__2_i_1_n_0;
  wire plusOp__94_carry__2_i_2_n_0;
  wire plusOp__94_carry__2_i_3_n_0;
  wire plusOp__94_carry__2_i_4_n_0;
  wire plusOp__94_carry__2_i_5_n_0;
  wire plusOp__94_carry__2_i_6_n_0;
  wire plusOp__94_carry__2_i_7_n_0;
  wire plusOp__94_carry__2_i_8_n_0;
  wire plusOp__94_carry__2_i_9_n_0;
  wire plusOp__94_carry__2_n_1;
  wire plusOp__94_carry__2_n_2;
  wire plusOp__94_carry__2_n_3;
  wire plusOp__94_carry__2_n_4;
  wire plusOp__94_carry__2_n_5;
  wire plusOp__94_carry__2_n_6;
  wire plusOp__94_carry__2_n_7;
  wire plusOp__94_carry_i_10_n_0;
  wire plusOp__94_carry_i_11_n_0;
  wire plusOp__94_carry_i_12_n_0;
  wire plusOp__94_carry_i_13_n_0;
  wire plusOp__94_carry_i_14_n_0;
  wire plusOp__94_carry_i_15_n_0;
  wire plusOp__94_carry_i_1_n_0;
  wire plusOp__94_carry_i_2_n_0;
  wire plusOp__94_carry_i_3_n_0;
  wire plusOp__94_carry_i_4_n_0;
  wire plusOp__94_carry_i_5_n_0;
  wire plusOp__94_carry_i_6_n_0;
  wire plusOp__94_carry_i_7_n_0;
  wire plusOp__94_carry_i_8_n_0;
  wire plusOp__94_carry_i_9_n_0;
  wire plusOp__94_carry_n_0;
  wire plusOp__94_carry_n_1;
  wire plusOp__94_carry_n_2;
  wire plusOp__94_carry_n_3;
  wire plusOp__94_carry_n_4;
  wire plusOp__94_carry_n_5;
  wire plusOp__94_carry_n_6;
  wire plusOp__94_carry_n_7;
  wire r_flip;
  wire r_flip_i_1_n_0;
  wire r_tlast;
  wire [255:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [7:7]NLW_plusOp__0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp__188_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp__282_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp__94_carry__2_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[0]_i_1 
       (.I0(plusOp6_out[0]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[10]_i_1 
       (.I0(plusOp6_out[10]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[10] ),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[11]_i_1 
       (.I0(plusOp6_out[11]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[11] ),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[12]_i_1 
       (.I0(plusOp6_out[12]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[12] ),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[13]_i_1 
       (.I0(plusOp6_out[13]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[13] ),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[14]_i_1 
       (.I0(plusOp6_out[14]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[14] ),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[15]_i_1 
       (.I0(plusOp6_out[15]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[15] ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[16]_i_1 
       (.I0(plusOp6_out[16]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[16] ),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[17]_i_1 
       (.I0(plusOp6_out[17]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[17] ),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[18]_i_1 
       (.I0(plusOp6_out[18]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[18] ),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[19]_i_1 
       (.I0(plusOp6_out[19]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[19] ),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[1]_i_1 
       (.I0(plusOp6_out[1]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[1] ),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[20]_i_1 
       (.I0(plusOp6_out[20]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[20] ),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[21]_i_1 
       (.I0(plusOp6_out[21]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[21] ),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[22]_i_1 
       (.I0(plusOp6_out[22]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[22] ),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[23]_i_1 
       (.I0(plusOp6_out[23]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[23] ),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[24]_i_1 
       (.I0(plusOp6_out[24]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[24] ),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[25]_i_1 
       (.I0(plusOp6_out[25]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[25] ),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[26]_i_1 
       (.I0(plusOp6_out[26]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[26] ),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[27]_i_1 
       (.I0(plusOp6_out[27]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[27] ),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[28]_i_1 
       (.I0(plusOp6_out[28]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[28] ),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[29]_i_1 
       (.I0(plusOp6_out[29]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[29] ),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[2]_i_1 
       (.I0(plusOp6_out[2]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[2] ),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[30]_i_1 
       (.I0(plusOp6_out[30]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[30] ),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[31]_i_1 
       (.I0(plusOp6_out[31]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[31] ),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[32]_i_1 
       (.I0(plusOp[0]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[32]),
        .O(p_1_in[32]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[33]_i_1 
       (.I0(plusOp[1]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[33]),
        .O(p_1_in[33]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[34]_i_1 
       (.I0(plusOp[2]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[34]),
        .O(p_1_in[34]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[35]_i_1 
       (.I0(plusOp[3]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[35]),
        .O(p_1_in[35]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[36]_i_1 
       (.I0(plusOp[4]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[36]),
        .O(p_1_in[36]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[37]_i_1 
       (.I0(plusOp[5]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[37]),
        .O(p_1_in[37]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[38]_i_1 
       (.I0(plusOp[6]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[38]),
        .O(p_1_in[38]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[39]_i_1 
       (.I0(plusOp[7]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[39]),
        .O(p_1_in[39]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[3]_i_1 
       (.I0(plusOp6_out[3]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[40]_i_1 
       (.I0(plusOp[8]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[40]),
        .O(p_1_in[40]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[41]_i_1 
       (.I0(plusOp[9]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[41]),
        .O(p_1_in[41]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[42]_i_1 
       (.I0(plusOp[10]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[42]),
        .O(p_1_in[42]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[43]_i_1 
       (.I0(plusOp[11]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[43]),
        .O(p_1_in[43]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[44]_i_1 
       (.I0(plusOp[12]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[44]),
        .O(p_1_in[44]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[45]_i_1 
       (.I0(plusOp[13]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[45]),
        .O(p_1_in[45]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[46]_i_1 
       (.I0(plusOp[14]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[46]),
        .O(p_1_in[46]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[47]_i_1 
       (.I0(plusOp[15]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[47]),
        .O(p_1_in[47]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[48]_i_1 
       (.I0(plusOp[16]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[48]),
        .O(p_1_in[48]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[49]_i_1 
       (.I0(plusOp[17]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[49]),
        .O(p_1_in[49]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[4]_i_1 
       (.I0(plusOp6_out[4]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[4] ),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[50]_i_1 
       (.I0(plusOp[18]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[50]),
        .O(p_1_in[50]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[51]_i_1 
       (.I0(plusOp[19]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[51]),
        .O(p_1_in[51]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[52]_i_1 
       (.I0(plusOp[20]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[52]),
        .O(p_1_in[52]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[53]_i_1 
       (.I0(plusOp[21]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[53]),
        .O(p_1_in[53]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[54]_i_1 
       (.I0(plusOp[22]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[54]),
        .O(p_1_in[54]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[55]_i_1 
       (.I0(plusOp[23]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[55]),
        .O(p_1_in[55]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[56]_i_1 
       (.I0(plusOp[24]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[56]),
        .O(p_1_in[56]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[57]_i_1 
       (.I0(plusOp[25]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[57]),
        .O(p_1_in[57]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[58]_i_1 
       (.I0(plusOp[26]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[58]),
        .O(p_1_in[58]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[59]_i_1 
       (.I0(plusOp[27]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[59]),
        .O(p_1_in[59]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[5]_i_1 
       (.I0(plusOp6_out[5]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[5] ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[60]_i_1 
       (.I0(plusOp[28]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[60]),
        .O(p_1_in[60]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[61]_i_1 
       (.I0(plusOp[29]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[61]),
        .O(p_1_in[61]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[62]_i_1 
       (.I0(plusOp[30]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[62]),
        .O(p_1_in[62]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[63]_i_1 
       (.I0(plusOp[31]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(L[63]),
        .O(p_1_in[63]));
  LUT1 #(
    .INIT(2'h1)) 
    \accum_data[63]_i_2 
       (.I0(axis_aresetn),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[6]_i_1 
       (.I0(plusOp6_out[6]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[6] ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[7]_i_1 
       (.I0(plusOp6_out[7]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[7] ),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[8]_i_1 
       (.I0(plusOp6_out[8]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[8] ),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hABA8A8A8)) 
    \accum_data[9]_i_1 
       (.I0(plusOp6_out[9]),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(r_flip),
        .I4(\accum_data_reg_n_0_[9] ),
        .O(p_1_in[9]));
  FDCE \accum_data_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[0]),
        .Q(\accum_data_reg_n_0_[0] ));
  FDCE \accum_data_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[10]),
        .Q(\accum_data_reg_n_0_[10] ));
  FDCE \accum_data_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[11]),
        .Q(\accum_data_reg_n_0_[11] ));
  FDCE \accum_data_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[12]),
        .Q(\accum_data_reg_n_0_[12] ));
  FDCE \accum_data_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[13]),
        .Q(\accum_data_reg_n_0_[13] ));
  FDCE \accum_data_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[14]),
        .Q(\accum_data_reg_n_0_[14] ));
  FDCE \accum_data_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[15]),
        .Q(\accum_data_reg_n_0_[15] ));
  FDCE \accum_data_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[16]),
        .Q(\accum_data_reg_n_0_[16] ));
  FDCE \accum_data_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[17]),
        .Q(\accum_data_reg_n_0_[17] ));
  FDCE \accum_data_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[18]),
        .Q(\accum_data_reg_n_0_[18] ));
  FDCE \accum_data_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[19]),
        .Q(\accum_data_reg_n_0_[19] ));
  FDCE \accum_data_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[1]),
        .Q(\accum_data_reg_n_0_[1] ));
  FDCE \accum_data_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[20]),
        .Q(\accum_data_reg_n_0_[20] ));
  FDCE \accum_data_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[21]),
        .Q(\accum_data_reg_n_0_[21] ));
  FDCE \accum_data_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[22]),
        .Q(\accum_data_reg_n_0_[22] ));
  FDCE \accum_data_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[23]),
        .Q(\accum_data_reg_n_0_[23] ));
  FDCE \accum_data_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[24]),
        .Q(\accum_data_reg_n_0_[24] ));
  FDCE \accum_data_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[25]),
        .Q(\accum_data_reg_n_0_[25] ));
  FDCE \accum_data_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[26]),
        .Q(\accum_data_reg_n_0_[26] ));
  FDCE \accum_data_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[27]),
        .Q(\accum_data_reg_n_0_[27] ));
  FDCE \accum_data_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[28]),
        .Q(\accum_data_reg_n_0_[28] ));
  FDCE \accum_data_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[29]),
        .Q(\accum_data_reg_n_0_[29] ));
  FDCE \accum_data_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[2]),
        .Q(\accum_data_reg_n_0_[2] ));
  FDCE \accum_data_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[30]),
        .Q(\accum_data_reg_n_0_[30] ));
  FDCE \accum_data_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[31]),
        .Q(\accum_data_reg_n_0_[31] ));
  FDCE \accum_data_reg[32] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[32]),
        .Q(L[32]));
  FDCE \accum_data_reg[33] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[33]),
        .Q(L[33]));
  FDCE \accum_data_reg[34] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[34]),
        .Q(L[34]));
  FDCE \accum_data_reg[35] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[35]),
        .Q(L[35]));
  FDCE \accum_data_reg[36] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[36]),
        .Q(L[36]));
  FDCE \accum_data_reg[37] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[37]),
        .Q(L[37]));
  FDCE \accum_data_reg[38] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[38]),
        .Q(L[38]));
  FDCE \accum_data_reg[39] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[39]),
        .Q(L[39]));
  FDCE \accum_data_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[3]),
        .Q(\accum_data_reg_n_0_[3] ));
  FDCE \accum_data_reg[40] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[40]),
        .Q(L[40]));
  FDCE \accum_data_reg[41] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[41]),
        .Q(L[41]));
  FDCE \accum_data_reg[42] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[42]),
        .Q(L[42]));
  FDCE \accum_data_reg[43] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[43]),
        .Q(L[43]));
  FDCE \accum_data_reg[44] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[44]),
        .Q(L[44]));
  FDCE \accum_data_reg[45] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[45]),
        .Q(L[45]));
  FDCE \accum_data_reg[46] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[46]),
        .Q(L[46]));
  FDCE \accum_data_reg[47] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[47]),
        .Q(L[47]));
  FDCE \accum_data_reg[48] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[48]),
        .Q(L[48]));
  FDCE \accum_data_reg[49] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[49]),
        .Q(L[49]));
  FDCE \accum_data_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[4]),
        .Q(\accum_data_reg_n_0_[4] ));
  FDCE \accum_data_reg[50] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[50]),
        .Q(L[50]));
  FDCE \accum_data_reg[51] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[51]),
        .Q(L[51]));
  FDCE \accum_data_reg[52] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[52]),
        .Q(L[52]));
  FDCE \accum_data_reg[53] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[53]),
        .Q(L[53]));
  FDCE \accum_data_reg[54] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[54]),
        .Q(L[54]));
  FDCE \accum_data_reg[55] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[55]),
        .Q(L[55]));
  FDCE \accum_data_reg[56] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[56]),
        .Q(L[56]));
  FDCE \accum_data_reg[57] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[57]),
        .Q(L[57]));
  FDCE \accum_data_reg[58] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[58]),
        .Q(L[58]));
  FDCE \accum_data_reg[59] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[59]),
        .Q(L[59]));
  FDCE \accum_data_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[5]),
        .Q(\accum_data_reg_n_0_[5] ));
  FDCE \accum_data_reg[60] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[60]),
        .Q(L[60]));
  FDCE \accum_data_reg[61] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[61]),
        .Q(L[61]));
  FDCE \accum_data_reg[62] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[62]),
        .Q(L[62]));
  FDCE \accum_data_reg[63] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[63]),
        .Q(L[63]));
  FDCE \accum_data_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[6]),
        .Q(\accum_data_reg_n_0_[6] ));
  FDCE \accum_data_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[7]),
        .Q(\accum_data_reg_n_0_[7] ));
  FDCE \accum_data_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[8]),
        .Q(\accum_data_reg_n_0_[8] ));
  FDCE \accum_data_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in[9]),
        .Q(\accum_data_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[0]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[0] ),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[10]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[10] ),
        .O(\m_axis_tdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[11]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[11] ),
        .O(\m_axis_tdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[12]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[12] ),
        .O(\m_axis_tdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[13]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[13] ),
        .O(\m_axis_tdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[14]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[14] ),
        .O(\m_axis_tdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[15]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[15] ),
        .O(\m_axis_tdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[16]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[16] ),
        .O(\m_axis_tdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[17]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[17] ),
        .O(\m_axis_tdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[18]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[18] ),
        .O(\m_axis_tdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[19]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[19] ),
        .O(\m_axis_tdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[1]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[1] ),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[20]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[20] ),
        .O(\m_axis_tdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[21]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[21] ),
        .O(\m_axis_tdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[22]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[22] ),
        .O(\m_axis_tdata[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[23]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[23] ),
        .O(\m_axis_tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[24]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[24] ),
        .O(\m_axis_tdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[25]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[25] ),
        .O(\m_axis_tdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[26]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[26] ),
        .O(\m_axis_tdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[27]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[27] ),
        .O(\m_axis_tdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[28]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[28] ),
        .O(\m_axis_tdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[29]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[29] ),
        .O(\m_axis_tdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[2]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[2] ),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[30]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[30] ),
        .O(\m_axis_tdata[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[31]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[31] ),
        .O(\m_axis_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[32]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[32]),
        .O(\m_axis_tdata[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[33]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[33]),
        .O(\m_axis_tdata[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[34]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[34]),
        .O(\m_axis_tdata[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[35]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[35]),
        .O(\m_axis_tdata[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[36]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[36]),
        .O(\m_axis_tdata[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[37]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[37]),
        .O(\m_axis_tdata[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[38]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[38]),
        .O(\m_axis_tdata[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[39]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[39]),
        .O(\m_axis_tdata[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[3]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[3] ),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[40]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[40]),
        .O(\m_axis_tdata[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[41]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[41]),
        .O(\m_axis_tdata[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[42]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[42]),
        .O(\m_axis_tdata[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[43]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[43]),
        .O(\m_axis_tdata[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[44]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[44]),
        .O(\m_axis_tdata[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[45]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[45]),
        .O(\m_axis_tdata[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[46]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[46]),
        .O(\m_axis_tdata[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[47]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[47]),
        .O(\m_axis_tdata[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[48]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[48]),
        .O(\m_axis_tdata[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[49]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[49]),
        .O(\m_axis_tdata[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[4]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[4] ),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[50]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[50]),
        .O(\m_axis_tdata[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[51]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[51]),
        .O(\m_axis_tdata[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[52]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[52]),
        .O(\m_axis_tdata[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[53]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[53]),
        .O(\m_axis_tdata[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[54]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[54]),
        .O(\m_axis_tdata[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[55]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[55]),
        .O(\m_axis_tdata[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[56]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[56]),
        .O(\m_axis_tdata[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[57]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[57]),
        .O(\m_axis_tdata[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[58]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[58]),
        .O(\m_axis_tdata[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[59]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[59]),
        .O(\m_axis_tdata[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[5]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[5] ),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[60]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[60]),
        .O(\m_axis_tdata[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[61]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[61]),
        .O(\m_axis_tdata[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[62]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[62]),
        .O(\m_axis_tdata[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[63]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(L[63]),
        .O(\m_axis_tdata[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[6]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[6] ),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[7]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[7] ),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[8]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[8] ),
        .O(\m_axis_tdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata[9]_i_1 
       (.I0(r_tlast),
        .I1(s_axis_tvalid),
        .I2(r_flip),
        .I3(\accum_data_reg_n_0_[9] ),
        .O(\m_axis_tdata[9]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[10]_i_1_n_0 ),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[11]_i_1_n_0 ),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[12]_i_1_n_0 ),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[13]_i_1_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[14]_i_1_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[15]_i_1_n_0 ),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[16]_i_1_n_0 ),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[17]_i_1_n_0 ),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[18]_i_1_n_0 ),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[19]_i_1_n_0 ),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[20]_i_1_n_0 ),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[21]_i_1_n_0 ),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[22]_i_1_n_0 ),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[23]_i_1_n_0 ),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[24]_i_1_n_0 ),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[25]_i_1_n_0 ),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[26]_i_1_n_0 ),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[27]_i_1_n_0 ),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[28]_i_1_n_0 ),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[29]_i_1_n_0 ),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[30]_i_1_n_0 ),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[31]_i_1_n_0 ),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[32] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[32]_i_1_n_0 ),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[33] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[33]_i_1_n_0 ),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[34] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[34]_i_1_n_0 ),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[35] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[35]_i_1_n_0 ),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[36] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[36]_i_1_n_0 ),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[37] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[37]_i_1_n_0 ),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[38] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[38]_i_1_n_0 ),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[39] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[39]_i_1_n_0 ),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[40] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[40]_i_1_n_0 ),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[41] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[41]_i_1_n_0 ),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[42] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[42]_i_1_n_0 ),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[43] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[43]_i_1_n_0 ),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[44] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[44]_i_1_n_0 ),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[45] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[45]_i_1_n_0 ),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[46] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[46]_i_1_n_0 ),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[47] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[47]_i_1_n_0 ),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[48] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[48]_i_1_n_0 ),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[49] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[49]_i_1_n_0 ),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[50] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[50]_i_1_n_0 ),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[51] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[51]_i_1_n_0 ),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[52] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[52]_i_1_n_0 ),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[53] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[53]_i_1_n_0 ),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[54] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[54]_i_1_n_0 ),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[55] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[55]_i_1_n_0 ),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[56] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[56]_i_1_n_0 ),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[57] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[57]_i_1_n_0 ),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[58] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[58]_i_1_n_0 ),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[59] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[59]_i_1_n_0 ),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[60] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[60]_i_1_n_0 ),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[61] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[61]_i_1_n_0 ),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[62] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[62]_i_1_n_0 ),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[63] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[63]_i_1_n_0 ),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[7]_i_1_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[8]_i_1_n_0 ),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(\m_axis_tdata[9]_i_1_n_0 ),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA8)) 
    m_axis_tvalid_i_1
       (.I0(axis_aresetn),
        .I1(r_tlast),
        .I2(s_axis_tvalid),
        .O(m_axis_tdata0));
  FDRE m_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(r_flip),
        .Q(m_axis_tvalid),
        .R(m_axis_tdata0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({plusOp__0_carry_n_0,plusOp__0_carry_n_1,plusOp__0_carry_n_2,plusOp__0_carry_n_3,plusOp__0_carry_n_4,plusOp__0_carry_n_5,plusOp__0_carry_n_6,plusOp__0_carry_n_7}),
        .DI({plusOp__0_carry_i_1_n_0,plusOp__0_carry_i_2_n_0,plusOp__0_carry_i_3_n_0,plusOp__0_carry_i_4_n_0,plusOp__0_carry_i_5_n_0,plusOp__0_carry_i_6_n_0,plusOp__0_carry_i_7_n_0,1'b0}),
        .O({plusOp__0_carry_n_8,plusOp__0_carry_n_9,plusOp__0_carry_n_10,plusOp__0_carry_n_11,plusOp__0_carry_n_12,plusOp__0_carry_n_13,plusOp__0_carry_n_14,plusOp__0_carry_n_15}),
        .S({plusOp__0_carry_i_8_n_0,plusOp__0_carry_i_9_n_0,plusOp__0_carry_i_10_n_0,plusOp__0_carry_i_11_n_0,plusOp__0_carry_i_12_n_0,plusOp__0_carry_i_13_n_0,plusOp__0_carry_i_14_n_0,plusOp__0_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__0_carry__0
       (.CI(plusOp__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp__0_carry__0_n_0,plusOp__0_carry__0_n_1,plusOp__0_carry__0_n_2,plusOp__0_carry__0_n_3,plusOp__0_carry__0_n_4,plusOp__0_carry__0_n_5,plusOp__0_carry__0_n_6,plusOp__0_carry__0_n_7}),
        .DI({plusOp__0_carry__0_i_1_n_0,plusOp__0_carry__0_i_2_n_0,plusOp__0_carry__0_i_3_n_0,plusOp__0_carry__0_i_4_n_0,plusOp__0_carry__0_i_5_n_0,plusOp__0_carry__0_i_6_n_0,plusOp__0_carry__0_i_7_n_0,plusOp__0_carry__0_i_8_n_0}),
        .O({plusOp__0_carry__0_n_8,plusOp__0_carry__0_n_9,plusOp__0_carry__0_n_10,plusOp__0_carry__0_n_11,plusOp__0_carry__0_n_12,plusOp__0_carry__0_n_13,plusOp__0_carry__0_n_14,plusOp__0_carry__0_n_15}),
        .S({plusOp__0_carry__0_i_9_n_0,plusOp__0_carry__0_i_10_n_0,plusOp__0_carry__0_i_11_n_0,plusOp__0_carry__0_i_12_n_0,plusOp__0_carry__0_i_13_n_0,plusOp__0_carry__0_i_14_n_0,plusOp__0_carry__0_i_15_n_0,plusOp__0_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__0_i_1
       (.I0(s_axis_tdata[142]),
        .I1(s_axis_tdata[206]),
        .I2(\accum_data_reg_n_0_[14] ),
        .O(plusOp__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__0_i_10
       (.I0(s_axis_tdata[142]),
        .I1(s_axis_tdata[206]),
        .I2(\accum_data_reg_n_0_[14] ),
        .I3(plusOp__0_carry__0_i_2_n_0),
        .O(plusOp__0_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__0_i_11
       (.I0(s_axis_tdata[141]),
        .I1(s_axis_tdata[205]),
        .I2(\accum_data_reg_n_0_[13] ),
        .I3(plusOp__0_carry__0_i_3_n_0),
        .O(plusOp__0_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__0_i_12
       (.I0(s_axis_tdata[140]),
        .I1(s_axis_tdata[204]),
        .I2(\accum_data_reg_n_0_[12] ),
        .I3(plusOp__0_carry__0_i_4_n_0),
        .O(plusOp__0_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__0_i_13
       (.I0(s_axis_tdata[139]),
        .I1(s_axis_tdata[203]),
        .I2(\accum_data_reg_n_0_[11] ),
        .I3(plusOp__0_carry__0_i_5_n_0),
        .O(plusOp__0_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__0_i_14
       (.I0(s_axis_tdata[138]),
        .I1(s_axis_tdata[202]),
        .I2(\accum_data_reg_n_0_[10] ),
        .I3(plusOp__0_carry__0_i_6_n_0),
        .O(plusOp__0_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__0_i_15
       (.I0(s_axis_tdata[137]),
        .I1(s_axis_tdata[201]),
        .I2(\accum_data_reg_n_0_[9] ),
        .I3(plusOp__0_carry__0_i_7_n_0),
        .O(plusOp__0_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__0_i_16
       (.I0(s_axis_tdata[136]),
        .I1(s_axis_tdata[200]),
        .I2(\accum_data_reg_n_0_[8] ),
        .I3(plusOp__0_carry__0_i_8_n_0),
        .O(plusOp__0_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__0_i_2
       (.I0(s_axis_tdata[141]),
        .I1(s_axis_tdata[205]),
        .I2(\accum_data_reg_n_0_[13] ),
        .O(plusOp__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__0_i_3
       (.I0(s_axis_tdata[140]),
        .I1(s_axis_tdata[204]),
        .I2(\accum_data_reg_n_0_[12] ),
        .O(plusOp__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__0_i_4
       (.I0(s_axis_tdata[139]),
        .I1(s_axis_tdata[203]),
        .I2(\accum_data_reg_n_0_[11] ),
        .O(plusOp__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__0_i_5
       (.I0(s_axis_tdata[138]),
        .I1(s_axis_tdata[202]),
        .I2(\accum_data_reg_n_0_[10] ),
        .O(plusOp__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__0_i_6
       (.I0(s_axis_tdata[137]),
        .I1(s_axis_tdata[201]),
        .I2(\accum_data_reg_n_0_[9] ),
        .O(plusOp__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__0_i_7
       (.I0(s_axis_tdata[136]),
        .I1(s_axis_tdata[200]),
        .I2(\accum_data_reg_n_0_[8] ),
        .O(plusOp__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__0_i_8
       (.I0(s_axis_tdata[135]),
        .I1(s_axis_tdata[199]),
        .I2(\accum_data_reg_n_0_[7] ),
        .O(plusOp__0_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__0_i_9
       (.I0(s_axis_tdata[143]),
        .I1(s_axis_tdata[207]),
        .I2(\accum_data_reg_n_0_[15] ),
        .I3(plusOp__0_carry__0_i_1_n_0),
        .O(plusOp__0_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__0_carry__1
       (.CI(plusOp__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp__0_carry__1_n_0,plusOp__0_carry__1_n_1,plusOp__0_carry__1_n_2,plusOp__0_carry__1_n_3,plusOp__0_carry__1_n_4,plusOp__0_carry__1_n_5,plusOp__0_carry__1_n_6,plusOp__0_carry__1_n_7}),
        .DI({plusOp__0_carry__1_i_1_n_0,plusOp__0_carry__1_i_2_n_0,plusOp__0_carry__1_i_3_n_0,plusOp__0_carry__1_i_4_n_0,plusOp__0_carry__1_i_5_n_0,plusOp__0_carry__1_i_6_n_0,plusOp__0_carry__1_i_7_n_0,plusOp__0_carry__1_i_8_n_0}),
        .O({plusOp__0_carry__1_n_8,plusOp__0_carry__1_n_9,plusOp__0_carry__1_n_10,plusOp__0_carry__1_n_11,plusOp__0_carry__1_n_12,plusOp__0_carry__1_n_13,plusOp__0_carry__1_n_14,plusOp__0_carry__1_n_15}),
        .S({plusOp__0_carry__1_i_9_n_0,plusOp__0_carry__1_i_10_n_0,plusOp__0_carry__1_i_11_n_0,plusOp__0_carry__1_i_12_n_0,plusOp__0_carry__1_i_13_n_0,plusOp__0_carry__1_i_14_n_0,plusOp__0_carry__1_i_15_n_0,plusOp__0_carry__1_i_16_n_0}));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__1_i_1
       (.I0(s_axis_tdata[150]),
        .I1(s_axis_tdata[214]),
        .I2(\accum_data_reg_n_0_[22] ),
        .O(plusOp__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__1_i_10
       (.I0(s_axis_tdata[150]),
        .I1(s_axis_tdata[214]),
        .I2(\accum_data_reg_n_0_[22] ),
        .I3(plusOp__0_carry__1_i_2_n_0),
        .O(plusOp__0_carry__1_i_10_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__1_i_11
       (.I0(s_axis_tdata[149]),
        .I1(s_axis_tdata[213]),
        .I2(\accum_data_reg_n_0_[21] ),
        .I3(plusOp__0_carry__1_i_3_n_0),
        .O(plusOp__0_carry__1_i_11_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__1_i_12
       (.I0(s_axis_tdata[148]),
        .I1(s_axis_tdata[212]),
        .I2(\accum_data_reg_n_0_[20] ),
        .I3(plusOp__0_carry__1_i_4_n_0),
        .O(plusOp__0_carry__1_i_12_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__1_i_13
       (.I0(s_axis_tdata[147]),
        .I1(s_axis_tdata[211]),
        .I2(\accum_data_reg_n_0_[19] ),
        .I3(plusOp__0_carry__1_i_5_n_0),
        .O(plusOp__0_carry__1_i_13_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__1_i_14
       (.I0(s_axis_tdata[146]),
        .I1(s_axis_tdata[210]),
        .I2(\accum_data_reg_n_0_[18] ),
        .I3(plusOp__0_carry__1_i_6_n_0),
        .O(plusOp__0_carry__1_i_14_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__1_i_15
       (.I0(s_axis_tdata[145]),
        .I1(s_axis_tdata[209]),
        .I2(\accum_data_reg_n_0_[17] ),
        .I3(plusOp__0_carry__1_i_7_n_0),
        .O(plusOp__0_carry__1_i_15_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__1_i_16
       (.I0(s_axis_tdata[144]),
        .I1(s_axis_tdata[208]),
        .I2(\accum_data_reg_n_0_[16] ),
        .I3(plusOp__0_carry__1_i_8_n_0),
        .O(plusOp__0_carry__1_i_16_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__1_i_2
       (.I0(s_axis_tdata[149]),
        .I1(s_axis_tdata[213]),
        .I2(\accum_data_reg_n_0_[21] ),
        .O(plusOp__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__1_i_3
       (.I0(s_axis_tdata[148]),
        .I1(s_axis_tdata[212]),
        .I2(\accum_data_reg_n_0_[20] ),
        .O(plusOp__0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__1_i_4
       (.I0(s_axis_tdata[147]),
        .I1(s_axis_tdata[211]),
        .I2(\accum_data_reg_n_0_[19] ),
        .O(plusOp__0_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__1_i_5
       (.I0(s_axis_tdata[146]),
        .I1(s_axis_tdata[210]),
        .I2(\accum_data_reg_n_0_[18] ),
        .O(plusOp__0_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__1_i_6
       (.I0(s_axis_tdata[145]),
        .I1(s_axis_tdata[209]),
        .I2(\accum_data_reg_n_0_[17] ),
        .O(plusOp__0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__1_i_7
       (.I0(s_axis_tdata[144]),
        .I1(s_axis_tdata[208]),
        .I2(\accum_data_reg_n_0_[16] ),
        .O(plusOp__0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__1_i_8
       (.I0(s_axis_tdata[143]),
        .I1(s_axis_tdata[207]),
        .I2(\accum_data_reg_n_0_[15] ),
        .O(plusOp__0_carry__1_i_8_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__1_i_9
       (.I0(s_axis_tdata[151]),
        .I1(s_axis_tdata[215]),
        .I2(\accum_data_reg_n_0_[23] ),
        .I3(plusOp__0_carry__1_i_1_n_0),
        .O(plusOp__0_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__0_carry__2
       (.CI(plusOp__0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp__0_carry__2_CO_UNCONNECTED[7],plusOp__0_carry__2_n_1,plusOp__0_carry__2_n_2,plusOp__0_carry__2_n_3,plusOp__0_carry__2_n_4,plusOp__0_carry__2_n_5,plusOp__0_carry__2_n_6,plusOp__0_carry__2_n_7}),
        .DI({1'b0,plusOp__0_carry__2_i_1_n_0,plusOp__0_carry__2_i_2_n_0,plusOp__0_carry__2_i_3_n_0,plusOp__0_carry__2_i_4_n_0,plusOp__0_carry__2_i_5_n_0,plusOp__0_carry__2_i_6_n_0,plusOp__0_carry__2_i_7_n_0}),
        .O({plusOp__0_carry__2_n_8,plusOp__0_carry__2_n_9,plusOp__0_carry__2_n_10,plusOp__0_carry__2_n_11,plusOp__0_carry__2_n_12,plusOp__0_carry__2_n_13,plusOp__0_carry__2_n_14,plusOp__0_carry__2_n_15}),
        .S({plusOp__0_carry__2_i_8_n_0,plusOp__0_carry__2_i_9_n_0,plusOp__0_carry__2_i_10_n_0,plusOp__0_carry__2_i_11_n_0,plusOp__0_carry__2_i_12_n_0,plusOp__0_carry__2_i_13_n_0,plusOp__0_carry__2_i_14_n_0,plusOp__0_carry__2_i_15_n_0}));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__2_i_1
       (.I0(s_axis_tdata[157]),
        .I1(s_axis_tdata[221]),
        .I2(\accum_data_reg_n_0_[29] ),
        .O(plusOp__0_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__2_i_10
       (.I0(s_axis_tdata[157]),
        .I1(s_axis_tdata[221]),
        .I2(\accum_data_reg_n_0_[29] ),
        .I3(plusOp__0_carry__2_i_2_n_0),
        .O(plusOp__0_carry__2_i_10_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__2_i_11
       (.I0(s_axis_tdata[156]),
        .I1(s_axis_tdata[220]),
        .I2(\accum_data_reg_n_0_[28] ),
        .I3(plusOp__0_carry__2_i_3_n_0),
        .O(plusOp__0_carry__2_i_11_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__2_i_12
       (.I0(s_axis_tdata[155]),
        .I1(s_axis_tdata[219]),
        .I2(\accum_data_reg_n_0_[27] ),
        .I3(plusOp__0_carry__2_i_4_n_0),
        .O(plusOp__0_carry__2_i_12_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__2_i_13
       (.I0(s_axis_tdata[154]),
        .I1(s_axis_tdata[218]),
        .I2(\accum_data_reg_n_0_[26] ),
        .I3(plusOp__0_carry__2_i_5_n_0),
        .O(plusOp__0_carry__2_i_13_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__2_i_14
       (.I0(s_axis_tdata[153]),
        .I1(s_axis_tdata[217]),
        .I2(\accum_data_reg_n_0_[25] ),
        .I3(plusOp__0_carry__2_i_6_n_0),
        .O(plusOp__0_carry__2_i_14_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__2_i_15
       (.I0(s_axis_tdata[152]),
        .I1(s_axis_tdata[216]),
        .I2(\accum_data_reg_n_0_[24] ),
        .I3(plusOp__0_carry__2_i_7_n_0),
        .O(plusOp__0_carry__2_i_15_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__2_i_2
       (.I0(s_axis_tdata[156]),
        .I1(s_axis_tdata[220]),
        .I2(\accum_data_reg_n_0_[28] ),
        .O(plusOp__0_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__2_i_3
       (.I0(s_axis_tdata[155]),
        .I1(s_axis_tdata[219]),
        .I2(\accum_data_reg_n_0_[27] ),
        .O(plusOp__0_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__2_i_4
       (.I0(s_axis_tdata[154]),
        .I1(s_axis_tdata[218]),
        .I2(\accum_data_reg_n_0_[26] ),
        .O(plusOp__0_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__2_i_5
       (.I0(s_axis_tdata[153]),
        .I1(s_axis_tdata[217]),
        .I2(\accum_data_reg_n_0_[25] ),
        .O(plusOp__0_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__2_i_6
       (.I0(s_axis_tdata[152]),
        .I1(s_axis_tdata[216]),
        .I2(\accum_data_reg_n_0_[24] ),
        .O(plusOp__0_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry__2_i_7
       (.I0(s_axis_tdata[151]),
        .I1(s_axis_tdata[215]),
        .I2(\accum_data_reg_n_0_[23] ),
        .O(plusOp__0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    plusOp__0_carry__2_i_8
       (.I0(\accum_data_reg_n_0_[30] ),
        .I1(s_axis_tdata[222]),
        .I2(s_axis_tdata[158]),
        .I3(s_axis_tdata[223]),
        .I4(s_axis_tdata[159]),
        .I5(\accum_data_reg_n_0_[31] ),
        .O(plusOp__0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry__2_i_9
       (.I0(plusOp__0_carry__2_i_1_n_0),
        .I1(s_axis_tdata[222]),
        .I2(s_axis_tdata[158]),
        .I3(\accum_data_reg_n_0_[30] ),
        .O(plusOp__0_carry__2_i_9_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry_i_1
       (.I0(s_axis_tdata[134]),
        .I1(s_axis_tdata[198]),
        .I2(\accum_data_reg_n_0_[6] ),
        .O(plusOp__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry_i_10
       (.I0(s_axis_tdata[133]),
        .I1(s_axis_tdata[197]),
        .I2(\accum_data_reg_n_0_[5] ),
        .I3(plusOp__0_carry_i_3_n_0),
        .O(plusOp__0_carry_i_10_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry_i_11
       (.I0(s_axis_tdata[132]),
        .I1(s_axis_tdata[196]),
        .I2(\accum_data_reg_n_0_[4] ),
        .I3(plusOp__0_carry_i_4_n_0),
        .O(plusOp__0_carry_i_11_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry_i_12
       (.I0(s_axis_tdata[131]),
        .I1(s_axis_tdata[195]),
        .I2(\accum_data_reg_n_0_[3] ),
        .I3(plusOp__0_carry_i_5_n_0),
        .O(plusOp__0_carry_i_12_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry_i_13
       (.I0(s_axis_tdata[130]),
        .I1(s_axis_tdata[194]),
        .I2(\accum_data_reg_n_0_[2] ),
        .I3(plusOp__0_carry_i_6_n_0),
        .O(plusOp__0_carry_i_13_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry_i_14
       (.I0(s_axis_tdata[129]),
        .I1(s_axis_tdata[193]),
        .I2(\accum_data_reg_n_0_[1] ),
        .I3(plusOp__0_carry_i_7_n_0),
        .O(plusOp__0_carry_i_14_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    plusOp__0_carry_i_15
       (.I0(s_axis_tdata[128]),
        .I1(s_axis_tdata[192]),
        .I2(\accum_data_reg_n_0_[0] ),
        .O(plusOp__0_carry_i_15_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry_i_2
       (.I0(s_axis_tdata[133]),
        .I1(s_axis_tdata[197]),
        .I2(\accum_data_reg_n_0_[5] ),
        .O(plusOp__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry_i_3
       (.I0(s_axis_tdata[132]),
        .I1(s_axis_tdata[196]),
        .I2(\accum_data_reg_n_0_[4] ),
        .O(plusOp__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry_i_4
       (.I0(s_axis_tdata[131]),
        .I1(s_axis_tdata[195]),
        .I2(\accum_data_reg_n_0_[3] ),
        .O(plusOp__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry_i_5
       (.I0(s_axis_tdata[130]),
        .I1(s_axis_tdata[194]),
        .I2(\accum_data_reg_n_0_[2] ),
        .O(plusOp__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry_i_6
       (.I0(s_axis_tdata[129]),
        .I1(s_axis_tdata[193]),
        .I2(\accum_data_reg_n_0_[1] ),
        .O(plusOp__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__0_carry_i_7
       (.I0(s_axis_tdata[128]),
        .I1(s_axis_tdata[192]),
        .I2(\accum_data_reg_n_0_[0] ),
        .O(plusOp__0_carry_i_7_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry_i_8
       (.I0(s_axis_tdata[135]),
        .I1(s_axis_tdata[199]),
        .I2(\accum_data_reg_n_0_[7] ),
        .I3(plusOp__0_carry_i_1_n_0),
        .O(plusOp__0_carry_i_8_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__0_carry_i_9
       (.I0(s_axis_tdata[134]),
        .I1(s_axis_tdata[198]),
        .I2(\accum_data_reg_n_0_[6] ),
        .I3(plusOp__0_carry_i_2_n_0),
        .O(plusOp__0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__188_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({plusOp__188_carry_n_0,plusOp__188_carry_n_1,plusOp__188_carry_n_2,plusOp__188_carry_n_3,plusOp__188_carry_n_4,plusOp__188_carry_n_5,plusOp__188_carry_n_6,plusOp__188_carry_n_7}),
        .DI({plusOp__188_carry_i_1_n_0,plusOp__188_carry_i_2_n_0,plusOp__188_carry_i_3_n_0,plusOp__188_carry_i_4_n_0,plusOp__188_carry_i_5_n_0,plusOp__188_carry_i_6_n_0,plusOp__188_carry_i_7_n_0,1'b0}),
        .O({plusOp__188_carry_n_8,plusOp__188_carry_n_9,plusOp__188_carry_n_10,plusOp__188_carry_n_11,plusOp__188_carry_n_12,plusOp__188_carry_n_13,plusOp__188_carry_n_14,plusOp__188_carry_n_15}),
        .S({plusOp__188_carry_i_8_n_0,plusOp__188_carry_i_9_n_0,plusOp__188_carry_i_10_n_0,plusOp__188_carry_i_11_n_0,plusOp__188_carry_i_12_n_0,plusOp__188_carry_i_13_n_0,plusOp__188_carry_i_14_n_0,plusOp__188_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__188_carry__0
       (.CI(plusOp__188_carry_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp__188_carry__0_n_0,plusOp__188_carry__0_n_1,plusOp__188_carry__0_n_2,plusOp__188_carry__0_n_3,plusOp__188_carry__0_n_4,plusOp__188_carry__0_n_5,plusOp__188_carry__0_n_6,plusOp__188_carry__0_n_7}),
        .DI({plusOp__188_carry__0_i_1_n_0,plusOp__188_carry__0_i_2_n_0,plusOp__188_carry__0_i_3_n_0,plusOp__188_carry__0_i_4_n_0,plusOp__188_carry__0_i_5_n_0,plusOp__188_carry__0_i_6_n_0,plusOp__188_carry__0_i_7_n_0,plusOp__188_carry__0_i_8_n_0}),
        .O({plusOp__188_carry__0_n_8,plusOp__188_carry__0_n_9,plusOp__188_carry__0_n_10,plusOp__188_carry__0_n_11,plusOp__188_carry__0_n_12,plusOp__188_carry__0_n_13,plusOp__188_carry__0_n_14,plusOp__188_carry__0_n_15}),
        .S({plusOp__188_carry__0_i_9_n_0,plusOp__188_carry__0_i_10_n_0,plusOp__188_carry__0_i_11_n_0,plusOp__188_carry__0_i_12_n_0,plusOp__188_carry__0_i_13_n_0,plusOp__188_carry__0_i_14_n_0,plusOp__188_carry__0_i_15_n_0,plusOp__188_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair74" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__0_i_1
       (.I0(s_axis_tdata[174]),
        .I1(s_axis_tdata[238]),
        .I2(L[46]),
        .O(plusOp__188_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair74" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__0_i_10
       (.I0(s_axis_tdata[174]),
        .I1(s_axis_tdata[238]),
        .I2(L[46]),
        .I3(plusOp__188_carry__0_i_2_n_0),
        .O(plusOp__188_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair73" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__0_i_11
       (.I0(s_axis_tdata[173]),
        .I1(s_axis_tdata[237]),
        .I2(L[45]),
        .I3(plusOp__188_carry__0_i_3_n_0),
        .O(plusOp__188_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair72" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__0_i_12
       (.I0(s_axis_tdata[172]),
        .I1(s_axis_tdata[236]),
        .I2(L[44]),
        .I3(plusOp__188_carry__0_i_4_n_0),
        .O(plusOp__188_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair71" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__0_i_13
       (.I0(s_axis_tdata[171]),
        .I1(s_axis_tdata[235]),
        .I2(L[43]),
        .I3(plusOp__188_carry__0_i_5_n_0),
        .O(plusOp__188_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__0_i_14
       (.I0(s_axis_tdata[170]),
        .I1(s_axis_tdata[234]),
        .I2(L[42]),
        .I3(plusOp__188_carry__0_i_6_n_0),
        .O(plusOp__188_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__0_i_15
       (.I0(s_axis_tdata[169]),
        .I1(s_axis_tdata[233]),
        .I2(L[41]),
        .I3(plusOp__188_carry__0_i_7_n_0),
        .O(plusOp__188_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__0_i_16
       (.I0(s_axis_tdata[168]),
        .I1(s_axis_tdata[232]),
        .I2(L[40]),
        .I3(plusOp__188_carry__0_i_8_n_0),
        .O(plusOp__188_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair73" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__0_i_2
       (.I0(s_axis_tdata[173]),
        .I1(s_axis_tdata[237]),
        .I2(L[45]),
        .O(plusOp__188_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair72" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__0_i_3
       (.I0(s_axis_tdata[172]),
        .I1(s_axis_tdata[236]),
        .I2(L[44]),
        .O(plusOp__188_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair71" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__0_i_4
       (.I0(s_axis_tdata[171]),
        .I1(s_axis_tdata[235]),
        .I2(L[43]),
        .O(plusOp__188_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__0_i_5
       (.I0(s_axis_tdata[170]),
        .I1(s_axis_tdata[234]),
        .I2(L[42]),
        .O(plusOp__188_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__0_i_6
       (.I0(s_axis_tdata[169]),
        .I1(s_axis_tdata[233]),
        .I2(L[41]),
        .O(plusOp__188_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__0_i_7
       (.I0(s_axis_tdata[168]),
        .I1(s_axis_tdata[232]),
        .I2(L[40]),
        .O(plusOp__188_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair67" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__0_i_8
       (.I0(s_axis_tdata[167]),
        .I1(s_axis_tdata[231]),
        .I2(L[39]),
        .O(plusOp__188_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair75" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__0_i_9
       (.I0(s_axis_tdata[175]),
        .I1(s_axis_tdata[239]),
        .I2(L[47]),
        .I3(plusOp__188_carry__0_i_1_n_0),
        .O(plusOp__188_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__188_carry__1
       (.CI(plusOp__188_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp__188_carry__1_n_0,plusOp__188_carry__1_n_1,plusOp__188_carry__1_n_2,plusOp__188_carry__1_n_3,plusOp__188_carry__1_n_4,plusOp__188_carry__1_n_5,plusOp__188_carry__1_n_6,plusOp__188_carry__1_n_7}),
        .DI({plusOp__188_carry__1_i_1_n_0,plusOp__188_carry__1_i_2_n_0,plusOp__188_carry__1_i_3_n_0,plusOp__188_carry__1_i_4_n_0,plusOp__188_carry__1_i_5_n_0,plusOp__188_carry__1_i_6_n_0,plusOp__188_carry__1_i_7_n_0,plusOp__188_carry__1_i_8_n_0}),
        .O({plusOp__188_carry__1_n_8,plusOp__188_carry__1_n_9,plusOp__188_carry__1_n_10,plusOp__188_carry__1_n_11,plusOp__188_carry__1_n_12,plusOp__188_carry__1_n_13,plusOp__188_carry__1_n_14,plusOp__188_carry__1_n_15}),
        .S({plusOp__188_carry__1_i_9_n_0,plusOp__188_carry__1_i_10_n_0,plusOp__188_carry__1_i_11_n_0,plusOp__188_carry__1_i_12_n_0,plusOp__188_carry__1_i_13_n_0,plusOp__188_carry__1_i_14_n_0,plusOp__188_carry__1_i_15_n_0,plusOp__188_carry__1_i_16_n_0}));
  (* HLUTNM = "lutpair82" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__1_i_1
       (.I0(s_axis_tdata[182]),
        .I1(s_axis_tdata[246]),
        .I2(L[54]),
        .O(plusOp__188_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair82" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__1_i_10
       (.I0(s_axis_tdata[182]),
        .I1(s_axis_tdata[246]),
        .I2(L[54]),
        .I3(plusOp__188_carry__1_i_2_n_0),
        .O(plusOp__188_carry__1_i_10_n_0));
  (* HLUTNM = "lutpair81" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__1_i_11
       (.I0(s_axis_tdata[181]),
        .I1(s_axis_tdata[245]),
        .I2(L[53]),
        .I3(plusOp__188_carry__1_i_3_n_0),
        .O(plusOp__188_carry__1_i_11_n_0));
  (* HLUTNM = "lutpair80" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__1_i_12
       (.I0(s_axis_tdata[180]),
        .I1(s_axis_tdata[244]),
        .I2(L[52]),
        .I3(plusOp__188_carry__1_i_4_n_0),
        .O(plusOp__188_carry__1_i_12_n_0));
  (* HLUTNM = "lutpair79" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__1_i_13
       (.I0(s_axis_tdata[179]),
        .I1(s_axis_tdata[243]),
        .I2(L[51]),
        .I3(plusOp__188_carry__1_i_5_n_0),
        .O(plusOp__188_carry__1_i_13_n_0));
  (* HLUTNM = "lutpair78" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__1_i_14
       (.I0(s_axis_tdata[178]),
        .I1(s_axis_tdata[242]),
        .I2(L[50]),
        .I3(plusOp__188_carry__1_i_6_n_0),
        .O(plusOp__188_carry__1_i_14_n_0));
  (* HLUTNM = "lutpair77" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__1_i_15
       (.I0(s_axis_tdata[177]),
        .I1(s_axis_tdata[241]),
        .I2(L[49]),
        .I3(plusOp__188_carry__1_i_7_n_0),
        .O(plusOp__188_carry__1_i_15_n_0));
  (* HLUTNM = "lutpair76" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__1_i_16
       (.I0(s_axis_tdata[176]),
        .I1(s_axis_tdata[240]),
        .I2(L[48]),
        .I3(plusOp__188_carry__1_i_8_n_0),
        .O(plusOp__188_carry__1_i_16_n_0));
  (* HLUTNM = "lutpair81" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__1_i_2
       (.I0(s_axis_tdata[181]),
        .I1(s_axis_tdata[245]),
        .I2(L[53]),
        .O(plusOp__188_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair80" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__1_i_3
       (.I0(s_axis_tdata[180]),
        .I1(s_axis_tdata[244]),
        .I2(L[52]),
        .O(plusOp__188_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair79" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__1_i_4
       (.I0(s_axis_tdata[179]),
        .I1(s_axis_tdata[243]),
        .I2(L[51]),
        .O(plusOp__188_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair78" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__1_i_5
       (.I0(s_axis_tdata[178]),
        .I1(s_axis_tdata[242]),
        .I2(L[50]),
        .O(plusOp__188_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair77" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__1_i_6
       (.I0(s_axis_tdata[177]),
        .I1(s_axis_tdata[241]),
        .I2(L[49]),
        .O(plusOp__188_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair76" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__1_i_7
       (.I0(s_axis_tdata[176]),
        .I1(s_axis_tdata[240]),
        .I2(L[48]),
        .O(plusOp__188_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair75" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__1_i_8
       (.I0(s_axis_tdata[175]),
        .I1(s_axis_tdata[239]),
        .I2(L[47]),
        .O(plusOp__188_carry__1_i_8_n_0));
  (* HLUTNM = "lutpair83" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__1_i_9
       (.I0(s_axis_tdata[183]),
        .I1(s_axis_tdata[247]),
        .I2(L[55]),
        .I3(plusOp__188_carry__1_i_1_n_0),
        .O(plusOp__188_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__188_carry__2
       (.CI(plusOp__188_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp__188_carry__2_CO_UNCONNECTED[7],plusOp__188_carry__2_n_1,plusOp__188_carry__2_n_2,plusOp__188_carry__2_n_3,plusOp__188_carry__2_n_4,plusOp__188_carry__2_n_5,plusOp__188_carry__2_n_6,plusOp__188_carry__2_n_7}),
        .DI({1'b0,plusOp__188_carry__2_i_1_n_0,plusOp__188_carry__2_i_2_n_0,plusOp__188_carry__2_i_3_n_0,plusOp__188_carry__2_i_4_n_0,plusOp__188_carry__2_i_5_n_0,plusOp__188_carry__2_i_6_n_0,plusOp__188_carry__2_i_7_n_0}),
        .O({plusOp__188_carry__2_n_8,plusOp__188_carry__2_n_9,plusOp__188_carry__2_n_10,plusOp__188_carry__2_n_11,plusOp__188_carry__2_n_12,plusOp__188_carry__2_n_13,plusOp__188_carry__2_n_14,plusOp__188_carry__2_n_15}),
        .S({plusOp__188_carry__2_i_8_n_0,plusOp__188_carry__2_i_9_n_0,plusOp__188_carry__2_i_10_n_0,plusOp__188_carry__2_i_11_n_0,plusOp__188_carry__2_i_12_n_0,plusOp__188_carry__2_i_13_n_0,plusOp__188_carry__2_i_14_n_0,plusOp__188_carry__2_i_15_n_0}));
  (* HLUTNM = "lutpair89" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__2_i_1
       (.I0(s_axis_tdata[189]),
        .I1(s_axis_tdata[253]),
        .I2(L[61]),
        .O(plusOp__188_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair89" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__2_i_10
       (.I0(s_axis_tdata[189]),
        .I1(s_axis_tdata[253]),
        .I2(L[61]),
        .I3(plusOp__188_carry__2_i_2_n_0),
        .O(plusOp__188_carry__2_i_10_n_0));
  (* HLUTNM = "lutpair88" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__2_i_11
       (.I0(s_axis_tdata[188]),
        .I1(s_axis_tdata[252]),
        .I2(L[60]),
        .I3(plusOp__188_carry__2_i_3_n_0),
        .O(plusOp__188_carry__2_i_11_n_0));
  (* HLUTNM = "lutpair87" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__2_i_12
       (.I0(s_axis_tdata[187]),
        .I1(s_axis_tdata[251]),
        .I2(L[59]),
        .I3(plusOp__188_carry__2_i_4_n_0),
        .O(plusOp__188_carry__2_i_12_n_0));
  (* HLUTNM = "lutpair86" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__2_i_13
       (.I0(s_axis_tdata[186]),
        .I1(s_axis_tdata[250]),
        .I2(L[58]),
        .I3(plusOp__188_carry__2_i_5_n_0),
        .O(plusOp__188_carry__2_i_13_n_0));
  (* HLUTNM = "lutpair85" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__2_i_14
       (.I0(s_axis_tdata[185]),
        .I1(s_axis_tdata[249]),
        .I2(L[57]),
        .I3(plusOp__188_carry__2_i_6_n_0),
        .O(plusOp__188_carry__2_i_14_n_0));
  (* HLUTNM = "lutpair84" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__2_i_15
       (.I0(s_axis_tdata[184]),
        .I1(s_axis_tdata[248]),
        .I2(L[56]),
        .I3(plusOp__188_carry__2_i_7_n_0),
        .O(plusOp__188_carry__2_i_15_n_0));
  (* HLUTNM = "lutpair88" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__2_i_2
       (.I0(s_axis_tdata[188]),
        .I1(s_axis_tdata[252]),
        .I2(L[60]),
        .O(plusOp__188_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair87" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__2_i_3
       (.I0(s_axis_tdata[187]),
        .I1(s_axis_tdata[251]),
        .I2(L[59]),
        .O(plusOp__188_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair86" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__2_i_4
       (.I0(s_axis_tdata[186]),
        .I1(s_axis_tdata[250]),
        .I2(L[58]),
        .O(plusOp__188_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair85" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__2_i_5
       (.I0(s_axis_tdata[185]),
        .I1(s_axis_tdata[249]),
        .I2(L[57]),
        .O(plusOp__188_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair84" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__2_i_6
       (.I0(s_axis_tdata[184]),
        .I1(s_axis_tdata[248]),
        .I2(L[56]),
        .O(plusOp__188_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair83" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry__2_i_7
       (.I0(s_axis_tdata[183]),
        .I1(s_axis_tdata[247]),
        .I2(L[55]),
        .O(plusOp__188_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    plusOp__188_carry__2_i_8
       (.I0(L[62]),
        .I1(s_axis_tdata[254]),
        .I2(s_axis_tdata[190]),
        .I3(s_axis_tdata[255]),
        .I4(s_axis_tdata[191]),
        .I5(L[63]),
        .O(plusOp__188_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry__2_i_9
       (.I0(plusOp__188_carry__2_i_1_n_0),
        .I1(s_axis_tdata[254]),
        .I2(s_axis_tdata[190]),
        .I3(L[62]),
        .O(plusOp__188_carry__2_i_9_n_0));
  (* HLUTNM = "lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry_i_1
       (.I0(s_axis_tdata[166]),
        .I1(s_axis_tdata[230]),
        .I2(L[38]),
        .O(plusOp__188_carry_i_1_n_0));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry_i_10
       (.I0(s_axis_tdata[165]),
        .I1(s_axis_tdata[229]),
        .I2(L[37]),
        .I3(plusOp__188_carry_i_3_n_0),
        .O(plusOp__188_carry_i_10_n_0));
  (* HLUTNM = "lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry_i_11
       (.I0(s_axis_tdata[164]),
        .I1(s_axis_tdata[228]),
        .I2(L[36]),
        .I3(plusOp__188_carry_i_4_n_0),
        .O(plusOp__188_carry_i_11_n_0));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry_i_12
       (.I0(s_axis_tdata[163]),
        .I1(s_axis_tdata[227]),
        .I2(L[35]),
        .I3(plusOp__188_carry_i_5_n_0),
        .O(plusOp__188_carry_i_12_n_0));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry_i_13
       (.I0(s_axis_tdata[162]),
        .I1(s_axis_tdata[226]),
        .I2(L[34]),
        .I3(plusOp__188_carry_i_6_n_0),
        .O(plusOp__188_carry_i_13_n_0));
  (* HLUTNM = "lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry_i_14
       (.I0(s_axis_tdata[161]),
        .I1(s_axis_tdata[225]),
        .I2(L[33]),
        .I3(plusOp__188_carry_i_7_n_0),
        .O(plusOp__188_carry_i_14_n_0));
  (* HLUTNM = "lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    plusOp__188_carry_i_15
       (.I0(s_axis_tdata[160]),
        .I1(s_axis_tdata[224]),
        .I2(L[32]),
        .O(plusOp__188_carry_i_15_n_0));
  (* HLUTNM = "lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry_i_2
       (.I0(s_axis_tdata[165]),
        .I1(s_axis_tdata[229]),
        .I2(L[37]),
        .O(plusOp__188_carry_i_2_n_0));
  (* HLUTNM = "lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry_i_3
       (.I0(s_axis_tdata[164]),
        .I1(s_axis_tdata[228]),
        .I2(L[36]),
        .O(plusOp__188_carry_i_3_n_0));
  (* HLUTNM = "lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry_i_4
       (.I0(s_axis_tdata[163]),
        .I1(s_axis_tdata[227]),
        .I2(L[35]),
        .O(plusOp__188_carry_i_4_n_0));
  (* HLUTNM = "lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry_i_5
       (.I0(s_axis_tdata[162]),
        .I1(s_axis_tdata[226]),
        .I2(L[34]),
        .O(plusOp__188_carry_i_5_n_0));
  (* HLUTNM = "lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry_i_6
       (.I0(s_axis_tdata[161]),
        .I1(s_axis_tdata[225]),
        .I2(L[33]),
        .O(plusOp__188_carry_i_6_n_0));
  (* HLUTNM = "lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__188_carry_i_7
       (.I0(s_axis_tdata[160]),
        .I1(s_axis_tdata[224]),
        .I2(L[32]),
        .O(plusOp__188_carry_i_7_n_0));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry_i_8
       (.I0(s_axis_tdata[167]),
        .I1(s_axis_tdata[231]),
        .I2(L[39]),
        .I3(plusOp__188_carry_i_1_n_0),
        .O(plusOp__188_carry_i_8_n_0));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__188_carry_i_9
       (.I0(s_axis_tdata[166]),
        .I1(s_axis_tdata[230]),
        .I2(L[38]),
        .I3(plusOp__188_carry_i_2_n_0),
        .O(plusOp__188_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__282_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({plusOp__282_carry_n_0,plusOp__282_carry_n_1,plusOp__282_carry_n_2,plusOp__282_carry_n_3,plusOp__282_carry_n_4,plusOp__282_carry_n_5,plusOp__282_carry_n_6,plusOp__282_carry_n_7}),
        .DI({plusOp__282_carry_i_1_n_0,plusOp__282_carry_i_2_n_0,plusOp__282_carry_i_3_n_0,plusOp__282_carry_i_4_n_0,plusOp__282_carry_i_5_n_0,plusOp__282_carry_i_6_n_0,plusOp__282_carry_i_7_n_0,1'b0}),
        .O(plusOp[7:0]),
        .S({plusOp__282_carry_i_8_n_0,plusOp__282_carry_i_9_n_0,plusOp__282_carry_i_10_n_0,plusOp__282_carry_i_11_n_0,plusOp__282_carry_i_12_n_0,plusOp__282_carry_i_13_n_0,plusOp__282_carry_i_14_n_0,plusOp__282_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__282_carry__0
       (.CI(plusOp__282_carry_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp__282_carry__0_n_0,plusOp__282_carry__0_n_1,plusOp__282_carry__0_n_2,plusOp__282_carry__0_n_3,plusOp__282_carry__0_n_4,plusOp__282_carry__0_n_5,plusOp__282_carry__0_n_6,plusOp__282_carry__0_n_7}),
        .DI({plusOp__282_carry__0_i_1_n_0,plusOp__282_carry__0_i_2_n_0,plusOp__282_carry__0_i_3_n_0,plusOp__282_carry__0_i_4_n_0,plusOp__282_carry__0_i_5_n_0,plusOp__282_carry__0_i_6_n_0,plusOp__282_carry__0_i_7_n_0,plusOp__282_carry__0_i_8_n_0}),
        .O(plusOp[15:8]),
        .S({plusOp__282_carry__0_i_9_n_0,plusOp__282_carry__0_i_10_n_0,plusOp__282_carry__0_i_11_n_0,plusOp__282_carry__0_i_12_n_0,plusOp__282_carry__0_i_13_n_0,plusOp__282_carry__0_i_14_n_0,plusOp__282_carry__0_i_15_n_0,plusOp__282_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair104" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__0_i_1
       (.I0(plusOp__188_carry__0_n_9),
        .I1(s_axis_tdata[46]),
        .I2(s_axis_tdata[110]),
        .O(plusOp__282_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair104" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__0_i_10
       (.I0(plusOp__188_carry__0_n_9),
        .I1(s_axis_tdata[46]),
        .I2(s_axis_tdata[110]),
        .I3(plusOp__282_carry__0_i_2_n_0),
        .O(plusOp__282_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair103" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__0_i_11
       (.I0(plusOp__188_carry__0_n_10),
        .I1(s_axis_tdata[45]),
        .I2(s_axis_tdata[109]),
        .I3(plusOp__282_carry__0_i_3_n_0),
        .O(plusOp__282_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair102" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__0_i_12
       (.I0(plusOp__188_carry__0_n_11),
        .I1(s_axis_tdata[44]),
        .I2(s_axis_tdata[108]),
        .I3(plusOp__282_carry__0_i_4_n_0),
        .O(plusOp__282_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair101" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__0_i_13
       (.I0(plusOp__188_carry__0_n_12),
        .I1(s_axis_tdata[43]),
        .I2(s_axis_tdata[107]),
        .I3(plusOp__282_carry__0_i_5_n_0),
        .O(plusOp__282_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair100" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__0_i_14
       (.I0(plusOp__188_carry__0_n_13),
        .I1(s_axis_tdata[42]),
        .I2(s_axis_tdata[106]),
        .I3(plusOp__282_carry__0_i_6_n_0),
        .O(plusOp__282_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair99" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__0_i_15
       (.I0(plusOp__188_carry__0_n_14),
        .I1(s_axis_tdata[41]),
        .I2(s_axis_tdata[105]),
        .I3(plusOp__282_carry__0_i_7_n_0),
        .O(plusOp__282_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair98" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__0_i_16
       (.I0(plusOp__188_carry__0_n_15),
        .I1(s_axis_tdata[40]),
        .I2(s_axis_tdata[104]),
        .I3(plusOp__282_carry__0_i_8_n_0),
        .O(plusOp__282_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair103" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__0_i_2
       (.I0(plusOp__188_carry__0_n_10),
        .I1(s_axis_tdata[45]),
        .I2(s_axis_tdata[109]),
        .O(plusOp__282_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair102" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__0_i_3
       (.I0(plusOp__188_carry__0_n_11),
        .I1(s_axis_tdata[44]),
        .I2(s_axis_tdata[108]),
        .O(plusOp__282_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair101" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__0_i_4
       (.I0(plusOp__188_carry__0_n_12),
        .I1(s_axis_tdata[43]),
        .I2(s_axis_tdata[107]),
        .O(plusOp__282_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair100" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__0_i_5
       (.I0(plusOp__188_carry__0_n_13),
        .I1(s_axis_tdata[42]),
        .I2(s_axis_tdata[106]),
        .O(plusOp__282_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair99" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__0_i_6
       (.I0(plusOp__188_carry__0_n_14),
        .I1(s_axis_tdata[41]),
        .I2(s_axis_tdata[105]),
        .O(plusOp__282_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair98" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__0_i_7
       (.I0(plusOp__188_carry__0_n_15),
        .I1(s_axis_tdata[40]),
        .I2(s_axis_tdata[104]),
        .O(plusOp__282_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair97" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__0_i_8
       (.I0(plusOp__188_carry_n_8),
        .I1(s_axis_tdata[39]),
        .I2(s_axis_tdata[103]),
        .O(plusOp__282_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair105" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__0_i_9
       (.I0(plusOp__188_carry__0_n_8),
        .I1(s_axis_tdata[47]),
        .I2(s_axis_tdata[111]),
        .I3(plusOp__282_carry__0_i_1_n_0),
        .O(plusOp__282_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__282_carry__1
       (.CI(plusOp__282_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp__282_carry__1_n_0,plusOp__282_carry__1_n_1,plusOp__282_carry__1_n_2,plusOp__282_carry__1_n_3,plusOp__282_carry__1_n_4,plusOp__282_carry__1_n_5,plusOp__282_carry__1_n_6,plusOp__282_carry__1_n_7}),
        .DI({plusOp__282_carry__1_i_1_n_0,plusOp__282_carry__1_i_2_n_0,plusOp__282_carry__1_i_3_n_0,plusOp__282_carry__1_i_4_n_0,plusOp__282_carry__1_i_5_n_0,plusOp__282_carry__1_i_6_n_0,plusOp__282_carry__1_i_7_n_0,plusOp__282_carry__1_i_8_n_0}),
        .O(plusOp[23:16]),
        .S({plusOp__282_carry__1_i_9_n_0,plusOp__282_carry__1_i_10_n_0,plusOp__282_carry__1_i_11_n_0,plusOp__282_carry__1_i_12_n_0,plusOp__282_carry__1_i_13_n_0,plusOp__282_carry__1_i_14_n_0,plusOp__282_carry__1_i_15_n_0,plusOp__282_carry__1_i_16_n_0}));
  (* HLUTNM = "lutpair112" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__1_i_1
       (.I0(plusOp__188_carry__1_n_9),
        .I1(s_axis_tdata[54]),
        .I2(s_axis_tdata[118]),
        .O(plusOp__282_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair112" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__1_i_10
       (.I0(plusOp__188_carry__1_n_9),
        .I1(s_axis_tdata[54]),
        .I2(s_axis_tdata[118]),
        .I3(plusOp__282_carry__1_i_2_n_0),
        .O(plusOp__282_carry__1_i_10_n_0));
  (* HLUTNM = "lutpair111" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__1_i_11
       (.I0(plusOp__188_carry__1_n_10),
        .I1(s_axis_tdata[53]),
        .I2(s_axis_tdata[117]),
        .I3(plusOp__282_carry__1_i_3_n_0),
        .O(plusOp__282_carry__1_i_11_n_0));
  (* HLUTNM = "lutpair110" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__1_i_12
       (.I0(plusOp__188_carry__1_n_11),
        .I1(s_axis_tdata[52]),
        .I2(s_axis_tdata[116]),
        .I3(plusOp__282_carry__1_i_4_n_0),
        .O(plusOp__282_carry__1_i_12_n_0));
  (* HLUTNM = "lutpair109" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__1_i_13
       (.I0(plusOp__188_carry__1_n_12),
        .I1(s_axis_tdata[51]),
        .I2(s_axis_tdata[115]),
        .I3(plusOp__282_carry__1_i_5_n_0),
        .O(plusOp__282_carry__1_i_13_n_0));
  (* HLUTNM = "lutpair108" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__1_i_14
       (.I0(plusOp__188_carry__1_n_13),
        .I1(s_axis_tdata[50]),
        .I2(s_axis_tdata[114]),
        .I3(plusOp__282_carry__1_i_6_n_0),
        .O(plusOp__282_carry__1_i_14_n_0));
  (* HLUTNM = "lutpair107" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__1_i_15
       (.I0(plusOp__188_carry__1_n_14),
        .I1(s_axis_tdata[49]),
        .I2(s_axis_tdata[113]),
        .I3(plusOp__282_carry__1_i_7_n_0),
        .O(plusOp__282_carry__1_i_15_n_0));
  (* HLUTNM = "lutpair106" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__1_i_16
       (.I0(plusOp__188_carry__1_n_15),
        .I1(s_axis_tdata[48]),
        .I2(s_axis_tdata[112]),
        .I3(plusOp__282_carry__1_i_8_n_0),
        .O(plusOp__282_carry__1_i_16_n_0));
  (* HLUTNM = "lutpair111" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__1_i_2
       (.I0(plusOp__188_carry__1_n_10),
        .I1(s_axis_tdata[53]),
        .I2(s_axis_tdata[117]),
        .O(plusOp__282_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair110" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__1_i_3
       (.I0(plusOp__188_carry__1_n_11),
        .I1(s_axis_tdata[52]),
        .I2(s_axis_tdata[116]),
        .O(plusOp__282_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair109" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__1_i_4
       (.I0(plusOp__188_carry__1_n_12),
        .I1(s_axis_tdata[51]),
        .I2(s_axis_tdata[115]),
        .O(plusOp__282_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair108" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__1_i_5
       (.I0(plusOp__188_carry__1_n_13),
        .I1(s_axis_tdata[50]),
        .I2(s_axis_tdata[114]),
        .O(plusOp__282_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair107" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__1_i_6
       (.I0(plusOp__188_carry__1_n_14),
        .I1(s_axis_tdata[49]),
        .I2(s_axis_tdata[113]),
        .O(plusOp__282_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair106" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__1_i_7
       (.I0(plusOp__188_carry__1_n_15),
        .I1(s_axis_tdata[48]),
        .I2(s_axis_tdata[112]),
        .O(plusOp__282_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair105" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__1_i_8
       (.I0(plusOp__188_carry__0_n_8),
        .I1(s_axis_tdata[47]),
        .I2(s_axis_tdata[111]),
        .O(plusOp__282_carry__1_i_8_n_0));
  (* HLUTNM = "lutpair113" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__1_i_9
       (.I0(plusOp__188_carry__1_n_8),
        .I1(s_axis_tdata[55]),
        .I2(s_axis_tdata[119]),
        .I3(plusOp__282_carry__1_i_1_n_0),
        .O(plusOp__282_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__282_carry__2
       (.CI(plusOp__282_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp__282_carry__2_CO_UNCONNECTED[7],plusOp__282_carry__2_n_1,plusOp__282_carry__2_n_2,plusOp__282_carry__2_n_3,plusOp__282_carry__2_n_4,plusOp__282_carry__2_n_5,plusOp__282_carry__2_n_6,plusOp__282_carry__2_n_7}),
        .DI({1'b0,plusOp__282_carry__2_i_1_n_0,plusOp__282_carry__2_i_2_n_0,plusOp__282_carry__2_i_3_n_0,plusOp__282_carry__2_i_4_n_0,plusOp__282_carry__2_i_5_n_0,plusOp__282_carry__2_i_6_n_0,plusOp__282_carry__2_i_7_n_0}),
        .O(plusOp[31:24]),
        .S({plusOp__282_carry__2_i_8_n_0,plusOp__282_carry__2_i_9_n_0,plusOp__282_carry__2_i_10_n_0,plusOp__282_carry__2_i_11_n_0,plusOp__282_carry__2_i_12_n_0,plusOp__282_carry__2_i_13_n_0,plusOp__282_carry__2_i_14_n_0,plusOp__282_carry__2_i_15_n_0}));
  (* HLUTNM = "lutpair119" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__2_i_1
       (.I0(plusOp__188_carry__2_n_10),
        .I1(s_axis_tdata[61]),
        .I2(s_axis_tdata[125]),
        .O(plusOp__282_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair119" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__2_i_10
       (.I0(plusOp__188_carry__2_n_10),
        .I1(s_axis_tdata[61]),
        .I2(s_axis_tdata[125]),
        .I3(plusOp__282_carry__2_i_2_n_0),
        .O(plusOp__282_carry__2_i_10_n_0));
  (* HLUTNM = "lutpair118" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__2_i_11
       (.I0(plusOp__188_carry__2_n_11),
        .I1(s_axis_tdata[60]),
        .I2(s_axis_tdata[124]),
        .I3(plusOp__282_carry__2_i_3_n_0),
        .O(plusOp__282_carry__2_i_11_n_0));
  (* HLUTNM = "lutpair117" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__2_i_12
       (.I0(plusOp__188_carry__2_n_12),
        .I1(s_axis_tdata[59]),
        .I2(s_axis_tdata[123]),
        .I3(plusOp__282_carry__2_i_4_n_0),
        .O(plusOp__282_carry__2_i_12_n_0));
  (* HLUTNM = "lutpair116" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__2_i_13
       (.I0(plusOp__188_carry__2_n_13),
        .I1(s_axis_tdata[58]),
        .I2(s_axis_tdata[122]),
        .I3(plusOp__282_carry__2_i_5_n_0),
        .O(plusOp__282_carry__2_i_13_n_0));
  (* HLUTNM = "lutpair115" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__2_i_14
       (.I0(plusOp__188_carry__2_n_14),
        .I1(s_axis_tdata[57]),
        .I2(s_axis_tdata[121]),
        .I3(plusOp__282_carry__2_i_6_n_0),
        .O(plusOp__282_carry__2_i_14_n_0));
  (* HLUTNM = "lutpair114" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__2_i_15
       (.I0(plusOp__188_carry__2_n_15),
        .I1(s_axis_tdata[56]),
        .I2(s_axis_tdata[120]),
        .I3(plusOp__282_carry__2_i_7_n_0),
        .O(plusOp__282_carry__2_i_15_n_0));
  (* HLUTNM = "lutpair118" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__2_i_2
       (.I0(plusOp__188_carry__2_n_11),
        .I1(s_axis_tdata[60]),
        .I2(s_axis_tdata[124]),
        .O(plusOp__282_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair117" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__2_i_3
       (.I0(plusOp__188_carry__2_n_12),
        .I1(s_axis_tdata[59]),
        .I2(s_axis_tdata[123]),
        .O(plusOp__282_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair116" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__2_i_4
       (.I0(plusOp__188_carry__2_n_13),
        .I1(s_axis_tdata[58]),
        .I2(s_axis_tdata[122]),
        .O(plusOp__282_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair115" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__2_i_5
       (.I0(plusOp__188_carry__2_n_14),
        .I1(s_axis_tdata[57]),
        .I2(s_axis_tdata[121]),
        .O(plusOp__282_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair114" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__2_i_6
       (.I0(plusOp__188_carry__2_n_15),
        .I1(s_axis_tdata[56]),
        .I2(s_axis_tdata[120]),
        .O(plusOp__282_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair113" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry__2_i_7
       (.I0(plusOp__188_carry__1_n_8),
        .I1(s_axis_tdata[55]),
        .I2(s_axis_tdata[119]),
        .O(plusOp__282_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    plusOp__282_carry__2_i_8
       (.I0(s_axis_tdata[126]),
        .I1(s_axis_tdata[62]),
        .I2(plusOp__188_carry__2_n_9),
        .I3(s_axis_tdata[63]),
        .I4(plusOp__188_carry__2_n_8),
        .I5(s_axis_tdata[127]),
        .O(plusOp__282_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry__2_i_9
       (.I0(plusOp__282_carry__2_i_1_n_0),
        .I1(s_axis_tdata[62]),
        .I2(plusOp__188_carry__2_n_9),
        .I3(s_axis_tdata[126]),
        .O(plusOp__282_carry__2_i_9_n_0));
  (* HLUTNM = "lutpair96" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry_i_1
       (.I0(plusOp__188_carry_n_9),
        .I1(s_axis_tdata[38]),
        .I2(s_axis_tdata[102]),
        .O(plusOp__282_carry_i_1_n_0));
  (* HLUTNM = "lutpair95" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry_i_10
       (.I0(plusOp__188_carry_n_10),
        .I1(s_axis_tdata[37]),
        .I2(s_axis_tdata[101]),
        .I3(plusOp__282_carry_i_3_n_0),
        .O(plusOp__282_carry_i_10_n_0));
  (* HLUTNM = "lutpair94" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry_i_11
       (.I0(plusOp__188_carry_n_11),
        .I1(s_axis_tdata[36]),
        .I2(s_axis_tdata[100]),
        .I3(plusOp__282_carry_i_4_n_0),
        .O(plusOp__282_carry_i_11_n_0));
  (* HLUTNM = "lutpair93" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry_i_12
       (.I0(plusOp__188_carry_n_12),
        .I1(s_axis_tdata[35]),
        .I2(s_axis_tdata[99]),
        .I3(plusOp__282_carry_i_5_n_0),
        .O(plusOp__282_carry_i_12_n_0));
  (* HLUTNM = "lutpair92" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry_i_13
       (.I0(plusOp__188_carry_n_13),
        .I1(s_axis_tdata[34]),
        .I2(s_axis_tdata[98]),
        .I3(plusOp__282_carry_i_6_n_0),
        .O(plusOp__282_carry_i_13_n_0));
  (* HLUTNM = "lutpair91" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry_i_14
       (.I0(plusOp__188_carry_n_14),
        .I1(s_axis_tdata[33]),
        .I2(s_axis_tdata[97]),
        .I3(plusOp__282_carry_i_7_n_0),
        .O(plusOp__282_carry_i_14_n_0));
  (* HLUTNM = "lutpair90" *) 
  LUT3 #(
    .INIT(8'h96)) 
    plusOp__282_carry_i_15
       (.I0(plusOp__188_carry_n_15),
        .I1(s_axis_tdata[32]),
        .I2(s_axis_tdata[96]),
        .O(plusOp__282_carry_i_15_n_0));
  (* HLUTNM = "lutpair95" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry_i_2
       (.I0(plusOp__188_carry_n_10),
        .I1(s_axis_tdata[37]),
        .I2(s_axis_tdata[101]),
        .O(plusOp__282_carry_i_2_n_0));
  (* HLUTNM = "lutpair94" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry_i_3
       (.I0(plusOp__188_carry_n_11),
        .I1(s_axis_tdata[36]),
        .I2(s_axis_tdata[100]),
        .O(plusOp__282_carry_i_3_n_0));
  (* HLUTNM = "lutpair93" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry_i_4
       (.I0(plusOp__188_carry_n_12),
        .I1(s_axis_tdata[35]),
        .I2(s_axis_tdata[99]),
        .O(plusOp__282_carry_i_4_n_0));
  (* HLUTNM = "lutpair92" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry_i_5
       (.I0(plusOp__188_carry_n_13),
        .I1(s_axis_tdata[34]),
        .I2(s_axis_tdata[98]),
        .O(plusOp__282_carry_i_5_n_0));
  (* HLUTNM = "lutpair91" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry_i_6
       (.I0(plusOp__188_carry_n_14),
        .I1(s_axis_tdata[33]),
        .I2(s_axis_tdata[97]),
        .O(plusOp__282_carry_i_6_n_0));
  (* HLUTNM = "lutpair90" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__282_carry_i_7
       (.I0(plusOp__188_carry_n_15),
        .I1(s_axis_tdata[32]),
        .I2(s_axis_tdata[96]),
        .O(plusOp__282_carry_i_7_n_0));
  (* HLUTNM = "lutpair97" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry_i_8
       (.I0(plusOp__188_carry_n_8),
        .I1(s_axis_tdata[39]),
        .I2(s_axis_tdata[103]),
        .I3(plusOp__282_carry_i_1_n_0),
        .O(plusOp__282_carry_i_8_n_0));
  (* HLUTNM = "lutpair96" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__282_carry_i_9
       (.I0(plusOp__188_carry_n_9),
        .I1(s_axis_tdata[38]),
        .I2(s_axis_tdata[102]),
        .I3(plusOp__282_carry_i_2_n_0),
        .O(plusOp__282_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__94_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({plusOp__94_carry_n_0,plusOp__94_carry_n_1,plusOp__94_carry_n_2,plusOp__94_carry_n_3,plusOp__94_carry_n_4,plusOp__94_carry_n_5,plusOp__94_carry_n_6,plusOp__94_carry_n_7}),
        .DI({plusOp__94_carry_i_1_n_0,plusOp__94_carry_i_2_n_0,plusOp__94_carry_i_3_n_0,plusOp__94_carry_i_4_n_0,plusOp__94_carry_i_5_n_0,plusOp__94_carry_i_6_n_0,plusOp__94_carry_i_7_n_0,1'b0}),
        .O(plusOp6_out[7:0]),
        .S({plusOp__94_carry_i_8_n_0,plusOp__94_carry_i_9_n_0,plusOp__94_carry_i_10_n_0,plusOp__94_carry_i_11_n_0,plusOp__94_carry_i_12_n_0,plusOp__94_carry_i_13_n_0,plusOp__94_carry_i_14_n_0,plusOp__94_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__94_carry__0
       (.CI(plusOp__94_carry_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp__94_carry__0_n_0,plusOp__94_carry__0_n_1,plusOp__94_carry__0_n_2,plusOp__94_carry__0_n_3,plusOp__94_carry__0_n_4,plusOp__94_carry__0_n_5,plusOp__94_carry__0_n_6,plusOp__94_carry__0_n_7}),
        .DI({plusOp__94_carry__0_i_1_n_0,plusOp__94_carry__0_i_2_n_0,plusOp__94_carry__0_i_3_n_0,plusOp__94_carry__0_i_4_n_0,plusOp__94_carry__0_i_5_n_0,plusOp__94_carry__0_i_6_n_0,plusOp__94_carry__0_i_7_n_0,plusOp__94_carry__0_i_8_n_0}),
        .O(plusOp6_out[15:8]),
        .S({plusOp__94_carry__0_i_9_n_0,plusOp__94_carry__0_i_10_n_0,plusOp__94_carry__0_i_11_n_0,plusOp__94_carry__0_i_12_n_0,plusOp__94_carry__0_i_13_n_0,plusOp__94_carry__0_i_14_n_0,plusOp__94_carry__0_i_15_n_0,plusOp__94_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__0_i_1
       (.I0(plusOp__0_carry__0_n_9),
        .I1(s_axis_tdata[14]),
        .I2(s_axis_tdata[78]),
        .O(plusOp__94_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__0_i_10
       (.I0(plusOp__0_carry__0_n_9),
        .I1(s_axis_tdata[14]),
        .I2(s_axis_tdata[78]),
        .I3(plusOp__94_carry__0_i_2_n_0),
        .O(plusOp__94_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__0_i_11
       (.I0(plusOp__0_carry__0_n_10),
        .I1(s_axis_tdata[13]),
        .I2(s_axis_tdata[77]),
        .I3(plusOp__94_carry__0_i_3_n_0),
        .O(plusOp__94_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__0_i_12
       (.I0(plusOp__0_carry__0_n_11),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[76]),
        .I3(plusOp__94_carry__0_i_4_n_0),
        .O(plusOp__94_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__0_i_13
       (.I0(plusOp__0_carry__0_n_12),
        .I1(s_axis_tdata[11]),
        .I2(s_axis_tdata[75]),
        .I3(plusOp__94_carry__0_i_5_n_0),
        .O(plusOp__94_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__0_i_14
       (.I0(plusOp__0_carry__0_n_13),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[74]),
        .I3(plusOp__94_carry__0_i_6_n_0),
        .O(plusOp__94_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__0_i_15
       (.I0(plusOp__0_carry__0_n_14),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[73]),
        .I3(plusOp__94_carry__0_i_7_n_0),
        .O(plusOp__94_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__0_i_16
       (.I0(plusOp__0_carry__0_n_15),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[72]),
        .I3(plusOp__94_carry__0_i_8_n_0),
        .O(plusOp__94_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__0_i_2
       (.I0(plusOp__0_carry__0_n_10),
        .I1(s_axis_tdata[13]),
        .I2(s_axis_tdata[77]),
        .O(plusOp__94_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__0_i_3
       (.I0(plusOp__0_carry__0_n_11),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[76]),
        .O(plusOp__94_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__0_i_4
       (.I0(plusOp__0_carry__0_n_12),
        .I1(s_axis_tdata[11]),
        .I2(s_axis_tdata[75]),
        .O(plusOp__94_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__0_i_5
       (.I0(plusOp__0_carry__0_n_13),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[74]),
        .O(plusOp__94_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__0_i_6
       (.I0(plusOp__0_carry__0_n_14),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[73]),
        .O(plusOp__94_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__0_i_7
       (.I0(plusOp__0_carry__0_n_15),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[72]),
        .O(plusOp__94_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__0_i_8
       (.I0(plusOp__0_carry_n_8),
        .I1(s_axis_tdata[7]),
        .I2(s_axis_tdata[71]),
        .O(plusOp__94_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__0_i_9
       (.I0(plusOp__0_carry__0_n_8),
        .I1(s_axis_tdata[15]),
        .I2(s_axis_tdata[79]),
        .I3(plusOp__94_carry__0_i_1_n_0),
        .O(plusOp__94_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__94_carry__1
       (.CI(plusOp__94_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp__94_carry__1_n_0,plusOp__94_carry__1_n_1,plusOp__94_carry__1_n_2,plusOp__94_carry__1_n_3,plusOp__94_carry__1_n_4,plusOp__94_carry__1_n_5,plusOp__94_carry__1_n_6,plusOp__94_carry__1_n_7}),
        .DI({plusOp__94_carry__1_i_1_n_0,plusOp__94_carry__1_i_2_n_0,plusOp__94_carry__1_i_3_n_0,plusOp__94_carry__1_i_4_n_0,plusOp__94_carry__1_i_5_n_0,plusOp__94_carry__1_i_6_n_0,plusOp__94_carry__1_i_7_n_0,plusOp__94_carry__1_i_8_n_0}),
        .O(plusOp6_out[23:16]),
        .S({plusOp__94_carry__1_i_9_n_0,plusOp__94_carry__1_i_10_n_0,plusOp__94_carry__1_i_11_n_0,plusOp__94_carry__1_i_12_n_0,plusOp__94_carry__1_i_13_n_0,plusOp__94_carry__1_i_14_n_0,plusOp__94_carry__1_i_15_n_0,plusOp__94_carry__1_i_16_n_0}));
  (* HLUTNM = "lutpair52" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__1_i_1
       (.I0(plusOp__0_carry__1_n_9),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[86]),
        .O(plusOp__94_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__1_i_10
       (.I0(plusOp__0_carry__1_n_9),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[86]),
        .I3(plusOp__94_carry__1_i_2_n_0),
        .O(plusOp__94_carry__1_i_10_n_0));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__1_i_11
       (.I0(plusOp__0_carry__1_n_10),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[85]),
        .I3(plusOp__94_carry__1_i_3_n_0),
        .O(plusOp__94_carry__1_i_11_n_0));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__1_i_12
       (.I0(plusOp__0_carry__1_n_11),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[84]),
        .I3(plusOp__94_carry__1_i_4_n_0),
        .O(plusOp__94_carry__1_i_12_n_0));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__1_i_13
       (.I0(plusOp__0_carry__1_n_12),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[83]),
        .I3(plusOp__94_carry__1_i_5_n_0),
        .O(plusOp__94_carry__1_i_13_n_0));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__1_i_14
       (.I0(plusOp__0_carry__1_n_13),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[82]),
        .I3(plusOp__94_carry__1_i_6_n_0),
        .O(plusOp__94_carry__1_i_14_n_0));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__1_i_15
       (.I0(plusOp__0_carry__1_n_14),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[81]),
        .I3(plusOp__94_carry__1_i_7_n_0),
        .O(plusOp__94_carry__1_i_15_n_0));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__1_i_16
       (.I0(plusOp__0_carry__1_n_15),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[80]),
        .I3(plusOp__94_carry__1_i_8_n_0),
        .O(plusOp__94_carry__1_i_16_n_0));
  (* HLUTNM = "lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__1_i_2
       (.I0(plusOp__0_carry__1_n_10),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[85]),
        .O(plusOp__94_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__1_i_3
       (.I0(plusOp__0_carry__1_n_11),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[84]),
        .O(plusOp__94_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__1_i_4
       (.I0(plusOp__0_carry__1_n_12),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[83]),
        .O(plusOp__94_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__1_i_5
       (.I0(plusOp__0_carry__1_n_13),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[82]),
        .O(plusOp__94_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__1_i_6
       (.I0(plusOp__0_carry__1_n_14),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[81]),
        .O(plusOp__94_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__1_i_7
       (.I0(plusOp__0_carry__1_n_15),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[80]),
        .O(plusOp__94_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__1_i_8
       (.I0(plusOp__0_carry__0_n_8),
        .I1(s_axis_tdata[15]),
        .I2(s_axis_tdata[79]),
        .O(plusOp__94_carry__1_i_8_n_0));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__1_i_9
       (.I0(plusOp__0_carry__1_n_8),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[87]),
        .I3(plusOp__94_carry__1_i_1_n_0),
        .O(plusOp__94_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__94_carry__2
       (.CI(plusOp__94_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp__94_carry__2_CO_UNCONNECTED[7],plusOp__94_carry__2_n_1,plusOp__94_carry__2_n_2,plusOp__94_carry__2_n_3,plusOp__94_carry__2_n_4,plusOp__94_carry__2_n_5,plusOp__94_carry__2_n_6,plusOp__94_carry__2_n_7}),
        .DI({1'b0,plusOp__94_carry__2_i_1_n_0,plusOp__94_carry__2_i_2_n_0,plusOp__94_carry__2_i_3_n_0,plusOp__94_carry__2_i_4_n_0,plusOp__94_carry__2_i_5_n_0,plusOp__94_carry__2_i_6_n_0,plusOp__94_carry__2_i_7_n_0}),
        .O(plusOp6_out[31:24]),
        .S({plusOp__94_carry__2_i_8_n_0,plusOp__94_carry__2_i_9_n_0,plusOp__94_carry__2_i_10_n_0,plusOp__94_carry__2_i_11_n_0,plusOp__94_carry__2_i_12_n_0,plusOp__94_carry__2_i_13_n_0,plusOp__94_carry__2_i_14_n_0,plusOp__94_carry__2_i_15_n_0}));
  (* HLUTNM = "lutpair59" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__2_i_1
       (.I0(plusOp__0_carry__2_n_10),
        .I1(s_axis_tdata[29]),
        .I2(s_axis_tdata[93]),
        .O(plusOp__94_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__2_i_10
       (.I0(plusOp__0_carry__2_n_10),
        .I1(s_axis_tdata[29]),
        .I2(s_axis_tdata[93]),
        .I3(plusOp__94_carry__2_i_2_n_0),
        .O(plusOp__94_carry__2_i_10_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__2_i_11
       (.I0(plusOp__0_carry__2_n_11),
        .I1(s_axis_tdata[28]),
        .I2(s_axis_tdata[92]),
        .I3(plusOp__94_carry__2_i_3_n_0),
        .O(plusOp__94_carry__2_i_11_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__2_i_12
       (.I0(plusOp__0_carry__2_n_12),
        .I1(s_axis_tdata[27]),
        .I2(s_axis_tdata[91]),
        .I3(plusOp__94_carry__2_i_4_n_0),
        .O(plusOp__94_carry__2_i_12_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__2_i_13
       (.I0(plusOp__0_carry__2_n_13),
        .I1(s_axis_tdata[26]),
        .I2(s_axis_tdata[90]),
        .I3(plusOp__94_carry__2_i_5_n_0),
        .O(plusOp__94_carry__2_i_13_n_0));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__2_i_14
       (.I0(plusOp__0_carry__2_n_14),
        .I1(s_axis_tdata[25]),
        .I2(s_axis_tdata[89]),
        .I3(plusOp__94_carry__2_i_6_n_0),
        .O(plusOp__94_carry__2_i_14_n_0));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__2_i_15
       (.I0(plusOp__0_carry__2_n_15),
        .I1(s_axis_tdata[24]),
        .I2(s_axis_tdata[88]),
        .I3(plusOp__94_carry__2_i_7_n_0),
        .O(plusOp__94_carry__2_i_15_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__2_i_2
       (.I0(plusOp__0_carry__2_n_11),
        .I1(s_axis_tdata[28]),
        .I2(s_axis_tdata[92]),
        .O(plusOp__94_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__2_i_3
       (.I0(plusOp__0_carry__2_n_12),
        .I1(s_axis_tdata[27]),
        .I2(s_axis_tdata[91]),
        .O(plusOp__94_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__2_i_4
       (.I0(plusOp__0_carry__2_n_13),
        .I1(s_axis_tdata[26]),
        .I2(s_axis_tdata[90]),
        .O(plusOp__94_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair55" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__2_i_5
       (.I0(plusOp__0_carry__2_n_14),
        .I1(s_axis_tdata[25]),
        .I2(s_axis_tdata[89]),
        .O(plusOp__94_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair54" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__2_i_6
       (.I0(plusOp__0_carry__2_n_15),
        .I1(s_axis_tdata[24]),
        .I2(s_axis_tdata[88]),
        .O(plusOp__94_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry__2_i_7
       (.I0(plusOp__0_carry__1_n_8),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[87]),
        .O(plusOp__94_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    plusOp__94_carry__2_i_8
       (.I0(s_axis_tdata[94]),
        .I1(s_axis_tdata[30]),
        .I2(plusOp__0_carry__2_n_9),
        .I3(s_axis_tdata[31]),
        .I4(plusOp__0_carry__2_n_8),
        .I5(s_axis_tdata[95]),
        .O(plusOp__94_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry__2_i_9
       (.I0(plusOp__94_carry__2_i_1_n_0),
        .I1(s_axis_tdata[30]),
        .I2(plusOp__0_carry__2_n_9),
        .I3(s_axis_tdata[94]),
        .O(plusOp__94_carry__2_i_9_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry_i_1
       (.I0(plusOp__0_carry_n_9),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[70]),
        .O(plusOp__94_carry_i_1_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry_i_10
       (.I0(plusOp__0_carry_n_10),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[69]),
        .I3(plusOp__94_carry_i_3_n_0),
        .O(plusOp__94_carry_i_10_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry_i_11
       (.I0(plusOp__0_carry_n_11),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[68]),
        .I3(plusOp__94_carry_i_4_n_0),
        .O(plusOp__94_carry_i_11_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry_i_12
       (.I0(plusOp__0_carry_n_12),
        .I1(s_axis_tdata[3]),
        .I2(s_axis_tdata[67]),
        .I3(plusOp__94_carry_i_5_n_0),
        .O(plusOp__94_carry_i_12_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry_i_13
       (.I0(plusOp__0_carry_n_13),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[66]),
        .I3(plusOp__94_carry_i_6_n_0),
        .O(plusOp__94_carry_i_13_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry_i_14
       (.I0(plusOp__0_carry_n_14),
        .I1(s_axis_tdata[1]),
        .I2(s_axis_tdata[65]),
        .I3(plusOp__94_carry_i_7_n_0),
        .O(plusOp__94_carry_i_14_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    plusOp__94_carry_i_15
       (.I0(plusOp__0_carry_n_15),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[64]),
        .O(plusOp__94_carry_i_15_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry_i_2
       (.I0(plusOp__0_carry_n_10),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[69]),
        .O(plusOp__94_carry_i_2_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry_i_3
       (.I0(plusOp__0_carry_n_11),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[68]),
        .O(plusOp__94_carry_i_3_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry_i_4
       (.I0(plusOp__0_carry_n_12),
        .I1(s_axis_tdata[3]),
        .I2(s_axis_tdata[67]),
        .O(plusOp__94_carry_i_4_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry_i_5
       (.I0(plusOp__0_carry_n_13),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[66]),
        .O(plusOp__94_carry_i_5_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry_i_6
       (.I0(plusOp__0_carry_n_14),
        .I1(s_axis_tdata[1]),
        .I2(s_axis_tdata[65]),
        .O(plusOp__94_carry_i_6_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    plusOp__94_carry_i_7
       (.I0(plusOp__0_carry_n_15),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[64]),
        .O(plusOp__94_carry_i_7_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry_i_8
       (.I0(plusOp__0_carry_n_8),
        .I1(s_axis_tdata[7]),
        .I2(s_axis_tdata[71]),
        .I3(plusOp__94_carry_i_1_n_0),
        .O(plusOp__94_carry_i_8_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    plusOp__94_carry_i_9
       (.I0(plusOp__0_carry_n_9),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[70]),
        .I3(plusOp__94_carry_i_2_n_0),
        .O(plusOp__94_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'hFCAA)) 
    r_flip_i_1
       (.I0(r_flip),
        .I1(s_axis_tvalid),
        .I2(r_tlast),
        .I3(axis_aresetn),
        .O(r_flip_i_1_n_0));
  FDRE r_flip_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(r_flip_i_1_n_0),
        .Q(r_flip),
        .R(1'b0));
  FDRE r_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(r_tlast),
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
