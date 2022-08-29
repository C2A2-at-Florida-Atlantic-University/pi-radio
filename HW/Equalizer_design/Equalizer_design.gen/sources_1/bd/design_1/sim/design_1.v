//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Mon Aug 29 18:43:12 2022
//Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (s_axis_aclk_0,
    s_axis_aresetn_0,
    s_equalizer_in_axis_0_tdata,
    s_equalizer_in_axis_0_tid,
    s_equalizer_in_axis_0_tlast,
    s_equalizer_in_axis_0_tuser,
    s_equalizer_in_axis_0_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK_0, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_equalizer_in_axis_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_equalizer_in_axis_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8" *) input [127:0]s_equalizer_in_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_equalizer_in_axis_0 TID" *) input [7:0]s_equalizer_in_axis_0_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_equalizer_in_axis_0 TLAST" *) input s_equalizer_in_axis_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_equalizer_in_axis_0 TUSER" *) input [7:0]s_equalizer_in_axis_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_equalizer_in_axis_0 TVALID" *) input s_equalizer_in_axis_0_tvalid;

  wire s_axis_aclk_0_1;
  wire s_axis_aresetn_0_1;
  wire [127:0]s_equalizer_in_axis_0_1_TDATA;
  wire [7:0]s_equalizer_in_axis_0_1_TID;
  wire s_equalizer_in_axis_0_1_TLAST;
  wire [7:0]s_equalizer_in_axis_0_1_TUSER;
  wire s_equalizer_in_axis_0_1_TVALID;

  assign s_axis_aclk_0_1 = s_axis_aclk_0;
  assign s_axis_aresetn_0_1 = s_axis_aresetn_0;
  assign s_equalizer_in_axis_0_1_TDATA = s_equalizer_in_axis_0_tdata[127:0];
  assign s_equalizer_in_axis_0_1_TID = s_equalizer_in_axis_0_tid[7:0];
  assign s_equalizer_in_axis_0_1_TLAST = s_equalizer_in_axis_0_tlast;
  assign s_equalizer_in_axis_0_1_TUSER = s_equalizer_in_axis_0_tuser[7:0];
  assign s_equalizer_in_axis_0_1_TVALID = s_equalizer_in_axis_0_tvalid;
  design_1_cp_rm_0_0 cp_rm_0
       (.s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_equalizer_in_axis_tdata(s_equalizer_in_axis_0_1_TDATA),
        .s_equalizer_in_axis_tid(s_equalizer_in_axis_0_1_TID),
        .s_equalizer_in_axis_tlast(s_equalizer_in_axis_0_1_TLAST),
        .s_equalizer_in_axis_tuser(s_equalizer_in_axis_0_1_TUSER),
        .s_equalizer_in_axis_tvalid(s_equalizer_in_axis_0_1_TVALID));
endmodule
