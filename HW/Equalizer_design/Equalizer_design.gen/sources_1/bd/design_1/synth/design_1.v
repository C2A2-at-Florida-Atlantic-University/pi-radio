//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Wed Sep  7 12:18:11 2022
//Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
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
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire [7:0]axis_data_fifo_0_M_AXIS_TUSER;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [127:0]axis_splitter_0_m_axis0_TDATA;
  wire [7:0]axis_splitter_0_m_axis0_TID;
  wire axis_splitter_0_m_axis0_TLAST;
  wire [7:0]axis_splitter_0_m_axis0_TUSER;
  wire axis_splitter_0_m_axis0_TVALID;
  wire [255:0]complex_mult_0_m_axis_TDATA;
  wire [7:0]complex_mult_0_m_axis_TID;
  wire complex_mult_0_m_axis_TLAST;
  wire [7:0]complex_mult_0_m_axis_TUSER;
  wire complex_mult_0_m_axis_TVALID;
  wire [127:0]conj_0_m_axis_TDATA;
  wire [7:0]conj_0_m_axis_TID;
  wire conj_0_m_axis_TLAST;
  wire [7:0]conj_0_m_axis_TUSER;
  wire conj_0_m_axis_TVALID;
  wire [127:0]cp_rm2_0_m_axis_TDATA;
  wire [7:0]cp_rm2_0_m_axis_TID;
  wire cp_rm2_0_m_axis_TLAST;
  wire [7:0]cp_rm2_0_m_axis_TUSER;
  wire cp_rm2_0_m_axis_TVALID;
  wire [127:0]cp_rm_0_m_axis_TDATA;
  wire [7:0]cp_rm_0_m_axis_TID;
  wire cp_rm_0_m_axis_TLAST;
  wire [7:0]cp_rm_0_m_axis_TUSER;
  wire cp_rm_0_m_axis_TVALID;
  wire [127:0]cp_rm_0_m_cp_axis_TDATA;
  wire [7:0]cp_rm_0_m_cp_axis_TID;
  wire cp_rm_0_m_cp_axis_TLAST;
  wire [7:0]cp_rm_0_m_cp_axis_TUSER;
  wire cp_rm_0_m_cp_axis_TVALID;
  wire cp_rm_0_o_tlast_symbol;
  wire [127:0]delay_0_m_axis_TDATA;
  wire [7:0]delay_0_m_axis_TID;
  wire delay_0_m_axis_TLAST;
  wire [7:0]delay_0_m_axis_TUSER;
  wire delay_0_m_axis_TVALID;
  wire [127:0]s_axis_0_1_TDATA;
  wire [7:0]s_axis_0_1_TID;
  wire s_axis_0_1_TLAST;
  wire [7:0]s_axis_0_1_TUSER;
  wire s_axis_0_1_TVALID;
  wire s_axis_aclk_0_1;
  wire s_axis_aresetn_0_1;
  wire [79:0]sum_0_m_axis_TDATA;
  wire [7:0]sum_0_m_axis_TID;
  wire sum_0_m_axis_TLAST;
  wire [7:0]sum_0_m_axis_TUSER;
  wire sum_0_m_axis_TVALID;

  assign s_axis_0_1_TDATA = s_axis_0_tdata[127:0];
  assign s_axis_0_1_TID = s_axis_0_tid[7:0];
  assign s_axis_0_1_TLAST = s_axis_0_tlast;
  assign s_axis_0_1_TUSER = s_axis_0_tuser[7:0];
  assign s_axis_0_1_TVALID = s_axis_0_tvalid;
  assign s_axis_aclk_0_1 = s_axis_aclk_0;
  assign s_axis_aresetn_0_1 = s_axis_aresetn_0;
  design_1_angle_0_0 angle_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(sum_0_m_axis_TDATA),
        .s_axis_tid(sum_0_m_axis_TID),
        .s_axis_tlast(sum_0_m_axis_TLAST),
        .s_axis_tuser(sum_0_m_axis_TUSER),
        .s_axis_tvalid(sum_0_m_axis_TVALID));
  design_1_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tid(axis_data_fifo_0_M_AXIS_TID),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(conj_0_m_axis_TDATA),
        .s_axis_tid(conj_0_m_axis_TID),
        .s_axis_tlast(conj_0_m_axis_TLAST),
        .s_axis_tuser(conj_0_m_axis_TUSER),
        .s_axis_tvalid(conj_0_m_axis_TVALID));
  design_1_axis_splitter_0_0 axis_splitter_0
       (.m_axis0_tdata(axis_splitter_0_m_axis0_TDATA),
        .m_axis0_tid(axis_splitter_0_m_axis0_TID),
        .m_axis0_tlast(axis_splitter_0_m_axis0_TLAST),
        .m_axis0_tuser(axis_splitter_0_m_axis0_TUSER),
        .m_axis0_tvalid(axis_splitter_0_m_axis0_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(cp_rm_0_m_axis_TDATA),
        .s_axis_tid(cp_rm_0_m_axis_TID),
        .s_axis_tlast(cp_rm_0_m_axis_TLAST),
        .s_axis_tuser(cp_rm_0_m_axis_TUSER),
        .s_axis_tvalid(cp_rm_0_m_axis_TVALID));
  design_1_complex_mult_0_0 complex_mult_0
       (.m_axis_tdata(complex_mult_0_m_axis_TDATA),
        .m_axis_tid(complex_mult_0_m_axis_TID),
        .m_axis_tlast(complex_mult_0_m_axis_TLAST),
        .m_axis_tuser(complex_mult_0_m_axis_TUSER),
        .m_axis_tvalid(complex_mult_0_m_axis_TVALID),
        .s_axis0_tdata(delay_0_m_axis_TDATA),
        .s_axis0_tid(delay_0_m_axis_TID),
        .s_axis0_tlast(delay_0_m_axis_TLAST),
        .s_axis0_tuser(delay_0_m_axis_TUSER),
        .s_axis0_tvalid(delay_0_m_axis_TVALID),
        .s_axis1_tdata(cp_rm2_0_m_axis_TDATA),
        .s_axis1_tid(cp_rm2_0_m_axis_TID),
        .s_axis1_tlast(cp_rm2_0_m_axis_TLAST),
        .s_axis1_tuser(cp_rm2_0_m_axis_TUSER),
        .s_axis1_tvalid(cp_rm2_0_m_axis_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1));
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
  design_1_cp_rm2_0_0 cp_rm2_0
       (.i_tlast_symbol(cp_rm_0_o_tlast_symbol),
        .m_axis_tdata(cp_rm2_0_m_axis_TDATA),
        .m_axis_tid(cp_rm2_0_m_axis_TID),
        .m_axis_tlast(cp_rm2_0_m_axis_TLAST),
        .m_axis_tuser(cp_rm2_0_m_axis_TUSER),
        .m_axis_tvalid(cp_rm2_0_m_axis_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(axis_splitter_0_m_axis0_TDATA),
        .s_axis_tid(axis_splitter_0_m_axis0_TID),
        .s_axis_tlast(axis_splitter_0_m_axis0_TLAST),
        .s_axis_tuser(axis_splitter_0_m_axis0_TUSER),
        .s_axis_tvalid(axis_splitter_0_m_axis0_TVALID));
  design_1_cp_rm_0_0 cp_rm_0
       (.m_axis_tdata(cp_rm_0_m_axis_TDATA),
        .m_axis_tid(cp_rm_0_m_axis_TID),
        .m_axis_tlast(cp_rm_0_m_axis_TLAST),
        .m_axis_tuser(cp_rm_0_m_axis_TUSER),
        .m_axis_tvalid(cp_rm_0_m_axis_TVALID),
        .m_cp_axis_tdata(cp_rm_0_m_cp_axis_TDATA),
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
        .m_axis_tdata(delay_0_m_axis_TDATA),
        .m_axis_tid(delay_0_m_axis_TID),
        .m_axis_tlast(delay_0_m_axis_TLAST),
        .m_axis_tuser(delay_0_m_axis_TUSER),
        .m_axis_tvalid(delay_0_m_axis_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tid(axis_data_fifo_0_M_AXIS_TID),
        .s_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
  design_1_sum_0_0 sum_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis_tdata(sum_0_m_axis_TDATA),
        .m_axis_tid(sum_0_m_axis_TID),
        .m_axis_tlast(sum_0_m_axis_TLAST),
        .m_axis_tuser(sum_0_m_axis_TUSER),
        .m_axis_tvalid(sum_0_m_axis_TVALID),
        .s_axis_tdata(complex_mult_0_m_axis_TDATA),
        .s_axis_tid(complex_mult_0_m_axis_TID),
        .s_axis_tlast(complex_mult_0_m_axis_TLAST),
        .s_axis_tuser(complex_mult_0_m_axis_TUSER),
        .s_axis_tvalid(complex_mult_0_m_axis_TVALID));
endmodule
