// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Oct 17 10:13:12 2022
// Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cfo_correction_inst_1_axis_splitter_0_0 -prefix
//               cfo_correction_inst_1_axis_splitter_0_0_ cfo_correction_inst_0_axis_splitter_1_0_sim_netlist.v
// Design      : cfo_correction_inst_0_axis_splitter_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cfo_correction_inst_1_axis_splitter_0_0_axis_splitter
   (m_axis1_tdata,
    m_axis1_tvalid,
    m_axis1_tid,
    m_axis1_tuser,
    m_axis1_tlast,
    s_axis_tdata,
    axis_aclk,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tuser,
    s_axis_tlast);
  output [127:0]m_axis1_tdata;
  output m_axis1_tvalid;
  output [7:0]m_axis1_tid;
  output [7:0]m_axis1_tuser;
  output m_axis1_tlast;
  input [127:0]s_axis_tdata;
  input axis_aclk;
  input s_axis_tvalid;
  input [7:0]s_axis_tid;
  input [7:0]s_axis_tuser;
  input s_axis_tlast;

  wire axis_aclk;
  wire [127:0]m_axis1_tdata;
  wire [7:0]m_axis1_tid;
  wire m_axis1_tlast;
  wire [7:0]m_axis1_tuser;
  wire m_axis1_tvalid;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  FDRE \m_axis0_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[0]),
        .Q(m_axis1_tdata[0]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[100] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[100]),
        .Q(m_axis1_tdata[100]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[101] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[101]),
        .Q(m_axis1_tdata[101]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[102] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[102]),
        .Q(m_axis1_tdata[102]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[103] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[103]),
        .Q(m_axis1_tdata[103]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[104] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[104]),
        .Q(m_axis1_tdata[104]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[105] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[105]),
        .Q(m_axis1_tdata[105]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[106] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[106]),
        .Q(m_axis1_tdata[106]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[107] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[107]),
        .Q(m_axis1_tdata[107]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[108] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[108]),
        .Q(m_axis1_tdata[108]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[109] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[109]),
        .Q(m_axis1_tdata[109]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[10]),
        .Q(m_axis1_tdata[10]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[110] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[110]),
        .Q(m_axis1_tdata[110]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[111] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[111]),
        .Q(m_axis1_tdata[111]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[112] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[112]),
        .Q(m_axis1_tdata[112]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[113] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[113]),
        .Q(m_axis1_tdata[113]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[114] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[114]),
        .Q(m_axis1_tdata[114]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[115] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[115]),
        .Q(m_axis1_tdata[115]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[116] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[116]),
        .Q(m_axis1_tdata[116]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[117] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[117]),
        .Q(m_axis1_tdata[117]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[118] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[118]),
        .Q(m_axis1_tdata[118]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[119] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[119]),
        .Q(m_axis1_tdata[119]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[11]),
        .Q(m_axis1_tdata[11]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[120] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[120]),
        .Q(m_axis1_tdata[120]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[121] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[121]),
        .Q(m_axis1_tdata[121]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[122] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[122]),
        .Q(m_axis1_tdata[122]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[123] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[123]),
        .Q(m_axis1_tdata[123]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[124] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[124]),
        .Q(m_axis1_tdata[124]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[125] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[125]),
        .Q(m_axis1_tdata[125]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[126] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[126]),
        .Q(m_axis1_tdata[126]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[127] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[127]),
        .Q(m_axis1_tdata[127]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[12]),
        .Q(m_axis1_tdata[12]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[13]),
        .Q(m_axis1_tdata[13]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[14]),
        .Q(m_axis1_tdata[14]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[15]),
        .Q(m_axis1_tdata[15]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[16]),
        .Q(m_axis1_tdata[16]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[17]),
        .Q(m_axis1_tdata[17]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[18]),
        .Q(m_axis1_tdata[18]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[19]),
        .Q(m_axis1_tdata[19]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[1]),
        .Q(m_axis1_tdata[1]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[20]),
        .Q(m_axis1_tdata[20]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[21]),
        .Q(m_axis1_tdata[21]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[22]),
        .Q(m_axis1_tdata[22]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[23]),
        .Q(m_axis1_tdata[23]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[24]),
        .Q(m_axis1_tdata[24]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[25]),
        .Q(m_axis1_tdata[25]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[26]),
        .Q(m_axis1_tdata[26]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[27]),
        .Q(m_axis1_tdata[27]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[28]),
        .Q(m_axis1_tdata[28]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[29]),
        .Q(m_axis1_tdata[29]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[2]),
        .Q(m_axis1_tdata[2]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[30]),
        .Q(m_axis1_tdata[30]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[31]),
        .Q(m_axis1_tdata[31]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[32] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[32]),
        .Q(m_axis1_tdata[32]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[33] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[33]),
        .Q(m_axis1_tdata[33]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[34] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[34]),
        .Q(m_axis1_tdata[34]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[35] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[35]),
        .Q(m_axis1_tdata[35]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[36] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[36]),
        .Q(m_axis1_tdata[36]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[37] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[37]),
        .Q(m_axis1_tdata[37]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[38] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[38]),
        .Q(m_axis1_tdata[38]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[39] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[39]),
        .Q(m_axis1_tdata[39]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[3]),
        .Q(m_axis1_tdata[3]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[40] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[40]),
        .Q(m_axis1_tdata[40]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[41] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[41]),
        .Q(m_axis1_tdata[41]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[42] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[42]),
        .Q(m_axis1_tdata[42]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[43] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[43]),
        .Q(m_axis1_tdata[43]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[44] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[44]),
        .Q(m_axis1_tdata[44]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[45] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[45]),
        .Q(m_axis1_tdata[45]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[46] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[46]),
        .Q(m_axis1_tdata[46]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[47] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[47]),
        .Q(m_axis1_tdata[47]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[48] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[48]),
        .Q(m_axis1_tdata[48]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[49] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[49]),
        .Q(m_axis1_tdata[49]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[4]),
        .Q(m_axis1_tdata[4]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[50] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[50]),
        .Q(m_axis1_tdata[50]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[51] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[51]),
        .Q(m_axis1_tdata[51]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[52] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[52]),
        .Q(m_axis1_tdata[52]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[53] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[53]),
        .Q(m_axis1_tdata[53]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[54] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[54]),
        .Q(m_axis1_tdata[54]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[55] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[55]),
        .Q(m_axis1_tdata[55]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[56] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[56]),
        .Q(m_axis1_tdata[56]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[57] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[57]),
        .Q(m_axis1_tdata[57]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[58] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[58]),
        .Q(m_axis1_tdata[58]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[59] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[59]),
        .Q(m_axis1_tdata[59]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[5]),
        .Q(m_axis1_tdata[5]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[60] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[60]),
        .Q(m_axis1_tdata[60]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[61] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[61]),
        .Q(m_axis1_tdata[61]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[62] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[62]),
        .Q(m_axis1_tdata[62]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[63] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[63]),
        .Q(m_axis1_tdata[63]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[64] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[64]),
        .Q(m_axis1_tdata[64]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[65] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[65]),
        .Q(m_axis1_tdata[65]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[66] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[66]),
        .Q(m_axis1_tdata[66]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[67] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[67]),
        .Q(m_axis1_tdata[67]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[68] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[68]),
        .Q(m_axis1_tdata[68]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[69] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[69]),
        .Q(m_axis1_tdata[69]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[6]),
        .Q(m_axis1_tdata[6]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[70] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[70]),
        .Q(m_axis1_tdata[70]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[71] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[71]),
        .Q(m_axis1_tdata[71]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[72] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[72]),
        .Q(m_axis1_tdata[72]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[73] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[73]),
        .Q(m_axis1_tdata[73]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[74] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[74]),
        .Q(m_axis1_tdata[74]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[75] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[75]),
        .Q(m_axis1_tdata[75]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[76] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[76]),
        .Q(m_axis1_tdata[76]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[77] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[77]),
        .Q(m_axis1_tdata[77]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[78] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[78]),
        .Q(m_axis1_tdata[78]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[79] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[79]),
        .Q(m_axis1_tdata[79]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[7]),
        .Q(m_axis1_tdata[7]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[80] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[80]),
        .Q(m_axis1_tdata[80]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[81] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[81]),
        .Q(m_axis1_tdata[81]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[82] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[82]),
        .Q(m_axis1_tdata[82]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[83] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[83]),
        .Q(m_axis1_tdata[83]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[84] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[84]),
        .Q(m_axis1_tdata[84]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[85] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[85]),
        .Q(m_axis1_tdata[85]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[86] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[86]),
        .Q(m_axis1_tdata[86]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[87] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[87]),
        .Q(m_axis1_tdata[87]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[88] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[88]),
        .Q(m_axis1_tdata[88]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[89] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[89]),
        .Q(m_axis1_tdata[89]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[8]),
        .Q(m_axis1_tdata[8]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[90] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[90]),
        .Q(m_axis1_tdata[90]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[91] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[91]),
        .Q(m_axis1_tdata[91]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[92] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[92]),
        .Q(m_axis1_tdata[92]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[93] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[93]),
        .Q(m_axis1_tdata[93]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[94] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[94]),
        .Q(m_axis1_tdata[94]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[95] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[95]),
        .Q(m_axis1_tdata[95]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[96] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[96]),
        .Q(m_axis1_tdata[96]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[97] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[97]),
        .Q(m_axis1_tdata[97]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[98] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[98]),
        .Q(m_axis1_tdata[98]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[99] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[99]),
        .Q(m_axis1_tdata[99]),
        .R(1'b0));
  FDRE \m_axis0_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tdata[9]),
        .Q(m_axis1_tdata[9]),
        .R(1'b0));
  FDRE \m_axis0_tid_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[0]),
        .Q(m_axis1_tid[0]),
        .R(1'b0));
  FDRE \m_axis0_tid_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[1]),
        .Q(m_axis1_tid[1]),
        .R(1'b0));
  FDRE \m_axis0_tid_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[2]),
        .Q(m_axis1_tid[2]),
        .R(1'b0));
  FDRE \m_axis0_tid_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[3]),
        .Q(m_axis1_tid[3]),
        .R(1'b0));
  FDRE \m_axis0_tid_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[4]),
        .Q(m_axis1_tid[4]),
        .R(1'b0));
  FDRE \m_axis0_tid_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[5]),
        .Q(m_axis1_tid[5]),
        .R(1'b0));
  FDRE \m_axis0_tid_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[6]),
        .Q(m_axis1_tid[6]),
        .R(1'b0));
  FDRE \m_axis0_tid_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tid[7]),
        .Q(m_axis1_tid[7]),
        .R(1'b0));
  FDRE m_axis0_tlast_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(m_axis1_tlast),
        .R(1'b0));
  FDRE \m_axis0_tuser_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[0]),
        .Q(m_axis1_tuser[0]),
        .R(1'b0));
  FDRE \m_axis0_tuser_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[1]),
        .Q(m_axis1_tuser[1]),
        .R(1'b0));
  FDRE \m_axis0_tuser_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[2]),
        .Q(m_axis1_tuser[2]),
        .R(1'b0));
  FDRE \m_axis0_tuser_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[3]),
        .Q(m_axis1_tuser[3]),
        .R(1'b0));
  FDRE \m_axis0_tuser_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[4]),
        .Q(m_axis1_tuser[4]),
        .R(1'b0));
  FDRE \m_axis0_tuser_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[5]),
        .Q(m_axis1_tuser[5]),
        .R(1'b0));
  FDRE \m_axis0_tuser_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[6]),
        .Q(m_axis1_tuser[6]),
        .R(1'b0));
  FDRE \m_axis0_tuser_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tuser[7]),
        .Q(m_axis1_tuser[7]),
        .R(1'b0));
  FDRE m_axis0_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(s_axis_tvalid),
        .Q(m_axis1_tvalid),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "cfo_correction_inst_0_axis_splitter_1_0,axis_splitter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_splitter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module cfo_correction_inst_1_axis_splitter_0_0
   (axis_aclk,
    axis_aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tuser,
    s_axis_tlast,
    m_axis0_tdata,
    m_axis0_tvalid,
    m_axis0_tid,
    m_axis0_tuser,
    m_axis0_tlast,
    m_axis1_tdata,
    m_axis1_tvalid,
    m_axis1_tid,
    m_axis1_tuser,
    m_axis1_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis0:m_axis1, FREQ_HZ 249997498" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [7:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [7:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis0 TDATA" *) output [127:0]m_axis0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis0 TVALID" *) output m_axis0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis0 TID" *) output [7:0]m_axis0_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis0 TUSER" *) output [7:0]m_axis0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis0 TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis1 TDATA" *) output [127:0]m_axis1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis1 TVALID" *) output m_axis1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis1 TID" *) output [7:0]m_axis1_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis1 TUSER" *) output [7:0]m_axis1_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis1 TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis1, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN rx_test_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis1_tlast;

  wire axis_aclk;
  wire [127:0]m_axis1_tdata;
  wire [7:0]m_axis1_tid;
  wire m_axis1_tlast;
  wire [7:0]m_axis1_tuser;
  wire m_axis1_tvalid;
  wire [127:0]s_axis_tdata;
  wire [7:0]s_axis_tid;
  wire s_axis_tlast;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  assign m_axis0_tdata[127:0] = m_axis1_tdata;
  assign m_axis0_tid[7:0] = m_axis1_tid;
  assign m_axis0_tlast = m_axis1_tlast;
  assign m_axis0_tuser[7:0] = m_axis1_tuser;
  assign m_axis0_tvalid = m_axis1_tvalid;
  cfo_correction_inst_1_axis_splitter_0_0_axis_splitter inst
       (.axis_aclk(axis_aclk),
        .m_axis1_tdata(m_axis1_tdata),
        .m_axis1_tid(m_axis1_tid),
        .m_axis1_tlast(m_axis1_tlast),
        .m_axis1_tuser(m_axis1_tuser),
        .m_axis1_tvalid(m_axis1_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
