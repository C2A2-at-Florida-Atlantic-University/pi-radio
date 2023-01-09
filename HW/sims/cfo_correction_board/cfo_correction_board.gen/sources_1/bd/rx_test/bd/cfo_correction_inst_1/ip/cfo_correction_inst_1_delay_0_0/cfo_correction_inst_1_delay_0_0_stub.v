// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:12 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top cfo_correction_inst_1_delay_0_0 -prefix
//               cfo_correction_inst_1_delay_0_0_ cfo_correction_inst_0_delay_0_0_stub.v
// Design      : cfo_correction_inst_0_delay_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "delay,Vivado 2022.1" *)
module cfo_correction_inst_1_delay_0_0(axis_aclk, axis_aresetn, s_axis_tdata, 
  s_axis_tvalid, s_axis_tid, s_axis_tuser, s_axis_tlast, s_axis_tready, m_axis_tdata, 
  m_axis_tvalid, m_axis_tid, m_axis_tuser, m_axis_tlast, i_symbol)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,s_axis_tdata[127:0],s_axis_tvalid,s_axis_tid[7:0],s_axis_tuser[7:0],s_axis_tlast,s_axis_tready,m_axis_tdata[127:0],m_axis_tvalid,m_axis_tid[7:0],m_axis_tuser[7:0],m_axis_tlast,i_symbol" */;
  input axis_aclk;
  input axis_aresetn;
  input [127:0]s_axis_tdata;
  input s_axis_tvalid;
  input [7:0]s_axis_tid;
  input [7:0]s_axis_tuser;
  input s_axis_tlast;
  output s_axis_tready;
  output [127:0]m_axis_tdata;
  output m_axis_tvalid;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tuser;
  output m_axis_tlast;
  input i_symbol;
endmodule
