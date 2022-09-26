//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Sun Sep 25 16:46:22 2022
//Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (bypass,
    m_axis_0_tdata,
    m_axis_0_tid,
    m_axis_0_tlast,
    m_axis_0_tuser,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tid,
    s_axis_0_tlast,
    s_axis_0_tuser,
    s_axis_0_tvalid,
    s_axis_aclk_0,
    s_axis_aresetn_0);
  input bypass;
  output [127:0]m_axis_0_tdata;
  output [7:0]m_axis_0_tid;
  output m_axis_0_tlast;
  output [7:0]m_axis_0_tuser;
  output m_axis_0_tvalid;
  input [127:0]s_axis_0_tdata;
  input [7:0]s_axis_0_tid;
  input s_axis_0_tlast;
  input [7:0]s_axis_0_tuser;
  input s_axis_0_tvalid;
  input s_axis_aclk_0;
  input s_axis_aresetn_0;

  wire bypass;
  wire [127:0]m_axis_0_tdata;
  wire [7:0]m_axis_0_tid;
  wire m_axis_0_tlast;
  wire [7:0]m_axis_0_tuser;
  wire m_axis_0_tvalid;
  wire [127:0]s_axis_0_tdata;
  wire [7:0]s_axis_0_tid;
  wire s_axis_0_tlast;
  wire [7:0]s_axis_0_tuser;
  wire s_axis_0_tvalid;
  wire s_axis_aclk_0;
  wire s_axis_aresetn_0;

  design_1 design_1_i
       (.bypass(bypass),
        .m_axis_0_tdata(m_axis_0_tdata),
        .m_axis_0_tid(m_axis_0_tid),
        .m_axis_0_tlast(m_axis_0_tlast),
        .m_axis_0_tuser(m_axis_0_tuser),
        .m_axis_0_tvalid(m_axis_0_tvalid),
        .s_axis_0_tdata(s_axis_0_tdata),
        .s_axis_0_tid(s_axis_0_tid),
        .s_axis_0_tlast(s_axis_0_tlast),
        .s_axis_0_tuser(s_axis_0_tuser),
        .s_axis_0_tvalid(s_axis_0_tvalid),
        .s_axis_aclk_0(s_axis_aclk_0),
        .s_axis_aresetn_0(s_axis_aresetn_0));
endmodule
