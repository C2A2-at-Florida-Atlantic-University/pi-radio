//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_e67c_wrapper.bd
//Design : bd_e67c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_e67c_wrapper
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
  input [127:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input [15:0]SLOT_0_AXIS_tstrb;
  input SLOT_0_AXIS_tvalid;
  input [127:0]SLOT_1_AXIS_tdata;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tvalid;
  input [127:0]SLOT_2_AXIS_tdata;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tvalid;
  input [127:0]SLOT_3_AXIS_tdata;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tready;
  input [15:0]SLOT_3_AXIS_tstrb;
  input SLOT_3_AXIS_tvalid;
  input [13:0]SLOT_4_BRAM_addr;
  input SLOT_4_BRAM_clk;
  input [127:0]SLOT_4_BRAM_dout;
  input SLOT_4_BRAM_rst;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input resetn;

  wire [127:0]SLOT_0_AXIS_tdata;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire [15:0]SLOT_0_AXIS_tstrb;
  wire SLOT_0_AXIS_tvalid;
  wire [127:0]SLOT_1_AXIS_tdata;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tvalid;
  wire [127:0]SLOT_2_AXIS_tdata;
  wire SLOT_2_AXIS_tlast;
  wire SLOT_2_AXIS_tvalid;
  wire [127:0]SLOT_3_AXIS_tdata;
  wire SLOT_3_AXIS_tlast;
  wire SLOT_3_AXIS_tready;
  wire [15:0]SLOT_3_AXIS_tstrb;
  wire SLOT_3_AXIS_tvalid;
  wire [13:0]SLOT_4_BRAM_addr;
  wire SLOT_4_BRAM_clk;
  wire [127:0]SLOT_4_BRAM_dout;
  wire SLOT_4_BRAM_rst;
  wire clk;
  wire [0:0]probe0;
  wire [0:0]probe1;
  wire resetn;

  bd_e67c bd_e67c_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tstrb(SLOT_0_AXIS_tstrb),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
        .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
        .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
        .SLOT_2_AXIS_tdata(SLOT_2_AXIS_tdata),
        .SLOT_2_AXIS_tlast(SLOT_2_AXIS_tlast),
        .SLOT_2_AXIS_tvalid(SLOT_2_AXIS_tvalid),
        .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
        .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
        .SLOT_3_AXIS_tready(SLOT_3_AXIS_tready),
        .SLOT_3_AXIS_tstrb(SLOT_3_AXIS_tstrb),
        .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
        .SLOT_4_BRAM_addr(SLOT_4_BRAM_addr),
        .SLOT_4_BRAM_clk(SLOT_4_BRAM_clk),
        .SLOT_4_BRAM_dout(SLOT_4_BRAM_dout),
        .SLOT_4_BRAM_rst(SLOT_4_BRAM_rst),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .resetn(resetn));
endmodule
