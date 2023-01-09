-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Oct 17 10:13:12 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top cfo_correction_inst_1_conj_0_1 -prefix
--               cfo_correction_inst_1_conj_0_1_ cfo_correction_inst_0_conj_0_1_stub.vhdl
-- Design      : cfo_correction_inst_0_conj_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cfo_correction_inst_1_conj_0_1 is
  Port ( 
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    i_negative_freq : in STD_LOGIC
  );

end cfo_correction_inst_1_conj_0_1;

architecture stub of cfo_correction_inst_1_conj_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axis_aclk,axis_aresetn,s_axis_tdata[127:0],s_axis_tvalid,s_axis_tid[7:0],s_axis_tuser[7:0],s_axis_tlast,m_axis_tdata[127:0],m_axis_tvalid,m_axis_tid[7:0],m_axis_tuser[7:0],m_axis_tlast,i_negative_freq";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "conj,Vivado 2022.1";
begin
end;