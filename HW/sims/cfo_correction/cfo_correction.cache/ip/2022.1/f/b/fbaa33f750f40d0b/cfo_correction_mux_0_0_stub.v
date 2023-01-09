// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Sep 30 09:41:17 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_mux_0_0_stub.v
// Design      : cfo_correction_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(axis_aclk, axis_aresetn, s_axis0_tdata, 
  s_axis0_tvalid, s_axis0_tid, s_axis0_tuser, s_axis0_tlast, s_axis0_tready, s_axis1_tdata, 
  s_axis1_tvalid, s_axis1_tid, s_axis1_tuser, s_axis1_tlast, s_axis1_tready, m_axis_tdata, 
  m_axis_tvalid, m_axis_tlast, m_axis_tready, m_axis_tstrb, i_select)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,s_axis0_tdata[127:0],s_axis0_tvalid,s_axis0_tid[7:0],s_axis0_tuser[7:0],s_axis0_tlast,s_axis0_tready,s_axis1_tdata[127:0],s_axis1_tvalid,s_axis1_tid[7:0],s_axis1_tuser[7:0],s_axis1_tlast,s_axis1_tready,m_axis_tdata[127:0],m_axis_tvalid,m_axis_tlast,m_axis_tready,m_axis_tstrb[15:0],i_select" */;
  input axis_aclk;
  input axis_aresetn;
  input [127:0]s_axis0_tdata;
  input s_axis0_tvalid;
  input [7:0]s_axis0_tid;
  input [7:0]s_axis0_tuser;
  input s_axis0_tlast;
  output s_axis0_tready;
  input [127:0]s_axis1_tdata;
  input s_axis1_tvalid;
  input [7:0]s_axis1_tid;
  input [7:0]s_axis1_tuser;
  input s_axis1_tlast;
  output s_axis1_tready;
  output [127:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;
  output [15:0]m_axis_tstrb;
  input i_select;
endmodule
