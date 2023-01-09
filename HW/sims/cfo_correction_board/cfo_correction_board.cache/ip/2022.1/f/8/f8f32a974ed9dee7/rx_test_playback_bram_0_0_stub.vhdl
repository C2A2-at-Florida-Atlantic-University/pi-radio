-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Oct 20 02:12:40 2022
-- Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rx_test_playback_bram_0_0_stub.vhdl
-- Design      : rx_test_playback_bram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    playback_en : in STD_LOGIC;
    num_symbols : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORT_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    BRAM_PORT_clk : out STD_LOGIC;
    BRAM_PORT_dout : in STD_LOGIC_VECTOR ( 127 downto 0 );
    BRAM_PORT_rst : out STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    M_AXIS_tlast : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axis_aclk,axis_aresetn,playback_en,num_symbols[3:0],BRAM_PORT_addr[13:0],BRAM_PORT_clk,BRAM_PORT_dout[127:0],BRAM_PORT_rst,M_AXIS_tdata[127:0],M_AXIS_tvalid,M_AXIS_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "playback_bram,Vivado 2022.1";
begin
end;
