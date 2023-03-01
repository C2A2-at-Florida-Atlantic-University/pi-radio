-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Tue Feb 28 21:01:46 2023
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Projects/pi-radio/HW/sims/zf_equalizer/zf_equalizer.gen/sources_1/ip/cordic_polar_to_rec/cordic_polar_to_rec_stub.vhdl
-- Design      : cordic_polar_to_rec
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cordic_polar_to_rec is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tlast : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tlast : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tlast : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end cordic_polar_to_rec;

architecture stub of cordic_polar_to_rec is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_phase_tvalid,s_axis_phase_tlast,s_axis_phase_tdata[15:0],s_axis_cartesian_tvalid,s_axis_cartesian_tlast,s_axis_cartesian_tdata[31:0],m_axis_dout_tvalid,m_axis_dout_tlast,m_axis_dout_tdata[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "cordic_v6_0_18,Vivado 2022.1";
begin
end;
