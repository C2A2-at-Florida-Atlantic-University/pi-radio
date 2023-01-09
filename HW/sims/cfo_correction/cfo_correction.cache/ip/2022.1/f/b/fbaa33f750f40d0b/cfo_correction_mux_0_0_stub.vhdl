-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Sep 30 09:41:17 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfo_correction_mux_0_0_stub.vhdl
-- Design      : cfo_correction_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_axis0_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis0_tvalid : in STD_LOGIC;
    s_axis0_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis0_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis0_tlast : in STD_LOGIC;
    s_axis0_tready : out STD_LOGIC;
    s_axis1_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis1_tvalid : in STD_LOGIC;
    s_axis1_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis1_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis1_tlast : in STD_LOGIC;
    s_axis1_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_select : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axis_aclk,axis_aresetn,s_axis0_tdata[127:0],s_axis0_tvalid,s_axis0_tid[7:0],s_axis0_tuser[7:0],s_axis0_tlast,s_axis0_tready,s_axis1_tdata[127:0],s_axis1_tvalid,s_axis1_tid[7:0],s_axis1_tuser[7:0],s_axis1_tlast,s_axis1_tready,m_axis_tdata[127:0],m_axis_tvalid,m_axis_tlast,m_axis_tready,m_axis_tstrb[15:0],i_select";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mux,Vivado 2022.1";
begin
end;