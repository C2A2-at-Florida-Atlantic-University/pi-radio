// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:pilot_scheduler:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zf_equalizer_pilot_scheduler_0_0 (
  axis_aclk,
  axis_aresetn,
  i_stage_1_en,
  i_stage_2_en,
  i_stage_3_en,
  i_valid_frame,
  BRAM_PORT_addr,
  BRAM_PORT_clk,
  BRAM_PORT_din,
  BRAM_PORT_dout,
  BRAM_PORT_en,
  BRAM_PORT_rst,
  BRAM_PORT_we,
  M_AXIS_1_tdata,
  M_AXIS_1_tvalid,
  M_AXIS_1_tlast,
  M_AXIS_1_tready,
  M_AXIS_2_tdata,
  M_AXIS_2_tvalid,
  M_AXIS_2_tlast,
  M_AXIS_2_tready,
  M_AXIS_3_tdata,
  M_AXIS_3_tvalid,
  M_AXIS_3_tlast,
  M_AXIS_3_tready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF axis_aclk:M_AXIS_1:M_AXIS_2:M_AXIS_3, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zf_equalizer_axis_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *)
input wire axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
input wire axis_aresetn;
input wire i_stage_1_en;
input wire i_stage_2_en;
input wire i_stage_3_en;
input wire i_valid_frame;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *)
output wire [31 : 0] BRAM_PORT_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *)
output wire BRAM_PORT_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DIN" *)
output wire [31 : 0] BRAM_PORT_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *)
input wire [31 : 0] BRAM_PORT_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT EN" *)
output wire BRAM_PORT_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT RST" *)
output wire BRAM_PORT_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORT, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT WE" *)
output wire [0 : 0] BRAM_PORT_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_1 TDATA" *)
output wire [31 : 0] M_AXIS_1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_1 TVALID" *)
output wire M_AXIS_1_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_1 TLAST" *)
output wire M_AXIS_1_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN zf_equalizer_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_1 TREADY" *)
input wire M_AXIS_1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_2 TDATA" *)
output wire [31 : 0] M_AXIS_2_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_2 TVALID" *)
output wire M_AXIS_2_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_2 TLAST" *)
output wire M_AXIS_2_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_2, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN zf_equalizer_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_2 TREADY" *)
input wire M_AXIS_2_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_3 TDATA" *)
output wire [31 : 0] M_AXIS_3_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_3 TVALID" *)
output wire M_AXIS_3_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_3 TLAST" *)
output wire M_AXIS_3_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_3, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN zf_equalizer_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_3 TREADY" *)
input wire M_AXIS_3_tready;

  pilot_scheduler inst (
    .axis_aclk(axis_aclk),
    .axis_aresetn(axis_aresetn),
    .i_stage_1_en(i_stage_1_en),
    .i_stage_2_en(i_stage_2_en),
    .i_stage_3_en(i_stage_3_en),
    .i_valid_frame(i_valid_frame),
    .BRAM_PORT_addr(BRAM_PORT_addr),
    .BRAM_PORT_clk(BRAM_PORT_clk),
    .BRAM_PORT_din(BRAM_PORT_din),
    .BRAM_PORT_dout(BRAM_PORT_dout),
    .BRAM_PORT_en(BRAM_PORT_en),
    .BRAM_PORT_rst(BRAM_PORT_rst),
    .BRAM_PORT_we(BRAM_PORT_we),
    .M_AXIS_1_tdata(M_AXIS_1_tdata),
    .M_AXIS_1_tvalid(M_AXIS_1_tvalid),
    .M_AXIS_1_tlast(M_AXIS_1_tlast),
    .M_AXIS_1_tready(M_AXIS_1_tready),
    .M_AXIS_2_tdata(M_AXIS_2_tdata),
    .M_AXIS_2_tvalid(M_AXIS_2_tvalid),
    .M_AXIS_2_tlast(M_AXIS_2_tlast),
    .M_AXIS_2_tready(M_AXIS_2_tready),
    .M_AXIS_3_tdata(M_AXIS_3_tdata),
    .M_AXIS_3_tvalid(M_AXIS_3_tvalid),
    .M_AXIS_3_tlast(M_AXIS_3_tlast),
    .M_AXIS_3_tready(M_AXIS_3_tready)
  );
endmodule
