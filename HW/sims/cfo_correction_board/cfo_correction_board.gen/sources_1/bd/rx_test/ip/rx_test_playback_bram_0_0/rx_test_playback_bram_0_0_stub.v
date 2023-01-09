// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Oct 21 10:04:39 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_playback_bram_0_0/rx_test_playback_bram_0_0_stub.v
// Design      : rx_test_playback_bram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "playback_bram,Vivado 2022.1" *)
module rx_test_playback_bram_0_0(axis_aclk, axis_aresetn, playback_en, 
  num_symbols, o_finish, BRAM_PORT_addr, BRAM_PORT_clk, BRAM_PORT_dout, BRAM_PORT_rst, 
  M_AXIS_tdata, M_AXIS_tvalid, M_AXIS_tlast)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,playback_en,num_symbols[3:0],o_finish,BRAM_PORT_addr[13:0],BRAM_PORT_clk,BRAM_PORT_dout[127:0],BRAM_PORT_rst,M_AXIS_tdata[127:0],M_AXIS_tvalid,M_AXIS_tlast" */;
  input axis_aclk;
  input axis_aresetn;
  input playback_en;
  input [3:0]num_symbols;
  output o_finish;
  output [13:0]BRAM_PORT_addr;
  output BRAM_PORT_clk;
  input [127:0]BRAM_PORT_dout;
  output BRAM_PORT_rst;
  output [127:0]M_AXIS_tdata;
  output M_AXIS_tvalid;
  output M_AXIS_tlast;
endmodule
