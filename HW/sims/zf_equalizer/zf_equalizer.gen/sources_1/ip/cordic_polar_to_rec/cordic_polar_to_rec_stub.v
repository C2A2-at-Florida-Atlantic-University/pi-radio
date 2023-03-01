// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Feb 28 21:01:46 2023
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Projects/pi-radio/HW/sims/zf_equalizer/zf_equalizer.gen/sources_1/ip/cordic_polar_to_rec/cordic_polar_to_rec_stub.v
// Design      : cordic_polar_to_rec
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_18,Vivado 2022.1" *)
module cordic_polar_to_rec(aclk, s_axis_phase_tvalid, 
  s_axis_phase_tlast, s_axis_phase_tdata, s_axis_cartesian_tvalid, 
  s_axis_cartesian_tlast, s_axis_cartesian_tdata, m_axis_dout_tvalid, m_axis_dout_tlast, 
  m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_phase_tvalid,s_axis_phase_tlast,s_axis_phase_tdata[15:0],s_axis_cartesian_tvalid,s_axis_cartesian_tlast,s_axis_cartesian_tdata[31:0],m_axis_dout_tvalid,m_axis_dout_tlast,m_axis_dout_tdata[31:0]" */;
  input aclk;
  input s_axis_phase_tvalid;
  input s_axis_phase_tlast;
  input [15:0]s_axis_phase_tdata;
  input s_axis_cartesian_tvalid;
  input s_axis_cartesian_tlast;
  input [31:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  output m_axis_dout_tlast;
  output [31:0]m_axis_dout_tdata;
endmodule
