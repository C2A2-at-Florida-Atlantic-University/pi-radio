
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen2:
&C:/Xilinx_2022.1/Vivado/2022.1/data/ip2default:defaultZ19-2313h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
add_files: 2default:default2
00:00:012default:default2
00:00:052default:default2
1637.7272default:default2
0.0002default:defaultZ17-268h px? 
?
RReference module source file %s referred in sub-design %s is not added in project.3999*	planAhead2?
yc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.srcs/sources_1/bd/cfo_correction/cfo_correction.bd2default:default2
rx_test2default:defaultZ12-8448h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
add_files: 2default:default2
00:00:032default:default2
00:00:062default:default2
1637.7272default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.srcs/utils_1/imports/synth_1/rx_test_wrapper.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
wc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.srcs/utils_1/imports/synth_1/rx_test_wrapper.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
?
Command: %s
53*	vivadotcl2Q
=synth_design -top rx_test_wrapper -part xczu28dr-ffvg1517-2-e2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xczu28dr2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xczu28dr2default:defaultZ17-349h px? 
\
Loading part %s157*device2)
xczu28dr-ffvg1517-2-e2default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
381562default:defaultZ8-7075h px? 
?
Ygenerate block is allowed only inside loop and conditional generate in SystemVerilog mode5759*oasys2Y
CC:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
40232default:default8@Z8-9501h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2207.512 ; gain = 270.133
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2#
rx_test_wrapper2default:default2
 2default:default2?
uc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/hdl/rx_test_wrapper.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
rx_test2default:default2
 2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
4012default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2'
rx_test_axi_dma_0_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_axi_dma_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
rx_test_axi_dma_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_axi_dma_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2*
s2mm_prmry_reset_out_n2default:default2'
rx_test_axi_dma_0_12default:default2
	axi_dma_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
5532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
s2mm_introut2default:default2'
rx_test_axi_dma_0_12default:default2
	axi_dma_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
5532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
axi_dma_tstvec2default:default2'
rx_test_axi_dma_0_12default:default2
	axi_dma_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
5532default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	axi_dma_02default:default2'
rx_test_axi_dma_0_12default:default2
432default:default2
402default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
5532default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys20
rx_test_axi_interconnect_0_12default:default2
 2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
9372default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2+
s00_couplers_imp_6F7BMV2default:default2
 2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
17892default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s00_couplers_imp_6F7BMV2default:default2
 2default:default2
02default:default2
12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
17892default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
rx_test_axi_interconnect_0_12default:default2
 2default:default2
02default:default2
12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
9372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
rx_test_axis_data_fifo_1_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_axis_data_fifo_1_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
rx_test_axis_data_fifo_1_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_axis_data_fifo_1_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
rx_test_blk_mem_gen_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_blk_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
rx_test_blk_mem_gen_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_blk_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
rx_test_axi_gpio_0_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_axi_gpio_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
rx_test_axi_gpio_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_axi_gpio_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
cfo_correction_inst_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
1222default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2$
Mixer_imp_YGLQ122default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys22
cfo_correction_inst_1_conj_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_conj_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
cfo_correction_inst_1_conj_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_conj_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!cfo_correction_inst_1_dds_top_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_dds_top_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!cfo_correction_inst_1_dds_top_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_dds_top_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
cfo_correction_inst_1_mixer_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_mixer_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
cfo_correction_inst_1_mixer_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_mixer_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axis_tuser2default:default23
cfo_correction_inst_1_mixer_0_02default:default2
mixer_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
1042default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

m_axis_tid2default:default23
cfo_correction_inst_1_mixer_0_02default:default2
mixer_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
1042default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
mixer_02default:default23
cfo_correction_inst_1_mixer_0_02default:default2
172default:default2
152default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
1042default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
Mixer_imp_YGLQ122default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
122default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
cfo_correction_inst_1_angle_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_angle_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
cfo_correction_inst_1_angle_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_angle_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axis_tuser2default:default23
cfo_correction_inst_1_angle_0_02default:default2
angle_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
2752default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

m_axis_tid2default:default23
cfo_correction_inst_1_angle_0_02default:default2
angle_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
2752default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axis_tlast2default:default23
cfo_correction_inst_1_angle_0_02default:default2
angle_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
2752default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
angle_02default:default23
cfo_correction_inst_1_angle_0_02default:default2
122default:default2
92default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
2752default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2<
(cfo_correction_inst_1_axis_data_fifo_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_axis_data_fifo_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2<
(cfo_correction_inst_1_axis_data_fifo_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_axis_data_fifo_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
s_axis_tready2default:default2<
(cfo_correction_inst_1_axis_data_fifo_0_02default:default2$
axis_data_fifo_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
2852default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2$
axis_data_fifo_02default:default2<
(cfo_correction_inst_1_axis_data_fifo_0_02default:default2
142default:default2
132default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
2852default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2<
(cfo_correction_inst_1_axis_data_fifo_1_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_axis_data_fifo_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2<
(cfo_correction_inst_1_axis_data_fifo_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_axis_data_fifo_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
s_axis_tready2default:default2<
(cfo_correction_inst_1_axis_data_fifo_1_02default:default2$
axis_data_fifo_12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
2992default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2$
axis_data_fifo_12default:default2<
(cfo_correction_inst_1_axis_data_fifo_1_02default:default2
142default:default2
132default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
2992default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2;
'cfo_correction_inst_1_axis_splitter_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_axis_splitter_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'cfo_correction_inst_1_axis_splitter_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_axis_splitter_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2;
'cfo_correction_inst_1_axis_splitter_1_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_axis_splitter_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'cfo_correction_inst_1_axis_splitter_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_axis_splitter_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&cfo_correction_inst_1_complex_mult_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_complex_mult_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&cfo_correction_inst_1_complex_mult_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_complex_mult_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
cfo_correction_inst_1_conj_0_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_conj_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
cfo_correction_inst_1_conj_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_conj_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
cfo_correction_inst_1_conj_1_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_conj_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
cfo_correction_inst_1_conj_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_conj_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 cfo_correction_inst_1_cp_rm2_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_cp_rm2_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 cfo_correction_inst_1_cp_rm2_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_cp_rm2_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
cfo_correction_inst_1_cp_rm_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_cp_rm_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
cfo_correction_inst_1_cp_rm_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_cp_rm_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
o_symbol_number2default:default23
cfo_correction_inst_1_cp_rm_0_02default:default2
cp_rm_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
4092default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
cp_rm_02default:default23
cfo_correction_inst_1_cp_rm_0_02default:default2
192default:default2
182default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
4092default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys23
cfo_correction_inst_1_delay_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_delay_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
cfo_correction_inst_1_delay_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_delay_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
cfo_correction_inst_1_delay_1_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_delay_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
cfo_correction_inst_1_delay_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_delay_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
cfo_correction_inst_1_mux_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_mux_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
cfo_correction_inst_1_mux_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_mux_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
s_axis0_tready2default:default21
cfo_correction_inst_1_mux_0_02default:default2
mux_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
4582default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
s_axis1_tready2default:default21
cfo_correction_inst_1_mux_0_02default:default2
mux_02default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
4582default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
mux_02default:default21
cfo_correction_inst_1_mux_0_02default:default2
202default:default2
182default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
4582default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys23
cfo_correction_inst_1_scale_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_scale_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
cfo_correction_inst_1_scale_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_scale_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
cfo_correction_inst_1_sum_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_sum_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
cfo_correction_inst_1_sum_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_sum_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&cfo_correction_inst_1_tlast_symbol_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_tlast_symbol_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&cfo_correction_inst_1_tlast_symbol_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_tlast_symbol_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2?
+cfo_correction_inst_1_util_vector_logic_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_util_vector_logic_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+cfo_correction_inst_1_util_vector_logic_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/cfo_correction_inst_1_util_vector_logic_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys28
$cfo_correction_inst_1_xlconstant_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_xlconstant_0_0/synth/cfo_correction_inst_1_xlconstant_0_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$cfo_correction_inst_1_xlconstant_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_xlconstant_0_0/synth/cfo_correction_inst_1_xlconstant_0_0.v2default:default2
532default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
cfo_correction_inst_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/synth/cfo_correction_inst_1.v2default:default2
1222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2-
rx_test_playback_bram_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_playback_bram_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
rx_test_playback_bram_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_playback_bram_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
rx_test_axi_gpio_1_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_axi_gpio_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
rx_test_axi_gpio_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_axi_gpio_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
rx_test_proc_sys_reset_1_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_proc_sys_reset_1_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
rx_test_proc_sys_reset_1_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_proc_sys_reset_1_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mb_reset2default:default2.
rx_test_proc_sys_reset_1_12default:default2$
proc_sys_reset_12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
7202default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
bus_struct_reset2default:default2.
rx_test_proc_sys_reset_1_12default:default2$
proc_sys_reset_12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
7202default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
peripheral_reset2default:default2.
rx_test_proc_sys_reset_1_12default:default2$
proc_sys_reset_12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
7202default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
interconnect_aresetn2default:default2.
rx_test_proc_sys_reset_1_12default:default2$
proc_sys_reset_12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
7202default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2$
proc_sys_reset_12default:default2.
rx_test_proc_sys_reset_1_12default:default2
102default:default2
62default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
7202default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2.
rx_test_ps8_0_axi_periph_12default:default2
 2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
11272default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2,
m00_couplers_imp_1UFN3ZE2default:default2
 2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
122default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m00_couplers_imp_1UFN3ZE2default:default2
 2default:default2
02default:default2
12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
122default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m01_couplers_imp_T2PCIX2default:default2
 2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
1372default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m01_couplers_imp_T2PCIX2default:default2
 2default:default2
02default:default2
12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
1372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m02_couplers_imp_GGLNHP2default:default2
 2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
2692default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m02_couplers_imp_GGLNHP2default:default2
 2default:default2
02default:default2
12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
2692default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
s00_couplers_imp_SXY6PI2default:default2
 2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
19142default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2%
rx_test_auto_pc_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_auto_pc_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
rx_test_auto_pc_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_auto_pc_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s00_couplers_imp_SXY6PI2default:default2
 2default:default2
02default:default2
12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
19142default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
rx_test_xbar_32default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_xbar_3_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
rx_test_xbar_32default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_xbar_3_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_awprot2default:default2"
rx_test_xbar_32default:default2
xbar2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
17482default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_arprot2default:default2"
rx_test_xbar_32default:default2
xbar2default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
17482default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xbar2default:default2"
rx_test_xbar_32default:default2
402default:default2
382default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
17482default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
rx_test_ps8_0_axi_periph_12default:default2
 2default:default2
02default:default2
12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
11272default:default8@Z8-6155h px? 
?
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8252default:default8@Z8-4446h px? 
?
synthesizing module '%s'%s4497*oasys2*
rx_test_system_ila_2_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_system_ila_2_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
rx_test_system_ila_2_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_system_ila_2_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
rx_test_tlast_gen_0_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_tlast_gen_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
rx_test_tlast_gen_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_tlast_gen_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
s_axis_tready2default:default2)
rx_test_tlast_gen_0_12default:default2
tlast_gen_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8502default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
tlast_gen_02default:default2)
rx_test_tlast_gen_0_12default:default2
92default:default2
82default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8502default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2/
rx_test_zynq_ultra_ps_e_0_12default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_zynq_ultra_ps_e_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
rx_test_zynq_ultra_ps_e_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/.Xil/Vivado-54352-DESKTOP-1UDCE0K/realtime/rx_test_zynq_ultra_ps_e_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
maxigp0_awuser2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
maxigp0_aruser2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
saxigp2_bid2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
saxigp2_arready2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
saxigp2_rid2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
saxigp2_rdata2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
saxigp2_rresp2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
saxigp2_rlast2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
saxigp2_rvalid2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
emio_uart1_txd2default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pl_clk02default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2%
zynq_ultra_ps_e_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2%
zynq_ultra_ps_e_02default:default2/
rx_test_zynq_ultra_ps_e_0_12default:default2
862default:default2
752default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8592default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rx_test2default:default2
 2default:default2
02default:default2
12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
4012default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
rx_test_wrapper2default:default2
 2default:default2
02default:default2
12default:default2?
uc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/hdl/rx_test_wrapper.v2default:default2
122default:default8@Z8-6155h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2$
axis_data_fifo_12default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
6332default:default8@Z8-6071h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2 
system_ila_22default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8252default:default8@Z8-6071h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
	axi_dma_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
5532default:default8@Z8-6071h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2$
cfo_correction_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
6732default:default8@Z8-6071h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2#
playback_bram_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
6852default:default8@Z8-6071h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2!
blk_mem_gen_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
6462default:default8@Z8-6071h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
tlast_gen_02default:default2?
oc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/synth/rx_test.v2default:default2
8502default:default8@Z8-6071h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s00_couplers_imp_SXY6PI2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s00_couplers_imp_SXY6PI2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m02_couplers_imp_GGLNHP2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m02_couplers_imp_GGLNHP2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m02_couplers_imp_GGLNHP2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m02_couplers_imp_GGLNHP2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m01_couplers_imp_T2PCIX2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m01_couplers_imp_T2PCIX2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m01_couplers_imp_T2PCIX2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m01_couplers_imp_T2PCIX2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m00_couplers_imp_1UFN3ZE2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m00_couplers_imp_1UFN3ZE2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m00_couplers_imp_1UFN3ZE2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m00_couplers_imp_1UFN3ZE2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ACLK2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ACLK2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ARESETN2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ACLK2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
s00_couplers_imp_6F7BMV2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
s00_couplers_imp_6F7BMV2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
s00_couplers_imp_6F7BMV2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
s00_couplers_imp_6F7BMV2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2default:default20
rx_test_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESETN2default:default20
rx_test_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2276.844 ; gain = 339.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2298.715 ; gain = 361.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2298.715 ; gain = 361.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0542default:default2
2298.7152default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_conj_0_0/cfo_correction_inst_1_conj_0_0/cfo_correction_inst_0_conj_0_1_in_context.xdc2default:default2=
'rx_test_i/cfo_correction_0/Mixer/conj_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_conj_0_0/cfo_correction_inst_1_conj_0_0/cfo_correction_inst_0_conj_0_1_in_context.xdc2default:default2=
'rx_test_i/cfo_correction_0/Mixer/conj_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_dds_top_0_0/cfo_correction_inst_1_dds_top_0_0/cfo_correction_inst_1_dds_top_0_0_in_context.xdc2default:default2@
*rx_test_i/cfo_correction_0/Mixer/dds_top_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_dds_top_0_0/cfo_correction_inst_1_dds_top_0_0/cfo_correction_inst_1_dds_top_0_0_in_context.xdc2default:default2@
*rx_test_i/cfo_correction_0/Mixer/dds_top_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_mixer_0_0/cfo_correction_inst_1_mixer_0_0/cfo_correction_inst_1_mixer_0_0_in_context.xdc2default:default2>
(rx_test_i/cfo_correction_0/Mixer/mixer_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_mixer_0_0/cfo_correction_inst_1_mixer_0_0/cfo_correction_inst_1_mixer_0_0_in_context.xdc2default:default2>
(rx_test_i/cfo_correction_0/Mixer/mixer_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_angle_0_0_1/cfo_correction_inst_1_angle_0_0/cfo_correction_inst_1_angle_0_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/angle_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_angle_0_0_1/cfo_correction_inst_1_angle_0_0/cfo_correction_inst_1_angle_0_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/angle_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_axis_data_fifo_0_0/cfo_correction_inst_1_axis_data_fifo_0_0/cfo_correction_inst_0_axis_data_fifo_0_0_in_context.xdc2default:default2A
+rx_test_i/cfo_correction_0/axis_data_fifo_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_axis_data_fifo_0_0/cfo_correction_inst_1_axis_data_fifo_0_0/cfo_correction_inst_0_axis_data_fifo_0_0_in_context.xdc2default:default2A
+rx_test_i/cfo_correction_0/axis_data_fifo_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_axis_data_fifo_1_0/cfo_correction_inst_1_axis_data_fifo_1_0/cfo_correction_inst_0_axis_data_fifo_1_0_in_context.xdc2default:default2A
+rx_test_i/cfo_correction_0/axis_data_fifo_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_axis_data_fifo_1_0/cfo_correction_inst_1_axis_data_fifo_1_0/cfo_correction_inst_0_axis_data_fifo_1_0_in_context.xdc2default:default2A
+rx_test_i/cfo_correction_0/axis_data_fifo_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_axis_splitter_0_0/cfo_correction_inst_1_axis_splitter_0_0/cfo_correction_inst_0_axis_splitter_1_0_in_context.xdc2default:default2@
*rx_test_i/cfo_correction_0/axis_splitter_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_axis_splitter_0_0/cfo_correction_inst_1_axis_splitter_0_0/cfo_correction_inst_0_axis_splitter_1_0_in_context.xdc2default:default2@
*rx_test_i/cfo_correction_0/axis_splitter_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_axis_splitter_1_0/cfo_correction_inst_1_axis_splitter_1_0/cfo_correction_inst_0_axis_splitter_1_0_in_context.xdc2default:default2@
*rx_test_i/cfo_correction_0/axis_splitter_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_axis_splitter_1_0/cfo_correction_inst_1_axis_splitter_1_0/cfo_correction_inst_0_axis_splitter_1_0_in_context.xdc2default:default2@
*rx_test_i/cfo_correction_0/axis_splitter_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_complex_mult_0_0/cfo_correction_inst_1_complex_mult_0_0/cfo_correction_inst_1_complex_mult_0_0_in_context.xdc2default:default2?
)rx_test_i/cfo_correction_0/complex_mult_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_complex_mult_0_0/cfo_correction_inst_1_complex_mult_0_0/cfo_correction_inst_1_complex_mult_0_0_in_context.xdc2default:default2?
)rx_test_i/cfo_correction_0/complex_mult_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_conj_0_1/cfo_correction_inst_1_conj_0_1/cfo_correction_inst_0_conj_0_1_in_context.xdc2default:default27
!rx_test_i/cfo_correction_0/conj_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_conj_0_1/cfo_correction_inst_1_conj_0_1/cfo_correction_inst_0_conj_0_1_in_context.xdc2default:default27
!rx_test_i/cfo_correction_0/conj_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_conj_1_0/cfo_correction_inst_1_conj_1_0/cfo_correction_inst_0_conj_0_1_in_context.xdc2default:default27
!rx_test_i/cfo_correction_0/conj_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_conj_1_0/cfo_correction_inst_1_conj_1_0/cfo_correction_inst_0_conj_0_1_in_context.xdc2default:default27
!rx_test_i/cfo_correction_0/conj_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_cp_rm2_0_0/cfo_correction_inst_1_cp_rm2_0_0/cfo_correction_inst_0_cp_rm2_0_0_in_context.xdc2default:default29
#rx_test_i/cfo_correction_0/cp_rm2_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_cp_rm2_0_0/cfo_correction_inst_1_cp_rm2_0_0/cfo_correction_inst_0_cp_rm2_0_0_in_context.xdc2default:default29
#rx_test_i/cfo_correction_0/cp_rm2_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_cp_rm_0_0/cfo_correction_inst_1_cp_rm_0_0/cfo_correction_inst_0_cp_rm_0_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/cp_rm_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_cp_rm_0_0/cfo_correction_inst_1_cp_rm_0_0/cfo_correction_inst_0_cp_rm_0_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/cp_rm_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_delay_0_0/cfo_correction_inst_1_delay_0_0/cfo_correction_inst_0_delay_0_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/delay_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_delay_0_0/cfo_correction_inst_1_delay_0_0/cfo_correction_inst_0_delay_0_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/delay_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_delay_1_0/cfo_correction_inst_1_delay_1_0/cfo_correction_inst_0_delay_1_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/delay_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_delay_1_0/cfo_correction_inst_1_delay_1_0/cfo_correction_inst_0_delay_1_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/delay_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_mux_0_0/cfo_correction_inst_1_mux_0_0/cfo_correction_inst_0_mux_0_0_in_context.xdc2default:default26
 rx_test_i/cfo_correction_0/mux_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_mux_0_0/cfo_correction_inst_1_mux_0_0/cfo_correction_inst_0_mux_0_0_in_context.xdc2default:default26
 rx_test_i/cfo_correction_0/mux_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_scale_0_0/cfo_correction_inst_1_scale_0_0/cfo_correction_inst_1_scale_0_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/scale_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_scale_0_0/cfo_correction_inst_1_scale_0_0/cfo_correction_inst_1_scale_0_0_in_context.xdc2default:default28
"rx_test_i/cfo_correction_0/scale_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_sum_0_0/cfo_correction_inst_1_sum_0_0/cfo_correction_inst_0_sum_0_0_in_context.xdc2default:default26
 rx_test_i/cfo_correction_0/sum_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_sum_0_0/cfo_correction_inst_1_sum_0_0/cfo_correction_inst_0_sum_0_0_in_context.xdc2default:default26
 rx_test_i/cfo_correction_0/sum_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_tlast_symbol_0_0/cfo_correction_inst_1_tlast_symbol_0_0/cfo_correction_inst_0_tlast_symbol_0_0_in_context.xdc2default:default2?
)rx_test_i/cfo_correction_0/tlast_symbol_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_tlast_symbol_0_0/cfo_correction_inst_1_tlast_symbol_0_0/cfo_correction_inst_0_tlast_symbol_0_0_in_context.xdc2default:default2?
)rx_test_i/cfo_correction_0/tlast_symbol_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_util_vector_logic_0_0/cfo_correction_inst_1_util_vector_logic_0_0/cfo_correction_inst_0_util_vector_logic_0_0_in_context.xdc2default:default2D
.rx_test_i/cfo_correction_0/util_vector_logic_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/bd/cfo_correction_inst_1/ip/cfo_correction_inst_1_util_vector_logic_0_0/cfo_correction_inst_1_util_vector_logic_0_0/cfo_correction_inst_0_util_vector_logic_0_0_in_context.xdc2default:default2D
.rx_test_i/cfo_correction_0/util_vector_logic_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_axi_gpio_0_1/rx_test_axi_gpio_0_1/rx_test_axi_gpio_0_0_in_context.xdc2default:default2,
rx_test_i/bypass_start	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_axi_gpio_0_1/rx_test_axi_gpio_0_1/rx_test_axi_gpio_0_0_in_context.xdc2default:default2,
rx_test_i/bypass_start	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_axis_data_fifo_1_1/rx_test_axis_data_fifo_1_1/rx_test_axis_data_fifo_1_0_in_context.xdc2default:default20
rx_test_i/axis_data_fifo_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_axis_data_fifo_1_1/rx_test_axis_data_fifo_1_1/rx_test_axis_data_fifo_1_0_in_context.xdc2default:default20
rx_test_i/axis_data_fifo_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_proc_sys_reset_1_1/rx_test_proc_sys_reset_1_1/rx_test_proc_sys_reset_1_0_in_context.xdc2default:default20
rx_test_i/proc_sys_reset_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_proc_sys_reset_1_1/rx_test_proc_sys_reset_1_1/rx_test_proc_sys_reset_1_0_in_context.xdc2default:default20
rx_test_i/proc_sys_reset_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_xbar_3/rx_test_xbar_3/rx_test_xbar_3_in_context.xdc2default:default25
rx_test_i/ps8_0_axi_periph/xbar	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_xbar_3/rx_test_xbar_3/rx_test_xbar_3_in_context.xdc2default:default25
rx_test_i/ps8_0_axi_periph/xbar	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_auto_pc_0/rx_test_auto_pc_0/rx_test_auto_pc_0_in_context.xdc2default:default2E
/rx_test_i/ps8_0_axi_periph/s00_couplers/auto_pc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_auto_pc_0/rx_test_auto_pc_0/rx_test_auto_pc_0_in_context.xdc2default:default2E
/rx_test_i/ps8_0_axi_periph/s00_couplers/auto_pc	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_system_ila_2_1/rx_test_system_ila_2_1/rx_test_system_ila_2_1_in_context.xdc2default:default2,
rx_test_i/system_ila_2	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_system_ila_2_1/rx_test_system_ila_2_1/rx_test_system_ila_2_1_in_context.xdc2default:default2,
rx_test_i/system_ila_2	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_tlast_gen_0_1/rx_test_tlast_gen_0_1/rx_test_tlast_gen_0_0_in_context.xdc2default:default2+
rx_test_i/tlast_gen_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_tlast_gen_0_1/rx_test_tlast_gen_0_1/rx_test_tlast_gen_0_0_in_context.xdc2default:default2+
rx_test_i/tlast_gen_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_zynq_ultra_ps_e_0_1/rx_test_zynq_ultra_ps_e_0_1/rx_test_zynq_ultra_ps_e_0_1_in_context.xdc2default:default21
rx_test_i/zynq_ultra_ps_e_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_zynq_ultra_ps_e_0_1/rx_test_zynq_ultra_ps_e_0_1/rx_test_zynq_ultra_ps_e_0_1_in_context.xdc2default:default21
rx_test_i/zynq_ultra_ps_e_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_axi_dma_0_1/rx_test_axi_dma_0_1/rx_test_axi_dma_0_1_in_context.xdc2default:default2)
rx_test_i/axi_dma_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_axi_dma_0_1/rx_test_axi_dma_0_1/rx_test_axi_dma_0_1_in_context.xdc2default:default2)
rx_test_i/axi_dma_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_axi_gpio_1_0/rx_test_axi_gpio_1_0/rx_test_axi_gpio_1_0_in_context.xdc2default:default20
rx_test_i/playback_symbols	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_axi_gpio_1_0/rx_test_axi_gpio_1_0/rx_test_axi_gpio_1_0_in_context.xdc2default:default20
rx_test_i/playback_symbols	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_playback_bram_0_0/rx_test_playback_bram_0_0/rx_test_playback_bram_0_0_in_context.xdc2default:default2/
rx_test_i/playback_bram_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_playback_bram_0_0/rx_test_playback_bram_0_0/rx_test_playback_bram_0_0_in_context.xdc2default:default2/
rx_test_i/playback_bram_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_blk_mem_gen_0_0/rx_test_blk_mem_gen_0_0/rx_test_blk_mem_gen_0_0_in_context.xdc2default:default2-
rx_test_i/blk_mem_gen_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.gen/sources_1/bd/rx_test/ip/rx_test_blk_mem_gen_0_0/rx_test_blk_mem_gen_0_0/rx_test_blk_mem_gen_0_0_in_context.xdc2default:default2-
rx_test_i/blk_mem_gen_0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2x
bc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2x
bc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2334.0232default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
2334.0232default:default2
0.0002default:defaultZ17-268h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2*
rx_test_i/bypass_start2default:default2

s_axi_aclk2default:default2
4.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2.
rx_test_i/playback_symbols2default:default2

s_axi_aclk2default:default2
4.0002default:defaultZ38-316h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2334.023 ; gain = 396.645
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
P
%s
*synth28
$Loading part: xczu28dr-ffvg1517-2-e
2default:defaulth p
x
? 
B
 Reading net delay rules and data4578*oasysZ8-6742h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2334.023 ; gain = 396.645
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2334.023 ; gain = 396.645
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2334.023 ; gain = 396.645
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2o
[Part Resources:
DSPs: 4272 (col length:192)
BRAMs: 2160 (col length: RAMB18 192 RAMB36 96)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ACLK2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ACLK2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ARESETN2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ACLK2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2default:default2.
rx_test_ps8_0_axi_periph_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2default:default20
rx_test_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESETN2default:default20
rx_test_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default20
rx_test_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default20
rx_test_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ACLK2default:default20
rx_test_axi_interconnect_0_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2default:default20
rx_test_axi_interconnect_0_12default:defaultZ8-7129h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2334.023 ; gain = 396.645
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2764.945 ; gain = 827.566
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2765.012 ; gain = 827.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2786.004 ; gain = 848.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2792.750 ; gain = 855.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2792.750 ; gain = 855.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2792.750 ; gain = 855.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2792.750 ; gain = 855.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2792.750 ; gain = 855.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2792.750 ; gain = 855.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+--------------------------------------------+----------+
2default:defaulth p
x
? 
m
%s
*synth2U
A|      |BlackBox name                               |Instances |
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+--------------------------------------------+----------+
2default:defaulth p
x
? 
m
%s
*synth2U
A|1     |cfo_correction_inst_1_angle_0_0             |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|2     |cfo_correction_inst_1_axis_data_fifo_0_0    |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|3     |cfo_correction_inst_1_axis_data_fifo_1_0    |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|4     |cfo_correction_inst_1_axis_splitter_0_0     |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|5     |cfo_correction_inst_1_axis_splitter_1_0     |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|6     |cfo_correction_inst_1_complex_mult_0_0      |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|7     |cfo_correction_inst_1_conj_0_1              |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|8     |cfo_correction_inst_1_conj_1_0              |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|9     |cfo_correction_inst_1_cp_rm2_0_0            |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|10    |cfo_correction_inst_1_cp_rm_0_0             |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|11    |cfo_correction_inst_1_delay_0_0             |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|12    |cfo_correction_inst_1_delay_1_0             |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|13    |cfo_correction_inst_1_mux_0_0               |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|14    |cfo_correction_inst_1_scale_0_0             |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|15    |cfo_correction_inst_1_sum_0_0               |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|16    |cfo_correction_inst_1_tlast_symbol_0_0      |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|17    |cfo_correction_inst_1_util_vector_logic_0_0 |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|18    |cfo_correction_inst_1_conj_0_0              |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|19    |cfo_correction_inst_1_dds_top_0_0           |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|20    |cfo_correction_inst_1_mixer_0_0             |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|21    |rx_test_xbar_3                              |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|22    |rx_test_auto_pc_0                           |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|23    |rx_test_axi_dma_0_1                         |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|24    |rx_test_axis_data_fifo_1_1                  |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|25    |rx_test_blk_mem_gen_0_0                     |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|26    |rx_test_axi_gpio_0_1                        |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|27    |rx_test_playback_bram_0_0                   |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|28    |rx_test_axi_gpio_1_0                        |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|29    |rx_test_proc_sys_reset_1_1                  |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|30    |rx_test_system_ila_2_1                      |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|31    |rx_test_tlast_gen_0_1                       |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A|32    |rx_test_zynq_ultra_ps_e_0_1                 |         1|
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+--------------------------------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
g
%s*synth2O
;+------+------------------------------------------+------+
2default:defaulth px? 
g
%s*synth2O
;|      |Cell                                      |Count |
2default:defaulth px? 
g
%s*synth2O
;+------+------------------------------------------+------+
2default:defaulth px? 
g
%s*synth2O
;|1     |cfo_correction_inst_1_angle_0             |     1|
2default:defaulth px? 
g
%s*synth2O
;|2     |cfo_correction_inst_1_axis_data_fifo_0    |     1|
2default:defaulth px? 
g
%s*synth2O
;|3     |cfo_correction_inst_1_axis_data_fifo_1    |     1|
2default:defaulth px? 
g
%s*synth2O
;|4     |cfo_correction_inst_1_axis_splitter_0     |     1|
2default:defaulth px? 
g
%s*synth2O
;|5     |cfo_correction_inst_1_axis_splitter_1     |     1|
2default:defaulth px? 
g
%s*synth2O
;|6     |cfo_correction_inst_1_complex_mult_0      |     1|
2default:defaulth px? 
g
%s*synth2O
;|7     |cfo_correction_inst_1_conj_0              |     2|
2default:defaulth px? 
g
%s*synth2O
;|9     |cfo_correction_inst_1_conj_1              |     1|
2default:defaulth px? 
g
%s*synth2O
;|10    |cfo_correction_inst_1_cp_rm2_0            |     1|
2default:defaulth px? 
g
%s*synth2O
;|11    |cfo_correction_inst_1_cp_rm_0             |     1|
2default:defaulth px? 
g
%s*synth2O
;|12    |cfo_correction_inst_1_dds_top_0           |     1|
2default:defaulth px? 
g
%s*synth2O
;|13    |cfo_correction_inst_1_delay_0             |     1|
2default:defaulth px? 
g
%s*synth2O
;|14    |cfo_correction_inst_1_delay_1             |     1|
2default:defaulth px? 
g
%s*synth2O
;|15    |cfo_correction_inst_1_mixer_0             |     1|
2default:defaulth px? 
g
%s*synth2O
;|16    |cfo_correction_inst_1_mux_0               |     1|
2default:defaulth px? 
g
%s*synth2O
;|17    |cfo_correction_inst_1_scale_0             |     1|
2default:defaulth px? 
g
%s*synth2O
;|18    |cfo_correction_inst_1_sum_0               |     1|
2default:defaulth px? 
g
%s*synth2O
;|19    |cfo_correction_inst_1_tlast_symbol_0      |     1|
2default:defaulth px? 
g
%s*synth2O
;|20    |cfo_correction_inst_1_util_vector_logic_0 |     1|
2default:defaulth px? 
g
%s*synth2O
;|21    |rx_test_auto_pc                           |     1|
2default:defaulth px? 
g
%s*synth2O
;|22    |rx_test_axi_dma_0                         |     1|
2default:defaulth px? 
g
%s*synth2O
;|23    |rx_test_axi_gpio_0                        |     1|
2default:defaulth px? 
g
%s*synth2O
;|24    |rx_test_axi_gpio_1                        |     1|
2default:defaulth px? 
g
%s*synth2O
;|25    |rx_test_axis_data_fifo_1                  |     1|
2default:defaulth px? 
g
%s*synth2O
;|26    |rx_test_blk_mem_gen_0                     |     1|
2default:defaulth px? 
g
%s*synth2O
;|27    |rx_test_playback_bram_0                   |     1|
2default:defaulth px? 
g
%s*synth2O
;|28    |rx_test_proc_sys_reset_1                  |     1|
2default:defaulth px? 
g
%s*synth2O
;|29    |rx_test_system_ila_2                      |     1|
2default:defaulth px? 
g
%s*synth2O
;|30    |rx_test_tlast_gen_0                       |     1|
2default:defaulth px? 
g
%s*synth2O
;|31    |rx_test_xbar                              |     1|
2default:defaulth px? 
g
%s*synth2O
;|32    |rx_test_zynq_ultra_ps_e_0                 |     1|
2default:defaulth px? 
g
%s*synth2O
;+------+------------------------------------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2792.750 ; gain = 855.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 15 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 2792.750 ; gain = 820.062
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2792.750 ; gain = 855.371
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0482default:default2
2792.7502default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2857.7732default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
8982f1522default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1192default:default2
902default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:222default:default2
00:00:242default:default2
2862.7732default:default2
1225.0472default:defaultZ17-268h px? 
?
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2{
gc:/Projects/pi-radio/HW/sims/cfo_correction_board/cfo_correction_board.runs/synth_1/rx_test_wrapper.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
tExecuting : report_utilization -file rx_test_wrapper_utilization_synth.rpt -pb rx_test_wrapper_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Oct 21 11:06:17 20222default:defaultZ17-206h px? 


End Record