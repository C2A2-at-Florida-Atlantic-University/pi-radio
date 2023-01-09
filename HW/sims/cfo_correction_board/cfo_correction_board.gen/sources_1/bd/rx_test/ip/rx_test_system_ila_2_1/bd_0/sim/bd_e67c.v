//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_e67c.bd
//Design : bd_e67c
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_e67c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_e67c,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "rx_test_system_ila_2_1.hwdef" *) 
module bd_e67c
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tstrb,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXIS_tdata,
    SLOT_2_AXIS_tlast,
    SLOT_2_AXIS_tvalid,
    SLOT_3_AXIS_tdata,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tready,
    SLOT_3_AXIS_tstrb,
    SLOT_3_AXIS_tvalid,
    SLOT_4_BRAM_addr,
    SLOT_4_BRAM_clk,
    SLOT_4_BRAM_dout,
    SLOT_4_BRAM_rst,
    clk,
    probe0,
    probe1,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]SLOT_0_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input SLOT_0_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *) input SLOT_0_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TSTRB" *) input [15:0]SLOT_0_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input SLOT_0_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]SLOT_1_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXIS, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]SLOT_2_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST" *) input SLOT_2_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID" *) input SLOT_2_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXIS, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]SLOT_3_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TLAST" *) input SLOT_3_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TREADY" *) input SLOT_3_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TSTRB" *) input [15:0]SLOT_3_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TVALID" *) input SLOT_3_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_4_BRAM ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_BRAM, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, MODE MASTER, READ_LATENCY 1" *) input [13:0]SLOT_4_BRAM_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_4_BRAM CLK" *) input SLOT_4_BRAM_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_4_BRAM DOUT" *) input [127:0]SLOT_4_BRAM_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_4_BRAM RST" *) input SLOT_4_BRAM_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXIS:SLOT_3_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_1_pl_clk1, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [127:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TVALID;
  wire [127:0]Conn2_TDATA;
  wire Conn2_TLAST;
  wire Conn2_TVALID;
  wire [127:0]Conn3_TDATA;
  wire Conn3_TLAST;
  wire Conn3_TREADY;
  wire [15:0]Conn3_TSTRB;
  wire Conn3_TVALID;
  wire [127:0]Conn_TDATA;
  wire Conn_TLAST;
  wire Conn_TREADY;
  wire [15:0]Conn_TSTRB;
  wire Conn_TVALID;
  wire [13:0]SLOT_4_BRAM_addr_1;
  wire [127:0]SLOT_4_BRAM_dout_1;
  wire SLOT_4_BRAM_rst_1;
  wire clk_1;
  wire [127:0]net_slot_0_axis_tdata;
  wire net_slot_0_axis_tlast;
  wire net_slot_0_axis_tready;
  wire [15:0]net_slot_0_axis_tstrb;
  wire net_slot_0_axis_tvalid;
  wire [127:0]net_slot_1_axis_tdata;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tvalid;
  wire [127:0]net_slot_2_axis_tdata;
  wire net_slot_2_axis_tlast;
  wire net_slot_2_axis_tvalid;
  wire [127:0]net_slot_3_axis_tdata;
  wire net_slot_3_axis_tlast;
  wire net_slot_3_axis_tready;
  wire [15:0]net_slot_3_axis_tstrb;
  wire net_slot_3_axis_tvalid;
  wire [0:0]probe0_1;
  wire [0:0]probe1_1;
  wire resetn_1;

  assign Conn1_TDATA = SLOT_1_AXIS_tdata[127:0];
  assign Conn1_TLAST = SLOT_1_AXIS_tlast;
  assign Conn1_TVALID = SLOT_1_AXIS_tvalid;
  assign Conn2_TDATA = SLOT_2_AXIS_tdata[127:0];
  assign Conn2_TLAST = SLOT_2_AXIS_tlast;
  assign Conn2_TVALID = SLOT_2_AXIS_tvalid;
  assign Conn3_TDATA = SLOT_3_AXIS_tdata[127:0];
  assign Conn3_TLAST = SLOT_3_AXIS_tlast;
  assign Conn3_TREADY = SLOT_3_AXIS_tready;
  assign Conn3_TSTRB = SLOT_3_AXIS_tstrb[15:0];
  assign Conn3_TVALID = SLOT_3_AXIS_tvalid;
  assign Conn_TDATA = SLOT_0_AXIS_tdata[127:0];
  assign Conn_TLAST = SLOT_0_AXIS_tlast;
  assign Conn_TREADY = SLOT_0_AXIS_tready;
  assign Conn_TSTRB = SLOT_0_AXIS_tstrb[15:0];
  assign Conn_TVALID = SLOT_0_AXIS_tvalid;
  assign SLOT_4_BRAM_addr_1 = SLOT_4_BRAM_addr[13:0];
  assign SLOT_4_BRAM_dout_1 = SLOT_4_BRAM_dout[127:0];
  assign SLOT_4_BRAM_rst_1 = SLOT_4_BRAM_rst;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  assign probe1_1 = probe1[0];
  assign resetn_1 = resetn;
  bd_e67c_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axis_tdata(net_slot_0_axis_tdata),
        .m_slot_0_axis_tlast(net_slot_0_axis_tlast),
        .m_slot_0_axis_tready(net_slot_0_axis_tready),
        .m_slot_0_axis_tstrb(net_slot_0_axis_tstrb),
        .m_slot_0_axis_tvalid(net_slot_0_axis_tvalid),
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .m_slot_2_axis_tdata(net_slot_2_axis_tdata),
        .m_slot_2_axis_tlast(net_slot_2_axis_tlast),
        .m_slot_2_axis_tvalid(net_slot_2_axis_tvalid),
        .m_slot_3_axis_tdata(net_slot_3_axis_tdata),
        .m_slot_3_axis_tlast(net_slot_3_axis_tlast),
        .m_slot_3_axis_tready(net_slot_3_axis_tready),
        .m_slot_3_axis_tstrb(net_slot_3_axis_tstrb),
        .m_slot_3_axis_tvalid(net_slot_3_axis_tvalid),
        .slot_0_axis_tdata(Conn_TDATA),
        .slot_0_axis_tlast(Conn_TLAST),
        .slot_0_axis_tready(Conn_TREADY),
        .slot_0_axis_tstrb(Conn_TSTRB),
        .slot_0_axis_tvalid(Conn_TVALID),
        .slot_1_axis_tdata(Conn1_TDATA),
        .slot_1_axis_tlast(Conn1_TLAST),
        .slot_1_axis_tvalid(Conn1_TVALID),
        .slot_2_axis_tdata(Conn2_TDATA),
        .slot_2_axis_tlast(Conn2_TLAST),
        .slot_2_axis_tvalid(Conn2_TVALID),
        .slot_3_axis_tdata(Conn3_TDATA),
        .slot_3_axis_tlast(Conn3_TLAST),
        .slot_3_axis_tready(Conn3_TREADY),
        .slot_3_axis_tstrb(Conn3_TSTRB),
        .slot_3_axis_tvalid(Conn3_TVALID));
  bd_e67c_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(net_slot_2_axis_tdata),
        .probe11(net_slot_2_axis_tvalid),
        .probe12(net_slot_2_axis_tlast),
        .probe13(net_slot_3_axis_tdata),
        .probe14(net_slot_3_axis_tstrb),
        .probe15(net_slot_3_axis_tvalid),
        .probe16(net_slot_3_axis_tready),
        .probe17(net_slot_3_axis_tlast),
        .probe18(SLOT_4_BRAM_dout_1),
        .probe19(SLOT_4_BRAM_addr_1),
        .probe2(net_slot_0_axis_tdata),
        .probe20(SLOT_4_BRAM_rst_1),
        .probe3(net_slot_0_axis_tstrb),
        .probe4(net_slot_0_axis_tvalid),
        .probe5(net_slot_0_axis_tready),
        .probe6(net_slot_0_axis_tlast),
        .probe7(net_slot_1_axis_tdata),
        .probe8(net_slot_1_axis_tvalid),
        .probe9(net_slot_1_axis_tlast));
endmodule
