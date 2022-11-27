--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Sep 29 13:16:18 2022
--Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
--Command     : generate_target radio_top_wrapper.bd
--Design      : radio_top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radio_top_wrapper is
  port (
    S_AXIS_CONFIG_0_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    S_AXIS_CONFIG_0_tready : out STD_LOGIC;
    S_AXIS_CONFIG_0_tvalid : in STD_LOGIC;
    aclk_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    bypass_cfo : in STD_LOGIC;
    bypass_equalizer : in STD_LOGIC;
    m_axis_0_0_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_0_0_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_0_0_tlast : out STD_LOGIC;
    m_axis_0_0_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_0_0_tvalid : out STD_LOGIC;
    s_axis_0_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_0_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_0_tlast : in STD_LOGIC;
    s_axis_0_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_0_tvalid : in STD_LOGIC
  );
end radio_top_wrapper;

architecture STRUCTURE of radio_top_wrapper is
  component radio_top is
  port (
    aclk_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    bypass_cfo : in STD_LOGIC;
    bypass_equalizer : in STD_LOGIC;
    m_axis_0_0_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_0_0_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_0_0_tlast : out STD_LOGIC;
    m_axis_0_0_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_0_0_tvalid : out STD_LOGIC;
    S_AXIS_CONFIG_0_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    S_AXIS_CONFIG_0_tready : out STD_LOGIC;
    S_AXIS_CONFIG_0_tvalid : in STD_LOGIC;
    s_axis_0_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_0_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_0_tlast : in STD_LOGIC;
    s_axis_0_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_0_tvalid : in STD_LOGIC
  );
  end component radio_top;
begin
radio_top_i: component radio_top
     port map (
      S_AXIS_CONFIG_0_tdata(95 downto 0) => S_AXIS_CONFIG_0_tdata(95 downto 0),
      S_AXIS_CONFIG_0_tready => S_AXIS_CONFIG_0_tready,
      S_AXIS_CONFIG_0_tvalid => S_AXIS_CONFIG_0_tvalid,
      aclk_0 => aclk_0,
      aresetn_0 => aresetn_0,
      bypass_cfo => bypass_cfo,
      bypass_equalizer => bypass_equalizer,
      m_axis_0_0_tdata(127 downto 0) => m_axis_0_0_tdata(127 downto 0),
      m_axis_0_0_tid(7 downto 0) => m_axis_0_0_tid(7 downto 0),
      m_axis_0_0_tlast => m_axis_0_0_tlast,
      m_axis_0_0_tuser(7 downto 0) => m_axis_0_0_tuser(7 downto 0),
      m_axis_0_0_tvalid => m_axis_0_0_tvalid,
      s_axis_0_tdata(127 downto 0) => s_axis_0_tdata(127 downto 0),
      s_axis_0_tid(7 downto 0) => s_axis_0_tid(7 downto 0),
      s_axis_0_tlast => s_axis_0_tlast,
      s_axis_0_tuser(7 downto 0) => s_axis_0_tuser(7 downto 0),
      s_axis_0_tvalid => s_axis_0_tvalid
    );
end STRUCTURE;
