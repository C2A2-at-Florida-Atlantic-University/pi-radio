//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Tue Aug 30 10:57:14 2022
//Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (s_axis_0_tdata,
    s_axis_0_tid,
    s_axis_0_tlast,
    s_axis_0_tuser,
    s_axis_0_tvalid,
    s_axis_aclk_0,
    s_axis_aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8" *) input [127:0]s_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TID" *) input [7:0]s_axis_0_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TLAST" *) input s_axis_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TUSER" *) input [7:0]s_axis_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TVALID" *) input s_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK_0, ASSOCIATED_BUSIF s_axis_0, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_aresetn_0;

  wire [127:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [7:0]axis_data_fifo_0_M_AXIS_TID;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire [7:0]axis_data_fifo_0_M_AXIS_TUSER;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [127:0]conj_0_m_axis_TDATA;
  wire [7:0]conj_0_m_axis_TID;
  wire conj_0_m_axis_TLAST;
  wire [7:0]conj_0_m_axis_TUSER;
  wire conj_0_m_axis_TVALID;
  wire [127:0]cp_rm_0_m_cp_axis_TDATA;
  wire [7:0]cp_rm_0_m_cp_axis_TID;
  wire cp_rm_0_m_cp_axis_TLAST;
  wire [7:0]cp_rm_0_m_cp_axis_TUSER;
  wire cp_rm_0_m_cp_axis_TVALID;
  wire cp_rm_0_o_tlast_symbol;
  wire [127:0]s_axis_0_1_TDATA;
  wire [7:0]s_axis_0_1_TID;
  wire s_axis_0_1_TLAST;
  wire [7:0]s_axis_0_1_TUSER;
  wire s_axis_0_1_TVALID;
  wire s_axis_aclk_0_1;
  wire s_axis_aresetn_0_1;

  assign s_axis_0_1_TDATA = s_axis_0_tdata[127:0];
  assign s_axis_0_1_TID = s_axis_0_tid[7:0];
  assign s_axis_0_1_TLAST = s_axis_0_tlast;
  assign s_axis_0_1_TUSER = s_axis_0_tuser[7:0];
  assign s_axis_0_1_TVALID = s_axis_0_tvalid;
  assign s_axis_aclk_0_1 = s_axis_aclk_0;
  assign s_axis_aresetn_0_1 = s_axis_aresetn_0;
  design_1_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tid(axis_data_fifo_0_M_AXIS_TID),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(1'b1),
        .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(conj_0_m_axis_TDATA),
        .s_axis_tid(conj_0_m_axis_TID),
        .s_axis_tlast(conj_0_m_axis_TLAST),
        .s_axis_tuser(conj_0_m_axis_TUSER),
        .s_axis_tvalid(conj_0_m_axis_TVALID));
  design_1_conj_0_0 conj_0
       (.m_axis_tdata(conj_0_m_axis_TDATA),
        .m_axis_tid(conj_0_m_axis_TID),
        .m_axis_tlast(conj_0_m_axis_TLAST),
        .m_axis_tuser(conj_0_m_axis_TUSER),
        .m_axis_tvalid(conj_0_m_axis_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(cp_rm_0_m_cp_axis_TDATA),
        .s_axis_tid(cp_rm_0_m_cp_axis_TID),
        .s_axis_tlast(cp_rm_0_m_cp_axis_TLAST),
        .s_axis_tuser(cp_rm_0_m_cp_axis_TUSER),
        .s_axis_tvalid(cp_rm_0_m_cp_axis_TVALID));
  design_1_cp_rm_0_0 cp_rm_0
       (.m_cp_axis_tdata(cp_rm_0_m_cp_axis_TDATA),
        .m_cp_axis_tid(cp_rm_0_m_cp_axis_TID),
        .m_cp_axis_tlast(cp_rm_0_m_cp_axis_TLAST),
        .m_cp_axis_tuser(cp_rm_0_m_cp_axis_TUSER),
        .m_cp_axis_tvalid(cp_rm_0_m_cp_axis_TVALID),
        .o_tlast_symbol(cp_rm_0_o_tlast_symbol),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(s_axis_0_1_TDATA),
        .s_axis_tid(s_axis_0_1_TID),
        .s_axis_tlast(s_axis_0_1_TLAST),
        .s_axis_tuser(s_axis_0_1_TUSER),
        .s_axis_tvalid(s_axis_0_1_TVALID));
  design_1_delay_0_0 delay_0
       (.i_tlast_symbol(cp_rm_0_o_tlast_symbol),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tid(axis_data_fifo_0_M_AXIS_TID),
        .s_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
endmodule
