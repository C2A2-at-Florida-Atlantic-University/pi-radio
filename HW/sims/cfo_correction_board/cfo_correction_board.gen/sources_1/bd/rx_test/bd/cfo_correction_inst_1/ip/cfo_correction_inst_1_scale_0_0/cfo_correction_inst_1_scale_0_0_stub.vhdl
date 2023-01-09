-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Oct 19 00:26:53 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_scale_0_0/cfo_correction_inst_1_scale_0_0_stub.vhdl
-- Design      : cfo_correction_inst_1_scale_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cfo_correction_inst_1_scale_0_0 is
  Port ( 
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    i_symbol : in STD_LOGIC;
    o_negative_freq : out STD_LOGIC
  );

end cfo_correction_inst_1_scale_0_0;

architecture stub of cfo_correction_inst_1_scale_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axis_aclk,axis_aresetn,s_axis_tdata[31:0],s_axis_tvalid,m_axis_tdata[31:0],m_axis_tvalid,i_symbol,o_negative_freq";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "scale,Vivado 2022.1";
begin
end;
