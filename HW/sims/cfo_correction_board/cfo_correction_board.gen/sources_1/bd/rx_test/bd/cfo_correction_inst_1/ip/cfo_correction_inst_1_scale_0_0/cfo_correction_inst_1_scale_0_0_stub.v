// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Oct 19 00:26:53 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_scale_0_0/cfo_correction_inst_1_scale_0_0_stub.v
// Design      : cfo_correction_inst_1_scale_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "scale,Vivado 2022.1" *)
module cfo_correction_inst_1_scale_0_0(axis_aclk, axis_aresetn, s_axis_tdata, 
  s_axis_tvalid, m_axis_tdata, m_axis_tvalid, i_symbol, o_negative_freq)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,s_axis_tdata[31:0],s_axis_tvalid,m_axis_tdata[31:0],m_axis_tvalid,i_symbol,o_negative_freq" */;
  input axis_aclk;
  input axis_aresetn;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input i_symbol;
  output o_negative_freq;
endmodule
