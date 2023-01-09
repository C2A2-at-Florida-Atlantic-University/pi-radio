// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:13 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top rx_test_tlast_gen_0_1 -prefix
//               rx_test_tlast_gen_0_1_ rx_test_tlast_gen_0_0_stub.v
// Design      : rx_test_tlast_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tlast_gen,Vivado 2022.1" *)
module rx_test_tlast_gen_0_1(axis_aclk, axis_aresetn, i_start, s_axis_tdata, 
  s_axis_tvalid, s_axis_tready, m_axis_tdata, m_axis_tvalid, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,i_start,s_axis_tdata[127:0],s_axis_tvalid,s_axis_tready,m_axis_tdata[127:0],m_axis_tvalid,m_axis_tlast" */;
  input axis_aclk;
  input axis_aresetn;
  input i_start;
  input [127:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  output [127:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
endmodule
