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


// IP VLNV: xilinx.com:module_ref:channel_estimate:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zf_equalizer_channel_estimate_0_0 (
  axis_aclk,
  axis_aresetn,
  s_pilot_tx_axis_tdata,
  s_pilot_tx_axis_tvalid,
  s_pilot_tx_axis_tlast,
  s_pilot_rx_axis_tdata,
  s_pilot_rx_axis_tvalid,
  s_pilot_rx_axis_tlast,
  m_axis_tdata,
  m_axis_tvalid,
  m_axis_tlast,
  m_tx_cordic_out_axis_tdata,
  m_tx_cordic_out_axis_tvalid,
  m_rx_cordic_out_axis_tdata,
  m_rx_cordic_out_axis_tvalid,
  m_abs_denom_in_axis_tdata,
  m_abs_num_in_axis_tdata,
  m_ang_denom_in_axis_tdata,
  m_ang_num_in_axis_tdata,
  m_ang_num_in_axis_tvalid,
  m_abs_res_axis_tdata,
  m_abs_res_axis_tvalid,
  m_ang_res_axis_tdata,
  m_ang_res_axis_tvalid,
  o_read_tx_pilots
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_BUSIF axis_aclk:s_pilot_tx_axis:s_pilot_rx_axis:m_axis, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zf_equalizer_axis_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *)
input wire axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
input wire axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_pilot_tx_axis TDATA" *)
input wire [31 : 0] s_pilot_tx_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_pilot_tx_axis TVALID" *)
input wire s_pilot_tx_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_pilot_tx_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN zf_equalizer_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_pilot_tx_axis TLAST" *)
input wire s_pilot_tx_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_pilot_rx_axis TDATA" *)
input wire [31 : 0] s_pilot_rx_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_pilot_rx_axis TVALID" *)
input wire s_pilot_rx_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_pilot_rx_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN zf_equalizer_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_pilot_rx_axis TLAST" *)
input wire s_pilot_rx_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [31 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN zf_equalizer_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_tx_cordic_out_axis TDATA" *)
output wire [31 : 0] m_tx_cordic_out_axis_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_tx_cordic_out_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_tx_cordic_out_axis TVALID" *)
output wire m_tx_cordic_out_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_rx_cordic_out_axis TDATA" *)
output wire [31 : 0] m_rx_cordic_out_axis_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_rx_cordic_out_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_rx_cordic_out_axis TVALID" *)
output wire m_rx_cordic_out_axis_tvalid;
output wire [15 : 0] m_abs_denom_in_axis_tdata;
output wire [15 : 0] m_abs_num_in_axis_tdata;
output wire [15 : 0] m_ang_denom_in_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_ang_num_in_axis TDATA" *)
output wire [15 : 0] m_ang_num_in_axis_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_ang_num_in_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_ang_num_in_axis TVALID" *)
output wire m_ang_num_in_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_abs_res_axis TDATA" *)
output wire [15 : 0] m_abs_res_axis_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_abs_res_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_abs_res_axis TVALID" *)
output wire m_abs_res_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_ang_res_axis TDATA" *)
output wire [15 : 0] m_ang_res_axis_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_ang_res_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_ang_res_axis TVALID" *)
output wire m_ang_res_axis_tvalid;
output wire o_read_tx_pilots;

  channel_estimate inst (
    .axis_aclk(axis_aclk),
    .axis_aresetn(axis_aresetn),
    .s_pilot_tx_axis_tdata(s_pilot_tx_axis_tdata),
    .s_pilot_tx_axis_tvalid(s_pilot_tx_axis_tvalid),
    .s_pilot_tx_axis_tlast(s_pilot_tx_axis_tlast),
    .s_pilot_rx_axis_tdata(s_pilot_rx_axis_tdata),
    .s_pilot_rx_axis_tvalid(s_pilot_rx_axis_tvalid),
    .s_pilot_rx_axis_tlast(s_pilot_rx_axis_tlast),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tlast(m_axis_tlast),
    .m_tx_cordic_out_axis_tdata(m_tx_cordic_out_axis_tdata),
    .m_tx_cordic_out_axis_tvalid(m_tx_cordic_out_axis_tvalid),
    .m_rx_cordic_out_axis_tdata(m_rx_cordic_out_axis_tdata),
    .m_rx_cordic_out_axis_tvalid(m_rx_cordic_out_axis_tvalid),
    .m_abs_denom_in_axis_tdata(m_abs_denom_in_axis_tdata),
    .m_abs_num_in_axis_tdata(m_abs_num_in_axis_tdata),
    .m_ang_denom_in_axis_tdata(m_ang_denom_in_axis_tdata),
    .m_ang_num_in_axis_tdata(m_ang_num_in_axis_tdata),
    .m_ang_num_in_axis_tvalid(m_ang_num_in_axis_tvalid),
    .m_abs_res_axis_tdata(m_abs_res_axis_tdata),
    .m_abs_res_axis_tvalid(m_abs_res_axis_tvalid),
    .m_ang_res_axis_tdata(m_ang_res_axis_tdata),
    .m_ang_res_axis_tvalid(m_ang_res_axis_tvalid),
    .o_read_tx_pilots(o_read_tx_pilots)
  );
endmodule
