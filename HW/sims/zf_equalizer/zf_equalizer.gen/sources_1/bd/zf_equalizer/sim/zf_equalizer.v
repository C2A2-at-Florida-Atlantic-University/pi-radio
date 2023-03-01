//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Wed Mar  1 11:33:33 2023
//Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
//Command     : generate_target zf_equalizer.bd
//Design      : zf_equalizer
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Normalized_ZF_stage_1_imp_11U26K1
   (aclk,
    aresetn,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tvalid,
    o_read_tx_pilots,
    o_valid_frame,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tvalid,
    s_pilot_tx_axis_tdata,
    s_pilot_tx_axis_tlast,
    s_pilot_tx_axis_tvalid);
  input aclk;
  input aresetn;
  output [127:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tvalid;
  output o_read_tx_pilots;
  output o_valid_frame;
  input [127:0]s_axis_tdata;
  input s_axis_tlast;
  input s_axis_tvalid;
  input [31:0]s_pilot_tx_axis_tdata;
  input s_pilot_tx_axis_tlast;
  input s_pilot_tx_axis_tvalid;

  wire [127:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TVALID;
  wire [31:0]Conn2_TDATA;
  wire Conn2_TLAST;
  wire Conn2_TVALID;
  wire [127:0]Conn3_TDATA;
  wire Conn3_TLAST;
  wire Conn3_TVALID;
  wire aclk_1;
  wire aresetn_1;
  wire [127:0]channel_estimate_0_m_axis_TDATA;
  wire channel_estimate_0_m_axis_TLAST;
  wire channel_estimate_0_m_axis_TVALID;
  wire [31:0]channel_estimate_0_m_ch_est_axis_TDATA;
  wire channel_estimate_0_m_ch_est_axis_TLAST;
  wire channel_estimate_0_m_ch_est_axis_TVALID;
  wire channel_estimate_0_o_read_tx_pilots;
  wire [127:0]pilot_removal_0_m_axis_TDATA;
  wire pilot_removal_0_m_axis_TLAST;
  wire pilot_removal_0_m_axis_TVALID;
  wire [31:0]pilot_removal_0_m_pilot_axis_TDATA;
  wire pilot_removal_0_m_pilot_axis_TLAST;
  wire pilot_removal_0_m_pilot_axis_TVALID;
  wire pilot_removal_0_o_valid_frame;

  assign Conn1_TDATA = s_axis_tdata[127:0];
  assign Conn1_TLAST = s_axis_tlast;
  assign Conn1_TVALID = s_axis_tvalid;
  assign Conn2_TDATA = s_pilot_tx_axis_tdata[31:0];
  assign Conn2_TLAST = s_pilot_tx_axis_tlast;
  assign Conn2_TVALID = s_pilot_tx_axis_tvalid;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign m_axis_tdata[127:0] = Conn3_TDATA;
  assign m_axis_tlast = Conn3_TLAST;
  assign m_axis_tvalid = Conn3_TVALID;
  assign o_read_tx_pilots = channel_estimate_0_o_read_tx_pilots;
  assign o_valid_frame = pilot_removal_0_o_valid_frame;
  zf_equalizer_channel_estimate_0_0 channel_estimate_0
       (.axis_aclk(aclk_1),
        .axis_aresetn(aresetn_1),
        .m_axis_tdata(channel_estimate_0_m_axis_TDATA),
        .m_axis_tlast(channel_estimate_0_m_axis_TLAST),
        .m_axis_tvalid(channel_estimate_0_m_axis_TVALID),
        .m_ch_est_axis_tdata(channel_estimate_0_m_ch_est_axis_TDATA),
        .m_ch_est_axis_tlast(channel_estimate_0_m_ch_est_axis_TLAST),
        .m_ch_est_axis_tvalid(channel_estimate_0_m_ch_est_axis_TVALID),
        .o_read_tx_pilots(channel_estimate_0_o_read_tx_pilots),
        .s_data_axis_tdata(pilot_removal_0_m_axis_TDATA),
        .s_data_axis_tlast(pilot_removal_0_m_axis_TLAST),
        .s_data_axis_tvalid(pilot_removal_0_m_axis_TVALID),
        .s_pilot_rx_axis_tdata(pilot_removal_0_m_pilot_axis_TDATA),
        .s_pilot_rx_axis_tlast(pilot_removal_0_m_pilot_axis_TLAST),
        .s_pilot_rx_axis_tvalid(pilot_removal_0_m_pilot_axis_TVALID),
        .s_pilot_tx_axis_tdata(Conn2_TDATA),
        .s_pilot_tx_axis_tlast(Conn2_TLAST),
        .s_pilot_tx_axis_tvalid(Conn2_TVALID));
  zf_equalizer_equalization_0_0 equalization_0
       (.axis_aclk(aclk_1),
        .axis_aresetn(aresetn_1),
        .m_axis_tdata(Conn3_TDATA),
        .m_axis_tlast(Conn3_TLAST),
        .m_axis_tvalid(Conn3_TVALID),
        .s_ch_est_axis_tdata(channel_estimate_0_m_ch_est_axis_TDATA),
        .s_ch_est_axis_tlast(channel_estimate_0_m_ch_est_axis_TLAST),
        .s_ch_est_axis_tvalid(channel_estimate_0_m_ch_est_axis_TVALID),
        .s_din_axis_tdata(channel_estimate_0_m_axis_TDATA),
        .s_din_axis_tlast(channel_estimate_0_m_axis_TLAST),
        .s_din_axis_tvalid(channel_estimate_0_m_axis_TVALID));
  zf_equalizer_pilot_removal_0_0 pilot_removal_0
       (.axis_aclk(aclk_1),
        .axis_aresetn(aresetn_1),
        .m_axis_tdata(pilot_removal_0_m_axis_TDATA),
        .m_axis_tlast(pilot_removal_0_m_axis_TLAST),
        .m_axis_tvalid(pilot_removal_0_m_axis_TVALID),
        .m_pilot_axis_tdata(pilot_removal_0_m_pilot_axis_TDATA),
        .m_pilot_axis_tlast(pilot_removal_0_m_pilot_axis_TLAST),
        .m_pilot_axis_tvalid(pilot_removal_0_m_pilot_axis_TVALID),
        .o_valid_frame(pilot_removal_0_o_valid_frame),
        .s_axis_tdata(Conn1_TDATA),
        .s_axis_tlast(Conn1_TLAST),
        .s_axis_tvalid(Conn1_TVALID));
endmodule

(* CORE_GENERATION_INFO = "zf_equalizer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zf_equalizer,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "zf_equalizer.hwdef" *) 
module zf_equalizer
   (aclk,
    aresetn,
    bypass,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tstrb,
    m_axis_tvalid,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arsize,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awsize,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rlast,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axis_tdata,
    s_axis_tid,
    s_axis_tlast,
    s_axis_tuser,
    s_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF m_axis:s_axis:s_axi, ASSOCIATED_RESET aresetn, CLK_DOMAIN zf_equalizer_aclk, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  input bypass;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, CLK_DOMAIN zf_equalizer_aclk, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [95:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) output [15:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 15, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN zf_equalizer_aclk, DATA_WIDTH 32, FREQ_HZ 249997498, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [11:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLOCK" *) input s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [11:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLOCK" *) input s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, CLK_DOMAIN zf_equalizer_aclk, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [7:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [7:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;

  wire [127:0]Normalized_ZF_stage_1_m_axis_TDATA;
  wire Normalized_ZF_stage_1_m_axis_TLAST;
  wire Normalized_ZF_stage_1_m_axis_TVALID;
  wire Normalized_ZF_stage_1_o_read_tx_pilots;
  wire Normalized_ZF_stage_1_o_valid_frame;
  wire [11:0]S_AXI_0_1_ARADDR;
  wire [1:0]S_AXI_0_1_ARBURST;
  wire [3:0]S_AXI_0_1_ARCACHE;
  wire [7:0]S_AXI_0_1_ARLEN;
  wire S_AXI_0_1_ARLOCK;
  wire [2:0]S_AXI_0_1_ARPROT;
  wire S_AXI_0_1_ARREADY;
  wire [2:0]S_AXI_0_1_ARSIZE;
  wire S_AXI_0_1_ARVALID;
  wire [11:0]S_AXI_0_1_AWADDR;
  wire [1:0]S_AXI_0_1_AWBURST;
  wire [3:0]S_AXI_0_1_AWCACHE;
  wire [7:0]S_AXI_0_1_AWLEN;
  wire S_AXI_0_1_AWLOCK;
  wire [2:0]S_AXI_0_1_AWPROT;
  wire S_AXI_0_1_AWREADY;
  wire [2:0]S_AXI_0_1_AWSIZE;
  wire S_AXI_0_1_AWVALID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [31:0]S_AXI_0_1_RDATA;
  wire S_AXI_0_1_RLAST;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [31:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WLAST;
  wire S_AXI_0_1_WREADY;
  wire [3:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire aclk_0_1;
  wire aresetn_0_1;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [127:0]axis_splitter_0_m_axis0_TDATA;
  wire axis_splitter_0_m_axis0_TLAST;
  wire axis_splitter_0_m_axis0_TVALID;
  wire [127:0]axis_splitter_0_m_axis1_TDATA;
  wire [7:0]axis_splitter_0_m_axis1_TID;
  wire axis_splitter_0_m_axis1_TLAST;
  wire [7:0]axis_splitter_0_m_axis1_TUSER;
  wire axis_splitter_0_m_axis1_TVALID;
  wire i_select_0_1;
  wire [95:0]mux_0_m_axis_TDATA;
  wire mux_0_m_axis_TLAST;
  wire mux_0_m_axis_TREADY;
  wire [15:0]mux_0_m_axis_TSTRB;
  wire mux_0_m_axis_TVALID;
  wire [31:0]pilot_scheduler_0_BRAM_PORT_ADDR;
  wire pilot_scheduler_0_BRAM_PORT_CLK;
  wire [31:0]pilot_scheduler_0_BRAM_PORT_DIN;
  wire [31:0]pilot_scheduler_0_BRAM_PORT_DOUT;
  wire pilot_scheduler_0_BRAM_PORT_EN;
  wire [0:0]pilot_scheduler_0_BRAM_PORT_WE;
  wire [31:0]pilot_scheduler_0_M_AXIS_1_TDATA;
  wire pilot_scheduler_0_M_AXIS_1_TLAST;
  wire pilot_scheduler_0_M_AXIS_1_TVALID;
  wire [95:0]polar_to_cartesian_c_0_m_axis_TDATA;
  wire polar_to_cartesian_c_0_m_axis_TLAST;
  wire polar_to_cartesian_c_0_m_axis_TVALID;
  wire [127:0]s_axis_0_1_TDATA;
  wire [7:0]s_axis_0_1_TID;
  wire s_axis_0_1_TLAST;
  wire [7:0]s_axis_0_1_TUSER;
  wire s_axis_0_1_TVALID;

  assign S_AXI_0_1_ARADDR = s_axi_araddr[11:0];
  assign S_AXI_0_1_ARBURST = s_axi_arburst[1:0];
  assign S_AXI_0_1_ARCACHE = s_axi_arcache[3:0];
  assign S_AXI_0_1_ARLEN = s_axi_arlen[7:0];
  assign S_AXI_0_1_ARLOCK = s_axi_arlock;
  assign S_AXI_0_1_ARPROT = s_axi_arprot[2:0];
  assign S_AXI_0_1_ARSIZE = s_axi_arsize[2:0];
  assign S_AXI_0_1_ARVALID = s_axi_arvalid;
  assign S_AXI_0_1_AWADDR = s_axi_awaddr[11:0];
  assign S_AXI_0_1_AWBURST = s_axi_awburst[1:0];
  assign S_AXI_0_1_AWCACHE = s_axi_awcache[3:0];
  assign S_AXI_0_1_AWLEN = s_axi_awlen[7:0];
  assign S_AXI_0_1_AWLOCK = s_axi_awlock;
  assign S_AXI_0_1_AWPROT = s_axi_awprot[2:0];
  assign S_AXI_0_1_AWSIZE = s_axi_awsize[2:0];
  assign S_AXI_0_1_AWVALID = s_axi_awvalid;
  assign S_AXI_0_1_BREADY = s_axi_bready;
  assign S_AXI_0_1_RREADY = s_axi_rready;
  assign S_AXI_0_1_WDATA = s_axi_wdata[31:0];
  assign S_AXI_0_1_WLAST = s_axi_wlast;
  assign S_AXI_0_1_WSTRB = s_axi_wstrb[3:0];
  assign S_AXI_0_1_WVALID = s_axi_wvalid;
  assign aclk_0_1 = aclk;
  assign aresetn_0_1 = aresetn;
  assign i_select_0_1 = bypass;
  assign m_axis_tdata[95:0] = mux_0_m_axis_TDATA;
  assign m_axis_tlast = mux_0_m_axis_TLAST;
  assign m_axis_tstrb[15:0] = mux_0_m_axis_TSTRB;
  assign m_axis_tvalid = mux_0_m_axis_TVALID;
  assign mux_0_m_axis_TREADY = m_axis_tready;
  assign s_axi_arready = S_AXI_0_1_ARREADY;
  assign s_axi_awready = S_AXI_0_1_AWREADY;
  assign s_axi_bresp[1:0] = S_AXI_0_1_BRESP;
  assign s_axi_bvalid = S_AXI_0_1_BVALID;
  assign s_axi_rdata[31:0] = S_AXI_0_1_RDATA;
  assign s_axi_rlast = S_AXI_0_1_RLAST;
  assign s_axi_rresp[1:0] = S_AXI_0_1_RRESP;
  assign s_axi_rvalid = S_AXI_0_1_RVALID;
  assign s_axi_wready = S_AXI_0_1_WREADY;
  assign s_axis_0_1_TDATA = s_axis_tdata[127:0];
  assign s_axis_0_1_TID = s_axis_tid[7:0];
  assign s_axis_0_1_TLAST = s_axis_tlast;
  assign s_axis_0_1_TUSER = s_axis_tuser[7:0];
  assign s_axis_0_1_TVALID = s_axis_tvalid;
  Normalized_ZF_stage_1_imp_11U26K1 Normalized_ZF_stage_1
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(Normalized_ZF_stage_1_m_axis_TDATA),
        .m_axis_tlast(Normalized_ZF_stage_1_m_axis_TLAST),
        .m_axis_tvalid(Normalized_ZF_stage_1_m_axis_TVALID),
        .o_read_tx_pilots(Normalized_ZF_stage_1_o_read_tx_pilots),
        .o_valid_frame(Normalized_ZF_stage_1_o_valid_frame),
        .s_axis_tdata(axis_splitter_0_m_axis0_TDATA),
        .s_axis_tlast(axis_splitter_0_m_axis0_TLAST),
        .s_axis_tvalid(axis_splitter_0_m_axis0_TVALID),
        .s_pilot_tx_axis_tdata(pilot_scheduler_0_M_AXIS_1_TDATA),
        .s_pilot_tx_axis_tlast(pilot_scheduler_0_M_AXIS_1_TLAST),
        .s_pilot_tx_axis_tvalid(pilot_scheduler_0_M_AXIS_1_TVALID));
  zf_equalizer_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(aclk_0_1),
        .s_axi_araddr(S_AXI_0_1_ARADDR),
        .s_axi_arburst(S_AXI_0_1_ARBURST),
        .s_axi_arcache(S_AXI_0_1_ARCACHE),
        .s_axi_aresetn(aresetn_0_1),
        .s_axi_arlen(S_AXI_0_1_ARLEN),
        .s_axi_arlock(S_AXI_0_1_ARLOCK),
        .s_axi_arprot(S_AXI_0_1_ARPROT),
        .s_axi_arready(S_AXI_0_1_ARREADY),
        .s_axi_arsize(S_AXI_0_1_ARSIZE),
        .s_axi_arvalid(S_AXI_0_1_ARVALID),
        .s_axi_awaddr(S_AXI_0_1_AWADDR),
        .s_axi_awburst(S_AXI_0_1_AWBURST),
        .s_axi_awcache(S_AXI_0_1_AWCACHE),
        .s_axi_awlen(S_AXI_0_1_AWLEN),
        .s_axi_awlock(S_AXI_0_1_AWLOCK),
        .s_axi_awprot(S_AXI_0_1_AWPROT),
        .s_axi_awready(S_AXI_0_1_AWREADY),
        .s_axi_awsize(S_AXI_0_1_AWSIZE),
        .s_axi_awvalid(S_AXI_0_1_AWVALID),
        .s_axi_bready(S_AXI_0_1_BREADY),
        .s_axi_bresp(S_AXI_0_1_BRESP),
        .s_axi_bvalid(S_AXI_0_1_BVALID),
        .s_axi_rdata(S_AXI_0_1_RDATA),
        .s_axi_rlast(S_AXI_0_1_RLAST),
        .s_axi_rready(S_AXI_0_1_RREADY),
        .s_axi_rresp(S_AXI_0_1_RRESP),
        .s_axi_rvalid(S_AXI_0_1_RVALID),
        .s_axi_wdata(S_AXI_0_1_WDATA),
        .s_axi_wlast(S_AXI_0_1_WLAST),
        .s_axi_wready(S_AXI_0_1_WREADY),
        .s_axi_wstrb(S_AXI_0_1_WSTRB),
        .s_axi_wvalid(S_AXI_0_1_WVALID));
  zf_equalizer_axis_splitter_0_0 axis_splitter_0
       (.axis_aclk(aclk_0_1),
        .axis_aresetn(aresetn_0_1),
        .m_axis0_tdata(axis_splitter_0_m_axis0_TDATA),
        .m_axis0_tlast(axis_splitter_0_m_axis0_TLAST),
        .m_axis0_tvalid(axis_splitter_0_m_axis0_TVALID),
        .m_axis1_tdata(axis_splitter_0_m_axis1_TDATA),
        .m_axis1_tid(axis_splitter_0_m_axis1_TID),
        .m_axis1_tlast(axis_splitter_0_m_axis1_TLAST),
        .m_axis1_tuser(axis_splitter_0_m_axis1_TUSER),
        .m_axis1_tvalid(axis_splitter_0_m_axis1_TVALID),
        .s_axis_tdata(s_axis_0_1_TDATA),
        .s_axis_tid(s_axis_0_1_TID),
        .s_axis_tlast(s_axis_0_1_TLAST),
        .s_axis_tuser(s_axis_0_1_TUSER),
        .s_axis_tvalid(s_axis_0_1_TVALID));
  zf_equalizer_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(pilot_scheduler_0_BRAM_PORT_ADDR[13:0]),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(pilot_scheduler_0_BRAM_PORT_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(pilot_scheduler_0_BRAM_PORT_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(pilot_scheduler_0_BRAM_PORT_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(pilot_scheduler_0_BRAM_PORT_EN),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE[0]),
        .web(pilot_scheduler_0_BRAM_PORT_WE));
  zf_equalizer_mux_0_0 mux_0
       (.axis_aclk(aclk_0_1),
        .axis_aresetn(aresetn_0_1),
        .i_select(i_select_0_1),
        .m_axis_tdata(mux_0_m_axis_TDATA),
        .m_axis_tlast(mux_0_m_axis_TLAST),
        .m_axis_tready(mux_0_m_axis_TREADY),
        .m_axis_tstrb(mux_0_m_axis_TSTRB),
        .m_axis_tvalid(mux_0_m_axis_TVALID),
        .s_axis0_tdata(polar_to_cartesian_c_0_m_axis_TDATA),
        .s_axis0_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis0_tlast(polar_to_cartesian_c_0_m_axis_TLAST),
        .s_axis0_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis0_tvalid(polar_to_cartesian_c_0_m_axis_TVALID),
        .s_axis1_tdata(axis_splitter_0_m_axis1_TDATA[95:0]),
        .s_axis1_tid(axis_splitter_0_m_axis1_TID),
        .s_axis1_tlast(axis_splitter_0_m_axis1_TLAST),
        .s_axis1_tuser(axis_splitter_0_m_axis1_TUSER),
        .s_axis1_tvalid(axis_splitter_0_m_axis1_TVALID));
  zf_equalizer_pilot_scheduler_0_0 pilot_scheduler_0
       (.BRAM_PORT_addr(pilot_scheduler_0_BRAM_PORT_ADDR),
        .BRAM_PORT_clk(pilot_scheduler_0_BRAM_PORT_CLK),
        .BRAM_PORT_din(pilot_scheduler_0_BRAM_PORT_DIN),
        .BRAM_PORT_dout(pilot_scheduler_0_BRAM_PORT_DOUT),
        .BRAM_PORT_en(pilot_scheduler_0_BRAM_PORT_EN),
        .BRAM_PORT_we(pilot_scheduler_0_BRAM_PORT_WE),
        .M_AXIS_1_tdata(pilot_scheduler_0_M_AXIS_1_TDATA),
        .M_AXIS_1_tlast(pilot_scheduler_0_M_AXIS_1_TLAST),
        .M_AXIS_1_tready(1'b1),
        .M_AXIS_1_tvalid(pilot_scheduler_0_M_AXIS_1_TVALID),
        .M_AXIS_2_tready(1'b1),
        .M_AXIS_3_tready(1'b1),
        .axis_aclk(aclk_0_1),
        .axis_aresetn(aresetn_0_1),
        .i_stage_1_en(Normalized_ZF_stage_1_o_read_tx_pilots),
        .i_stage_2_en(1'b0),
        .i_stage_3_en(1'b0),
        .i_valid_frame(Normalized_ZF_stage_1_o_valid_frame));
  zf_equalizer_polar_to_cartesian_c_0_0 polar_to_cartesian
       (.axis_aclk(aclk_0_1),
        .axis_aresetn(aresetn_0_1),
        .m_axis_tdata(polar_to_cartesian_c_0_m_axis_TDATA),
        .m_axis_tlast(polar_to_cartesian_c_0_m_axis_TLAST),
        .m_axis_tvalid(polar_to_cartesian_c_0_m_axis_TVALID),
        .s_axis_tdata(Normalized_ZF_stage_1_m_axis_TDATA),
        .s_axis_tlast(Normalized_ZF_stage_1_m_axis_TLAST),
        .s_axis_tvalid(Normalized_ZF_stage_1_m_axis_TVALID));
endmodule
