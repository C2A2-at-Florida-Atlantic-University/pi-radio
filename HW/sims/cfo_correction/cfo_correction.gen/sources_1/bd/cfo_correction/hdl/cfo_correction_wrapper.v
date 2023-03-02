//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Thu Mar  2 11:10:49 2023
//Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
//Command     : generate_target cfo_correction_wrapper.bd
//Design      : cfo_correction_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cfo_correction_wrapper
   (axis_aclk,
    axis_aresetn,
    bypass,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tstrb,
    m_axis_tvalid,
    s_axis_tdata,
    s_axis_tid,
    s_axis_tlast,
    s_axis_tuser,
    s_axis_tvalid);
  input axis_aclk;
  input axis_aresetn;
  input bypass;
  output [127:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_tready;
  output [15:0]m_axis_tstrb;
  output m_axis_tvalid;
  input [127:0]s_axis_tdata;
  input [7:0]s_axis_tid;
  input s_axis_tlast;
  input [7:0]s_axis_tuser;
  input s_axis_tvalid;

  wire axis_aclk;
  wire axis_aresetn;
  wire bypass;
  wire [127:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  cfo_correction cfo_correction_i
       (.axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .bypass(bypass),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
