--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Sep 29 13:16:18 2022
--Host        : DESKTOP-1UDCE0K running 64-bit major release  (build 9200)
--Command     : generate_target radio_top.bd
--Design      : radio_top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radio_top is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of radio_top : entity is "radio_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=radio_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=26,numReposBlks=23,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=18,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of radio_top : entity is "radio_top.hwdef";
end radio_top;

architecture STRUCTURE of radio_top is
  component Equalizer_inst_0 is
  port (
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    bypass : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
  end component Equalizer_inst_0;
  component cfo_correction_inst_0 is
  port (
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    bypass : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  end component cfo_correction_inst_0;
  component radio_top_xfft_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component radio_top_xfft_0_0;
  signal Equalizer_0_m_axis_0_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Equalizer_0_m_axis_0_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Equalizer_0_m_axis_0_TLAST : STD_LOGIC;
  signal Equalizer_0_m_axis_0_TUSER : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Equalizer_0_m_axis_0_TVALID : STD_LOGIC;
  signal S_AXIS_CONFIG_0_1_TDATA : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal S_AXIS_CONFIG_0_1_TREADY : STD_LOGIC;
  signal S_AXIS_CONFIG_0_1_TVALID : STD_LOGIC;
  signal aclk_0_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  signal bypass_0_1 : STD_LOGIC;
  signal bypass_0_2 : STD_LOGIC;
  signal cfo_correction_0_m_axis_0_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal cfo_correction_0_m_axis_0_TLAST : STD_LOGIC;
  signal cfo_correction_0_m_axis_0_TVALID : STD_LOGIC;
  signal s_axis_0_1_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s_axis_0_1_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_0_1_TLAST : STD_LOGIC;
  signal s_axis_0_1_TUSER : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_0_1_TVALID : STD_LOGIC;
  signal xfft_0_M_AXIS_DATA_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal xfft_0_M_AXIS_DATA_TLAST : STD_LOGIC;
  signal xfft_0_M_AXIS_DATA_TVALID : STD_LOGIC;
  signal NLW_xfft_0_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXIS_CONFIG_0_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG_0 TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_CONFIG_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG_0 TVALID";
  attribute X_INTERFACE_INFO of aclk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_0 : signal is "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF S_AXIS_CONFIG_0:m_axis_0_0:s_axis_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN radio_top_aclk_0, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of aresetn_0 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_0 : signal is "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_0_0_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_0_0 TLAST";
  attribute X_INTERFACE_INFO of m_axis_0_0_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_0_0 TVALID";
  attribute X_INTERFACE_INFO of s_axis_0_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_0 TLAST";
  attribute X_INTERFACE_INFO of s_axis_0_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_0 TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_CONFIG_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG_0 TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_CONFIG_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_CONFIG_0, CLK_DOMAIN radio_top_aclk_0, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of m_axis_0_0_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_0_0 TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_0_0_tdata : signal is "XIL_INTERFACENAME m_axis_0_0, CLK_DOMAIN radio_top_aclk_0, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8";
  attribute X_INTERFACE_INFO of m_axis_0_0_tid : signal is "xilinx.com:interface:axis:1.0 m_axis_0_0 TID";
  attribute X_INTERFACE_INFO of m_axis_0_0_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_0_0 TUSER";
  attribute X_INTERFACE_INFO of s_axis_0_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_0 TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_0_tdata : signal is "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN radio_top_aclk_0, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 8";
  attribute X_INTERFACE_INFO of s_axis_0_tid : signal is "xilinx.com:interface:axis:1.0 s_axis_0 TID";
  attribute X_INTERFACE_INFO of s_axis_0_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_0 TUSER";
begin
  S_AXIS_CONFIG_0_1_TDATA(95 downto 0) <= S_AXIS_CONFIG_0_tdata(95 downto 0);
  S_AXIS_CONFIG_0_1_TVALID <= S_AXIS_CONFIG_0_tvalid;
  S_AXIS_CONFIG_0_tready <= S_AXIS_CONFIG_0_1_TREADY;
  aclk_0_1 <= aclk_0;
  aresetn_0_1 <= aresetn_0;
  bypass_0_1 <= bypass_cfo;
  bypass_0_2 <= bypass_equalizer;
  m_axis_0_0_tdata(127 downto 0) <= Equalizer_0_m_axis_0_TDATA(127 downto 0);
  m_axis_0_0_tid(7 downto 0) <= Equalizer_0_m_axis_0_TID(7 downto 0);
  m_axis_0_0_tlast <= Equalizer_0_m_axis_0_TLAST;
  m_axis_0_0_tuser(7 downto 0) <= Equalizer_0_m_axis_0_TUSER(7 downto 0);
  m_axis_0_0_tvalid <= Equalizer_0_m_axis_0_TVALID;
  s_axis_0_1_TDATA(127 downto 0) <= s_axis_0_tdata(127 downto 0);
  s_axis_0_1_TID(7 downto 0) <= s_axis_0_tid(7 downto 0);
  s_axis_0_1_TLAST <= s_axis_0_tlast;
  s_axis_0_1_TUSER(7 downto 0) <= s_axis_0_tuser(7 downto 0);
  s_axis_0_1_TVALID <= s_axis_0_tvalid;
Equalizer_0: component Equalizer_inst_0
     port map (
      axis_aclk => aclk_0_1,
      axis_aresetn => aresetn_0_1,
      bypass => bypass_0_2,
      m_axis_tdata(127 downto 0) => Equalizer_0_m_axis_0_TDATA(127 downto 0),
      m_axis_tid(7 downto 0) => Equalizer_0_m_axis_0_TID(7 downto 0),
      m_axis_tlast => Equalizer_0_m_axis_0_TLAST,
      m_axis_tuser(7 downto 0) => Equalizer_0_m_axis_0_TUSER(7 downto 0),
      m_axis_tvalid => Equalizer_0_m_axis_0_TVALID,
      s_axis_tdata(127 downto 0) => xfft_0_M_AXIS_DATA_TDATA(127 downto 0),
      s_axis_tlast => xfft_0_M_AXIS_DATA_TLAST,
      s_axis_tvalid => xfft_0_M_AXIS_DATA_TVALID
    );
cfo_correction_0: component cfo_correction_inst_0
     port map (
      axis_aclk => aclk_0_1,
      axis_aresetn => aresetn_0_1,
      bypass => bypass_0_1,
      m_axis_tdata(127 downto 0) => cfo_correction_0_m_axis_0_TDATA(127 downto 0),
      m_axis_tlast => cfo_correction_0_m_axis_0_TLAST,
      m_axis_tvalid => cfo_correction_0_m_axis_0_TVALID,
      s_axis_tdata(127 downto 0) => s_axis_0_1_TDATA(127 downto 0),
      s_axis_tid(7 downto 0) => s_axis_0_1_TID(7 downto 0),
      s_axis_tlast => s_axis_0_1_TLAST,
      s_axis_tuser(7 downto 0) => s_axis_0_1_TUSER(7 downto 0),
      s_axis_tvalid => s_axis_0_1_TVALID
    );
xfft_0: component radio_top_xfft_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      event_data_in_channel_halt => NLW_xfft_0_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_xfft_0_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_xfft_0_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_xfft_0_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_xfft_0_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_xfft_0_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(127 downto 0) => xfft_0_M_AXIS_DATA_TDATA(127 downto 0),
      m_axis_data_tlast => xfft_0_M_AXIS_DATA_TLAST,
      m_axis_data_tready => '1',
      m_axis_data_tvalid => xfft_0_M_AXIS_DATA_TVALID,
      s_axis_config_tdata(95 downto 0) => S_AXIS_CONFIG_0_1_TDATA(95 downto 0),
      s_axis_config_tready => S_AXIS_CONFIG_0_1_TREADY,
      s_axis_config_tvalid => S_AXIS_CONFIG_0_1_TVALID,
      s_axis_data_tdata(127 downto 0) => cfo_correction_0_m_axis_0_TDATA(127 downto 0),
      s_axis_data_tlast => cfo_correction_0_m_axis_0_TLAST,
      s_axis_data_tready => NLW_xfft_0_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => cfo_correction_0_m_axis_0_TVALID
    );
end STRUCTURE;
