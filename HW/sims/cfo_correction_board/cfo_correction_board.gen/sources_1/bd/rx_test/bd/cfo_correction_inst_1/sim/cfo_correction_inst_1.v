//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Oct 21 11:04:03 2022
//Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
//Command     : generate_target cfo_correction_inst_1.bd
//Design      : cfo_correction_inst_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Mixer_imp_YGLQ12
   (i_negative_freq,
    m_axis_0_tdata,
    m_axis_0_tlast,
    m_axis_0_tvalid,
    s_axis0_tdata,
    s_axis0_tid,
    s_axis0_tlast,
    s_axis0_tuser,
    s_axis0_tvalid,
    s_axis_aclk_0,
    s_axis_aresetn_0,
    s_axis_tdata,
    s_axis_tvalid);
  input i_negative_freq;
  output [127:0]m_axis_0_tdata;
  output m_axis_0_tlast;
  output m_axis_0_tvalid;
  input [127:0]s_axis0_tdata;
  input [7:0]s_axis0_tid;
  input s_axis0_tlast;
  input [7:0]s_axis0_tuser;
  input s_axis0_tvalid;
  input s_axis_aclk_0;
  input s_axis_aresetn_0;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;

  wire [127:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TVALID;
  wire [31:0]angle_0_m_axis_TDATA;
  wire angle_0_m_axis_TVALID;
  wire [127:0]conj_0_m_axis_TDATA;
  wire [7:0]conj_0_m_axis_TID;
  wire conj_0_m_axis_TLAST;
  wire [7:0]conj_0_m_axis_TUSER;
  wire conj_0_m_axis_TVALID;
  wire [127:0]dds_top_0_m_axis_TDATA;
  wire [7:0]dds_top_0_m_axis_TID;
  wire dds_top_0_m_axis_TLAST;
  wire [7:0]dds_top_0_m_axis_TUSER;
  wire dds_top_0_m_axis_TVALID;
  wire [127:0]delay_1_m_axis_TDATA;
  wire [7:0]delay_1_m_axis_TID;
  wire delay_1_m_axis_TLAST;
  wire [7:0]delay_1_m_axis_TUSER;
  wire delay_1_m_axis_TVALID;
  wire i_negative_freq_1;
  wire s_axis_aclk_0_1;
  wire s_axis_aresetn_0_1;

  assign angle_0_m_axis_TDATA = s_axis_tdata[31:0];
  assign angle_0_m_axis_TVALID = s_axis_tvalid;
  assign delay_1_m_axis_TDATA = s_axis0_tdata[127:0];
  assign delay_1_m_axis_TID = s_axis0_tid[7:0];
  assign delay_1_m_axis_TLAST = s_axis0_tlast;
  assign delay_1_m_axis_TUSER = s_axis0_tuser[7:0];
  assign delay_1_m_axis_TVALID = s_axis0_tvalid;
  assign i_negative_freq_1 = i_negative_freq;
  assign m_axis_0_tdata[127:0] = Conn1_TDATA;
  assign m_axis_0_tlast = Conn1_TLAST;
  assign m_axis_0_tvalid = Conn1_TVALID;
  assign s_axis_aclk_0_1 = s_axis_aclk_0;
  assign s_axis_aresetn_0_1 = s_axis_aresetn_0;
  cfo_correction_inst_1_conj_0_0 conj_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .i_negative_freq(i_negative_freq_1),
        .m_axis_tdata(conj_0_m_axis_TDATA),
        .m_axis_tid(conj_0_m_axis_TID),
        .m_axis_tlast(conj_0_m_axis_TLAST),
        .m_axis_tuser(conj_0_m_axis_TUSER),
        .m_axis_tvalid(conj_0_m_axis_TVALID),
        .s_axis_tdata(dds_top_0_m_axis_TDATA),
        .s_axis_tid(dds_top_0_m_axis_TID),
        .s_axis_tlast(dds_top_0_m_axis_TLAST),
        .s_axis_tuser(dds_top_0_m_axis_TUSER),
        .s_axis_tvalid(dds_top_0_m_axis_TVALID));
  cfo_correction_inst_1_dds_top_0_0 dds_top_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis_tdata(dds_top_0_m_axis_TDATA),
        .m_axis_tid(dds_top_0_m_axis_TID),
        .m_axis_tlast(dds_top_0_m_axis_TLAST),
        .m_axis_tuser(dds_top_0_m_axis_TUSER),
        .m_axis_tvalid(dds_top_0_m_axis_TVALID),
        .s_axis_tdata(angle_0_m_axis_TDATA),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(angle_0_m_axis_TVALID));
  cfo_correction_inst_1_mixer_0_0 mixer_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis_tdata(Conn1_TDATA),
        .m_axis_tlast(Conn1_TLAST),
        .m_axis_tvalid(Conn1_TVALID),
        .s_axis0_tdata(delay_1_m_axis_TDATA),
        .s_axis0_tid(delay_1_m_axis_TID),
        .s_axis0_tlast(delay_1_m_axis_TLAST),
        .s_axis0_tuser(delay_1_m_axis_TUSER),
        .s_axis0_tvalid(delay_1_m_axis_TVALID),
        .s_axis1_tdata(conj_0_m_axis_TDATA),
        .s_axis1_tid(conj_0_m_axis_TID),
        .s_axis1_tlast(conj_0_m_axis_TLAST),
        .s_axis1_tuser(conj_0_m_axis_TUSER),
        .s_axis1_tvalid(conj_0_m_axis_TVALID));
endmodule

(* CORE_GENERATION_INFO = "cfo_correction_inst_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cfo_correction_inst_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=22,numReposBlks=21,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=17,numPkgbdBlks=0,bdsource=c_/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.srcs/sources_1/bd/cfo_correction/cfo_correction.bd,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "cfo_correction_inst_1.hwdef" *) 
module cfo_correction_inst_1
   (axis_aclk,
    axis_aresetn,
    bypass,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tstrb,
    m_axis_tvalid,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_ACLK, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_CLKEN s_axis_aclken, ASSOCIATED_RESET axis_aresetn, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input axis_aresetn;
  input bypass;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) output [15:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;

  wire [127:0]Mixer_m_axis_0_TDATA;
  wire Mixer_m_axis_0_TLAST;
  wire Mixer_m_axis_0_TVALID;
  wire [31:0]angle_0_m_axis_TDATA;
  wire angle_0_m_axis_TVALID;
  wire [127:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [7:0]axis_data_fifo_0_M_AXIS_TID;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire [7:0]axis_data_fifo_0_M_AXIS_TUSER;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [127:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire [7:0]axis_data_fifo_1_M_AXIS_TID;
  wire axis_data_fifo_1_M_AXIS_TLAST;
  wire axis_data_fifo_1_M_AXIS_TREADY;
  wire [7:0]axis_data_fifo_1_M_AXIS_TUSER;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [127:0]axis_splitter_0_m_axis0_TDATA;
  wire [7:0]axis_splitter_0_m_axis0_TID;
  wire axis_splitter_0_m_axis0_TLAST;
  wire [7:0]axis_splitter_0_m_axis0_TUSER;
  wire axis_splitter_0_m_axis0_TVALID;
  wire [127:0]axis_splitter_0_m_axis1_TDATA;
  wire [7:0]axis_splitter_0_m_axis1_TID;
  wire axis_splitter_0_m_axis1_TLAST;
  wire [7:0]axis_splitter_0_m_axis1_TUSER;
  wire axis_splitter_0_m_axis1_TVALID;
  wire [127:0]axis_splitter_1_m_axis0_TDATA;
  wire [7:0]axis_splitter_1_m_axis0_TID;
  wire axis_splitter_1_m_axis0_TLAST;
  wire [7:0]axis_splitter_1_m_axis0_TUSER;
  wire axis_splitter_1_m_axis0_TVALID;
  wire [127:0]axis_splitter_1_m_axis1_TDATA;
  wire [7:0]axis_splitter_1_m_axis1_TID;
  wire axis_splitter_1_m_axis1_TLAST;
  wire [7:0]axis_splitter_1_m_axis1_TUSER;
  wire axis_splitter_1_m_axis1_TVALID;
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
  wire [127:0]conj_1_m_axis_TDATA;
  wire [7:0]conj_1_m_axis_TID;
  wire conj_1_m_axis_TLAST;
  wire [7:0]conj_1_m_axis_TUSER;
  wire conj_1_m_axis_TVALID;
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
  wire cp_rm_0_o_symbol;
  wire [127:0]delay_0_m_axis_TDATA;
  wire [7:0]delay_0_m_axis_TID;
  wire delay_0_m_axis_TLAST;
  wire [7:0]delay_0_m_axis_TUSER;
  wire delay_0_m_axis_TVALID;
  wire [127:0]delay_1_m_axis_TDATA;
  wire [7:0]delay_1_m_axis_TID;
  wire delay_1_m_axis_TLAST;
  wire [7:0]delay_1_m_axis_TUSER;
  wire delay_1_m_axis_TVALID;
  wire i_select_0_1;
  wire [127:0]mux_0_m_axis_TDATA;
  wire mux_0_m_axis_TLAST;
  wire mux_0_m_axis_TREADY;
  wire [15:0]mux_0_m_axis_TSTRB;
  wire mux_0_m_axis_TVALID;
  wire [127:0]s_axis_0_1_TDATA;
  wire s_axis_0_1_TLAST;
  wire s_axis_0_1_TVALID;
  wire s_axis_aclk_0_1;
  wire s_axis_aresetn_0_1;
  wire [31:0]scale_0_m_axis_TDATA;
  wire scale_0_m_axis_TVALID;
  wire scale_0_o_negative_freq;
  wire [63:0]sum_0_m_axis_TDATA;
  wire [7:0]sum_0_m_axis_TID;
  wire sum_0_m_axis_TLAST;
  wire [7:0]sum_0_m_axis_TUSER;
  wire sum_0_m_axis_TVALID;
  wire [127:0]tlast_symbol_0_m_axis_TDATA;
  wire tlast_symbol_0_m_axis_TLAST;
  wire tlast_symbol_0_m_axis_TVALID;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;

  assign i_select_0_1 = bypass;
  assign m_axis_tdata[127:0] = mux_0_m_axis_TDATA;
  assign m_axis_tlast = mux_0_m_axis_TLAST;
  assign m_axis_tstrb[15:0] = mux_0_m_axis_TSTRB;
  assign m_axis_tvalid = mux_0_m_axis_TVALID;
  assign mux_0_m_axis_TREADY = m_axis_tready;
  assign s_axis_0_1_TDATA = s_axis_tdata[127:0];
  assign s_axis_0_1_TLAST = s_axis_tlast;
  assign s_axis_0_1_TVALID = s_axis_tvalid;
  assign s_axis_aclk_0_1 = axis_aclk;
  assign s_axis_aresetn_0_1 = axis_aresetn;
  Mixer_imp_YGLQ12 Mixer
       (.i_negative_freq(util_vector_logic_0_Res),
        .m_axis_0_tdata(Mixer_m_axis_0_TDATA),
        .m_axis_0_tlast(Mixer_m_axis_0_TLAST),
        .m_axis_0_tvalid(Mixer_m_axis_0_TVALID),
        .s_axis0_tdata(conj_1_m_axis_TDATA),
        .s_axis0_tid(conj_1_m_axis_TID),
        .s_axis0_tlast(conj_1_m_axis_TLAST),
        .s_axis0_tuser(conj_1_m_axis_TUSER),
        .s_axis0_tvalid(conj_1_m_axis_TVALID),
        .s_axis_aclk_0(s_axis_aclk_0_1),
        .s_axis_aresetn_0(s_axis_aresetn_0_1),
        .s_axis_tdata(scale_0_m_axis_TDATA),
        .s_axis_tvalid(scale_0_m_axis_TVALID));
  cfo_correction_inst_1_angle_0_0 angle_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis_tdata(angle_0_m_axis_TDATA),
        .m_axis_tvalid(angle_0_m_axis_TVALID),
        .s_axis_tdata(sum_0_m_axis_TDATA),
        .s_axis_tid(sum_0_m_axis_TID),
        .s_axis_tlast(sum_0_m_axis_TLAST),
        .s_axis_tuser(sum_0_m_axis_TUSER),
        .s_axis_tvalid(sum_0_m_axis_TVALID));
  cfo_correction_inst_1_axis_data_fifo_0_0 axis_data_fifo_0
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
  cfo_correction_inst_1_axis_data_fifo_1_0 axis_data_fifo_1
       (.m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tid(axis_data_fifo_1_M_AXIS_TID),
        .m_axis_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_1_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(axis_splitter_1_m_axis0_TDATA),
        .s_axis_tid(axis_splitter_1_m_axis0_TID),
        .s_axis_tlast(axis_splitter_1_m_axis0_TLAST),
        .s_axis_tuser(axis_splitter_1_m_axis0_TUSER),
        .s_axis_tvalid(axis_splitter_1_m_axis0_TVALID));
  cfo_correction_inst_1_axis_splitter_0_0 axis_splitter_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis0_tdata(axis_splitter_0_m_axis0_TDATA),
        .m_axis0_tid(axis_splitter_0_m_axis0_TID),
        .m_axis0_tlast(axis_splitter_0_m_axis0_TLAST),
        .m_axis0_tuser(axis_splitter_0_m_axis0_TUSER),
        .m_axis0_tvalid(axis_splitter_0_m_axis0_TVALID),
        .m_axis1_tdata(axis_splitter_0_m_axis1_TDATA),
        .m_axis1_tid(axis_splitter_0_m_axis1_TID),
        .m_axis1_tlast(axis_splitter_0_m_axis1_TLAST),
        .m_axis1_tuser(axis_splitter_0_m_axis1_TUSER),
        .m_axis1_tvalid(axis_splitter_0_m_axis1_TVALID),
        .s_axis_tdata(cp_rm_0_m_axis_TDATA),
        .s_axis_tid(cp_rm_0_m_axis_TID),
        .s_axis_tlast(cp_rm_0_m_axis_TLAST),
        .s_axis_tuser(cp_rm_0_m_axis_TUSER),
        .s_axis_tvalid(cp_rm_0_m_axis_TVALID));
  cfo_correction_inst_1_axis_splitter_1_0 axis_splitter_1
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis0_tdata(axis_splitter_1_m_axis0_TDATA),
        .m_axis0_tid(axis_splitter_1_m_axis0_TID),
        .m_axis0_tlast(axis_splitter_1_m_axis0_TLAST),
        .m_axis0_tuser(axis_splitter_1_m_axis0_TUSER),
        .m_axis0_tvalid(axis_splitter_1_m_axis0_TVALID),
        .m_axis1_tdata(axis_splitter_1_m_axis1_TDATA),
        .m_axis1_tid(axis_splitter_1_m_axis1_TID),
        .m_axis1_tlast(axis_splitter_1_m_axis1_TLAST),
        .m_axis1_tuser(axis_splitter_1_m_axis1_TUSER),
        .m_axis1_tvalid(axis_splitter_1_m_axis1_TVALID),
        .s_axis_tdata(axis_splitter_0_m_axis1_TDATA),
        .s_axis_tid(axis_splitter_0_m_axis1_TID),
        .s_axis_tlast(axis_splitter_0_m_axis1_TLAST),
        .s_axis_tuser(axis_splitter_0_m_axis1_TUSER),
        .s_axis_tvalid(axis_splitter_0_m_axis1_TVALID));
  cfo_correction_inst_1_complex_mult_0_0 complex_mult_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis_tdata(complex_mult_0_m_axis_TDATA),
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
        .s_axis1_tvalid(cp_rm2_0_m_axis_TVALID));
  cfo_correction_inst_1_conj_0_1 conj_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .i_negative_freq(xlconstant_0_dout),
        .m_axis_tdata(conj_0_m_axis_TDATA),
        .m_axis_tid(conj_0_m_axis_TID),
        .m_axis_tlast(conj_0_m_axis_TLAST),
        .m_axis_tuser(conj_0_m_axis_TUSER),
        .m_axis_tvalid(conj_0_m_axis_TVALID),
        .s_axis_tdata(cp_rm_0_m_cp_axis_TDATA),
        .s_axis_tid(cp_rm_0_m_cp_axis_TID),
        .s_axis_tlast(cp_rm_0_m_cp_axis_TLAST),
        .s_axis_tuser(cp_rm_0_m_cp_axis_TUSER),
        .s_axis_tvalid(cp_rm_0_m_cp_axis_TVALID));
  cfo_correction_inst_1_conj_1_0 conj_1
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .i_negative_freq(xlconstant_0_dout),
        .m_axis_tdata(conj_1_m_axis_TDATA),
        .m_axis_tid(conj_1_m_axis_TID),
        .m_axis_tlast(conj_1_m_axis_TLAST),
        .m_axis_tuser(conj_1_m_axis_TUSER),
        .m_axis_tvalid(conj_1_m_axis_TVALID),
        .s_axis_tdata(delay_1_m_axis_TDATA),
        .s_axis_tid(delay_1_m_axis_TID),
        .s_axis_tlast(delay_1_m_axis_TLAST),
        .s_axis_tuser(delay_1_m_axis_TUSER),
        .s_axis_tvalid(delay_1_m_axis_TVALID));
  cfo_correction_inst_1_cp_rm2_0_0 cp_rm2_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .i_symbol(cp_rm_0_o_symbol),
        .m_axis_tdata(cp_rm2_0_m_axis_TDATA),
        .m_axis_tid(cp_rm2_0_m_axis_TID),
        .m_axis_tlast(cp_rm2_0_m_axis_TLAST),
        .m_axis_tuser(cp_rm2_0_m_axis_TUSER),
        .m_axis_tvalid(cp_rm2_0_m_axis_TVALID),
        .s_axis_tdata(axis_splitter_0_m_axis0_TDATA),
        .s_axis_tid(axis_splitter_0_m_axis0_TID),
        .s_axis_tlast(axis_splitter_0_m_axis0_TLAST),
        .s_axis_tuser(axis_splitter_0_m_axis0_TUSER),
        .s_axis_tvalid(axis_splitter_0_m_axis0_TVALID));
  cfo_correction_inst_1_cp_rm_0_0 cp_rm_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis_tdata(cp_rm_0_m_axis_TDATA),
        .m_axis_tid(cp_rm_0_m_axis_TID),
        .m_axis_tlast(cp_rm_0_m_axis_TLAST),
        .m_axis_tuser(cp_rm_0_m_axis_TUSER),
        .m_axis_tvalid(cp_rm_0_m_axis_TVALID),
        .m_cp_axis_tdata(cp_rm_0_m_cp_axis_TDATA),
        .m_cp_axis_tid(cp_rm_0_m_cp_axis_TID),
        .m_cp_axis_tlast(cp_rm_0_m_cp_axis_TLAST),
        .m_cp_axis_tuser(cp_rm_0_m_cp_axis_TUSER),
        .m_cp_axis_tvalid(cp_rm_0_m_cp_axis_TVALID),
        .o_symbol(cp_rm_0_o_symbol),
        .s_axis_tdata(s_axis_0_1_TDATA),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(s_axis_0_1_TLAST),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(s_axis_0_1_TVALID));
  cfo_correction_inst_1_delay_0_0 delay_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .i_symbol(cp_rm_0_o_symbol),
        .m_axis_tdata(delay_0_m_axis_TDATA),
        .m_axis_tid(delay_0_m_axis_TID),
        .m_axis_tlast(delay_0_m_axis_TLAST),
        .m_axis_tuser(delay_0_m_axis_TUSER),
        .m_axis_tvalid(delay_0_m_axis_TVALID),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tid(axis_data_fifo_0_M_AXIS_TID),
        .s_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
  cfo_correction_inst_1_delay_1_0 delay_1
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .i_symbol(cp_rm_0_o_symbol),
        .m_axis_tdata(delay_1_m_axis_TDATA),
        .m_axis_tid(delay_1_m_axis_TID),
        .m_axis_tlast(delay_1_m_axis_TLAST),
        .m_axis_tuser(delay_1_m_axis_TUSER),
        .m_axis_tvalid(delay_1_m_axis_TVALID),
        .s_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .s_axis_tid(axis_data_fifo_1_M_AXIS_TID),
        .s_axis_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .s_axis_tuser(axis_data_fifo_1_M_AXIS_TUSER),
        .s_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID));
  cfo_correction_inst_1_mux_0_0 mux_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .i_select(i_select_0_1),
        .m_axis_tdata(mux_0_m_axis_TDATA),
        .m_axis_tlast(mux_0_m_axis_TLAST),
        .m_axis_tready(mux_0_m_axis_TREADY),
        .m_axis_tstrb(mux_0_m_axis_TSTRB),
        .m_axis_tvalid(mux_0_m_axis_TVALID),
        .s_axis0_tdata(tlast_symbol_0_m_axis_TDATA),
        .s_axis0_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis0_tlast(tlast_symbol_0_m_axis_TLAST),
        .s_axis0_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis0_tvalid(tlast_symbol_0_m_axis_TVALID),
        .s_axis1_tdata(axis_splitter_1_m_axis1_TDATA),
        .s_axis1_tid(axis_splitter_1_m_axis1_TID),
        .s_axis1_tlast(axis_splitter_1_m_axis1_TLAST),
        .s_axis1_tuser(axis_splitter_1_m_axis1_TUSER),
        .s_axis1_tvalid(axis_splitter_1_m_axis1_TVALID));
  cfo_correction_inst_1_scale_0_0 scale_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .i_symbol(cp_rm_0_o_symbol),
        .m_axis_tdata(scale_0_m_axis_TDATA),
        .m_axis_tvalid(scale_0_m_axis_TVALID),
        .o_negative_freq(scale_0_o_negative_freq),
        .s_axis_tdata(angle_0_m_axis_TDATA),
        .s_axis_tvalid(angle_0_m_axis_TVALID));
  cfo_correction_inst_1_sum_0_0 sum_0
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
  cfo_correction_inst_1_tlast_symbol_0_0 tlast_symbol_0
       (.axis_aclk(s_axis_aclk_0_1),
        .axis_aresetn(s_axis_aresetn_0_1),
        .m_axis_tdata(tlast_symbol_0_m_axis_TDATA),
        .m_axis_tlast(tlast_symbol_0_m_axis_TLAST),
        .m_axis_tvalid(tlast_symbol_0_m_axis_TVALID),
        .s_axis_tdata(Mixer_m_axis_0_TDATA),
        .s_axis_tlast(Mixer_m_axis_0_TLAST),
        .s_axis_tvalid(Mixer_m_axis_0_TVALID));
  cfo_correction_inst_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(scale_0_o_negative_freq),
        .Res(util_vector_logic_0_Res));
  cfo_correction_inst_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
