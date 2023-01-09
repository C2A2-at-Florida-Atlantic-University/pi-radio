// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Oct 19 00:26:59 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_complex_mult_0_0/cfo_correction_inst_1_complex_mult_0_0_stub.v
// Design      : cfo_correction_inst_1_complex_mult_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "complex_mult,Vivado 2022.1" *)
module cfo_correction_inst_1_complex_mult_0_0(axis_aclk, axis_aresetn, s_axis0_tdata, 
  s_axis0_tvalid, s_axis0_tid, s_axis0_tuser, s_axis0_tlast, s_axis1_tdata, s_axis1_tvalid, 
  s_axis1_tid, s_axis1_tuser, s_axis1_tlast, m_axis_tdata, m_axis_tvalid, m_axis_tid, 
  m_axis_tuser, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,s_axis0_tdata[127:0],s_axis0_tvalid,s_axis0_tid[7:0],s_axis0_tuser[7:0],s_axis0_tlast,s_axis1_tdata[127:0],s_axis1_tvalid,s_axis1_tid[7:0],s_axis1_tuser[7:0],s_axis1_tlast,m_axis_tdata[255:0],m_axis_tvalid,m_axis_tid[7:0],m_axis_tuser[7:0],m_axis_tlast" */;
  input axis_aclk;
  input axis_aresetn;
  input [127:0]s_axis0_tdata;
  input s_axis0_tvalid;
  input [7:0]s_axis0_tid;
  input [7:0]s_axis0_tuser;
  input s_axis0_tlast;
  input [127:0]s_axis1_tdata;
  input s_axis1_tvalid;
  input [7:0]s_axis1_tid;
  input [7:0]s_axis1_tuser;
  input s_axis1_tlast;
  output [255:0]m_axis_tdata;
  output m_axis_tvalid;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tuser;
  output m_axis_tlast;
endmodule
