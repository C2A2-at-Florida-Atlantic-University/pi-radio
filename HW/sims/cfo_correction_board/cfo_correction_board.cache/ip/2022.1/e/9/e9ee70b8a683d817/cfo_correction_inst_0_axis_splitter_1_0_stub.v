// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:12 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_inst_0_axis_splitter_1_0_stub.v
// Design      : cfo_correction_inst_0_axis_splitter_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_splitter,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(axis_aclk, axis_aresetn, s_axis_tdata, 
  s_axis_tvalid, s_axis_tid, s_axis_tuser, s_axis_tlast, m_axis0_tdata, m_axis0_tvalid, 
  m_axis0_tid, m_axis0_tuser, m_axis0_tlast, m_axis1_tdata, m_axis1_tvalid, m_axis1_tid, 
  m_axis1_tuser, m_axis1_tlast)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,s_axis_tdata[127:0],s_axis_tvalid,s_axis_tid[7:0],s_axis_tuser[7:0],s_axis_tlast,m_axis0_tdata[127:0],m_axis0_tvalid,m_axis0_tid[7:0],m_axis0_tuser[7:0],m_axis0_tlast,m_axis1_tdata[127:0],m_axis1_tvalid,m_axis1_tid[7:0],m_axis1_tuser[7:0],m_axis1_tlast" */;
  input axis_aclk;
  input axis_aresetn;
  input [127:0]s_axis_tdata;
  input s_axis_tvalid;
  input [7:0]s_axis_tid;
  input [7:0]s_axis_tuser;
  input s_axis_tlast;
  output [127:0]m_axis0_tdata;
  output m_axis0_tvalid;
  output [7:0]m_axis0_tid;
  output [7:0]m_axis0_tuser;
  output m_axis0_tlast;
  output [127:0]m_axis1_tdata;
  output m_axis1_tvalid;
  output [7:0]m_axis1_tid;
  output [7:0]m_axis1_tuser;
  output m_axis1_tlast;
endmodule
