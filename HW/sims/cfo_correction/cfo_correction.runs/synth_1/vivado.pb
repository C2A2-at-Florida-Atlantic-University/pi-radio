
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
1666.1802default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.srcs/utils_1/imports/synth_1/cfo_correction_wrapper.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
rC:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.srcs/utils_1/imports/synth_1/cfo_correction_wrapper.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
?
Command: %s
53*	vivadotcl2X
Dsynth_design -top cfo_correction_wrapper -part xczu28dr-ffvg1517-2-e2default:defaultZ4-113h px? 
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
234522default:defaultZ8-7075h px? 
?
Ygenerate block is allowed only inside loop and conditional generate in SystemVerilog mode5759*oasys2Y
CC:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
40232default:default8@Z8-9501h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2131.172 ; gain = 272.230
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2*
cfo_correction_wrapper2default:default2
 2default:default2?
wC:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/hdl/cfo_correction_wrapper.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2"
cfo_correction2default:default2
 2default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
1322default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2%
Mixer_imp_1KVXAAW2default:default2
 2default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2+
cfo_correction_conj_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_conj_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
cfo_correction_conj_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_conj_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
cfo_correction_dds_top_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_dds_top_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
cfo_correction_dds_top_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_dds_top_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
cfo_correction_mixer_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_mixer_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
cfo_correction_mixer_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_mixer_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
Mixer_imp_1KVXAAW2default:default2
 2default:default2
02default:default2
12default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
122default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
cfo_correction_angle_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_angle_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
cfo_correction_angle_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_angle_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axis_tuser2default:default2,
cfo_correction_angle_0_02default:default2
angle_02default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
2942default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

m_axis_tid2default:default2,
cfo_correction_angle_0_02default:default2
angle_02default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
2942default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axis_tlast2default:default2,
cfo_correction_angle_0_02default:default2
angle_02default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
2942default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
angle_02default:default2,
cfo_correction_angle_0_02default:default2
122default:default2
92default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
2942default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys25
!cfo_correction_axis_data_fifo_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_axis_data_fifo_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!cfo_correction_axis_data_fifo_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_axis_data_fifo_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
s_axis_tready2default:default25
!cfo_correction_axis_data_fifo_0_02default:default2$
axis_data_fifo_02default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
3042default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2$
axis_data_fifo_02default:default25
!cfo_correction_axis_data_fifo_0_02default:default2
142default:default2
132default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
3042default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys25
!cfo_correction_axis_data_fifo_1_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_axis_data_fifo_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!cfo_correction_axis_data_fifo_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_axis_data_fifo_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
s_axis_tready2default:default25
!cfo_correction_axis_data_fifo_1_02default:default2$
axis_data_fifo_12default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
3182default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2$
axis_data_fifo_12default:default25
!cfo_correction_axis_data_fifo_1_02default:default2
142default:default2
132default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
3182default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys24
 cfo_correction_axis_splitter_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_axis_splitter_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 cfo_correction_axis_splitter_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_axis_splitter_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 cfo_correction_axis_splitter_1_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_axis_splitter_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 cfo_correction_axis_splitter_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_axis_splitter_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
cfo_correction_complex_mult_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_complex_mult_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
cfo_correction_complex_mult_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_complex_mult_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
cfo_correction_conj_0_12default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_conj_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
cfo_correction_conj_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_conj_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
cfo_correction_conj_1_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_conj_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
cfo_correction_conj_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_conj_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2-
cfo_correction_cp_rm2_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_cp_rm2_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
cfo_correction_cp_rm2_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_cp_rm2_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
cfo_correction_cp_rm_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_cp_rm_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
cfo_correction_cp_rm_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_cp_rm_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
o_symbol_number2default:default2,
cfo_correction_cp_rm_0_02default:default2
cp_rm_02default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
4282default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
cp_rm_02default:default2,
cfo_correction_cp_rm_0_02default:default2
192default:default2
182default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
4282default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2,
cfo_correction_delay_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_delay_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
cfo_correction_delay_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_delay_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
cfo_correction_delay_1_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_delay_1_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
cfo_correction_delay_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_delay_1_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
cfo_correction_mux_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_mux_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
cfo_correction_mux_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_mux_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
s_axis0_tready2default:default2*
cfo_correction_mux_0_02default:default2
mux_02default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
4772default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
s_axis1_tready2default:default2*
cfo_correction_mux_0_02default:default2
mux_02default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
4772default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
mux_02default:default2*
cfo_correction_mux_0_02default:default2
202default:default2
182default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
4772default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2,
cfo_correction_scale_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_scale_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
cfo_correction_scale_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_scale_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
cfo_correction_sum_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_sum_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
cfo_correction_sum_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_sum_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys28
$cfo_correction_util_vector_logic_0_02default:default2
 2default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_util_vector_logic_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$cfo_correction_util_vector_logic_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/.Xil/Vivado-23088-DESKTOP-1UDCE0K/realtime/cfo_correction_util_vector_logic_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
cfo_correction_xlconstant_0_02default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_xlconstant_0_0/synth/cfo_correction_xlconstant_0_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
cfo_correction_xlconstant_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_xlconstant_0_0/synth/cfo_correction_xlconstant_0_0.v2default:default2
532default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
cfo_correction2default:default2
 2default:default2
02default:default2
12default:default2?
qc:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/synth/cfo_correction.v2default:default2
1322default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
cfo_correction_wrapper2default:default2
 2default:default2
02default:default2
12default:default2?
wC:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/hdl/cfo_correction_wrapper.v2default:default2
122default:default8@Z8-6155h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2194.289 ; gain = 335.348
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2213.219 ; gain = 354.277
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2213.219 ; gain = 354.277
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
00:00:00.0272default:default2
2213.2192default:default2
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
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_0_0/cfo_correction_conj_0_0/cfo_correction_conj_0_0_in_context.xdc2default:default23
cfo_correction_i/Mixer/conj_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_0_0/cfo_correction_conj_0_0/cfo_correction_conj_0_0_in_context.xdc2default:default23
cfo_correction_i/Mixer/conj_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_dds_top_0_0/cfo_correction_dds_top_0_0/cfo_correction_dds_top_0_0_in_context.xdc2default:default26
 cfo_correction_i/Mixer/dds_top_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_dds_top_0_0/cfo_correction_dds_top_0_0/cfo_correction_dds_top_0_0_in_context.xdc2default:default26
 cfo_correction_i/Mixer/dds_top_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_mixer_0_0/cfo_correction_mixer_0_0/cfo_correction_mixer_0_0_in_context.xdc2default:default24
cfo_correction_i/Mixer/mixer_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_mixer_0_0/cfo_correction_mixer_0_0/cfo_correction_mixer_0_0_in_context.xdc2default:default24
cfo_correction_i/Mixer/mixer_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_angle_0_0/cfo_correction_angle_0_0/cfo_correction_angle_0_0_in_context.xdc2default:default2.
cfo_correction_i/angle_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_angle_0_0/cfo_correction_angle_0_0/cfo_correction_angle_0_0_in_context.xdc2default:default2.
cfo_correction_i/angle_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_data_fifo_0_0/cfo_correction_axis_data_fifo_0_0/cfo_correction_axis_data_fifo_0_0_in_context.xdc2default:default27
!cfo_correction_i/axis_data_fifo_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_data_fifo_0_0/cfo_correction_axis_data_fifo_0_0/cfo_correction_axis_data_fifo_0_0_in_context.xdc2default:default27
!cfo_correction_i/axis_data_fifo_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_data_fifo_1_0/cfo_correction_axis_data_fifo_1_0/cfo_correction_axis_data_fifo_1_0_in_context.xdc2default:default27
!cfo_correction_i/axis_data_fifo_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_data_fifo_1_0/cfo_correction_axis_data_fifo_1_0/cfo_correction_axis_data_fifo_1_0_in_context.xdc2default:default27
!cfo_correction_i/axis_data_fifo_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_splitter_0_0/cfo_correction_axis_splitter_0_0/cfo_correction_axis_splitter_0_0_in_context.xdc2default:default26
 cfo_correction_i/axis_splitter_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_splitter_0_0/cfo_correction_axis_splitter_0_0/cfo_correction_axis_splitter_0_0_in_context.xdc2default:default26
 cfo_correction_i/axis_splitter_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_splitter_1_0/cfo_correction_axis_splitter_1_0/cfo_correction_axis_splitter_1_0_in_context.xdc2default:default26
 cfo_correction_i/axis_splitter_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_splitter_1_0/cfo_correction_axis_splitter_1_0/cfo_correction_axis_splitter_1_0_in_context.xdc2default:default26
 cfo_correction_i/axis_splitter_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_complex_mult_0_0/cfo_correction_complex_mult_0_0/cfo_correction_complex_mult_0_0_in_context.xdc2default:default25
cfo_correction_i/complex_mult_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_complex_mult_0_0/cfo_correction_complex_mult_0_0/cfo_correction_complex_mult_0_0_in_context.xdc2default:default25
cfo_correction_i/complex_mult_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_0_1/cfo_correction_conj_0_1/cfo_correction_conj_0_1_in_context.xdc2default:default2-
cfo_correction_i/conj_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_0_1/cfo_correction_conj_0_1/cfo_correction_conj_0_1_in_context.xdc2default:default2-
cfo_correction_i/conj_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_1_0/cfo_correction_conj_1_0/cfo_correction_conj_1_0_in_context.xdc2default:default2-
cfo_correction_i/conj_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_1_0/cfo_correction_conj_1_0/cfo_correction_conj_1_0_in_context.xdc2default:default2-
cfo_correction_i/conj_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_cp_rm2_0_0/cfo_correction_cp_rm2_0_0/cfo_correction_cp_rm2_0_0_in_context.xdc2default:default2/
cfo_correction_i/cp_rm2_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_cp_rm2_0_0/cfo_correction_cp_rm2_0_0/cfo_correction_cp_rm2_0_0_in_context.xdc2default:default2/
cfo_correction_i/cp_rm2_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_delay_0_0/cfo_correction_delay_0_0/cfo_correction_delay_0_0_in_context.xdc2default:default2.
cfo_correction_i/delay_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_delay_0_0/cfo_correction_delay_0_0/cfo_correction_delay_0_0_in_context.xdc2default:default2.
cfo_correction_i/delay_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_delay_1_0/cfo_correction_delay_1_0/cfo_correction_delay_1_0_in_context.xdc2default:default2.
cfo_correction_i/delay_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_delay_1_0/cfo_correction_delay_1_0/cfo_correction_delay_1_0_in_context.xdc2default:default2.
cfo_correction_i/delay_1	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_mux_0_0/cfo_correction_mux_0_0/cfo_correction_mux_0_0_in_context.xdc2default:default2,
cfo_correction_i/mux_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_mux_0_0/cfo_correction_mux_0_0/cfo_correction_mux_0_0_in_context.xdc2default:default2,
cfo_correction_i/mux_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_scale_0_0/cfo_correction_scale_0_0/cfo_correction_scale_0_0_in_context.xdc2default:default2.
cfo_correction_i/scale_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_scale_0_0/cfo_correction_scale_0_0/cfo_correction_scale_0_0_in_context.xdc2default:default2.
cfo_correction_i/scale_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_sum_0_0/cfo_correction_sum_0_0/cfo_correction_sum_0_0_in_context.xdc2default:default2,
cfo_correction_i/sum_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_sum_0_0/cfo_correction_sum_0_0/cfo_correction_sum_0_0_in_context.xdc2default:default2,
cfo_correction_i/sum_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_util_vector_logic_0_0/cfo_correction_util_vector_logic_0_0/cfo_correction_util_vector_logic_0_0_in_context.xdc2default:default2:
$cfo_correction_i/util_vector_logic_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_util_vector_logic_0_0/cfo_correction_util_vector_logic_0_0/cfo_correction_util_vector_logic_0_0_in_context.xdc2default:default2:
$cfo_correction_i/util_vector_logic_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_cp_rm_0_0/cfo_correction_cp_rm_0_0/cfo_correction_cp_rm_0_0_in_context.xdc2default:default2.
cfo_correction_i/cp_rm_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_cp_rm_0_0/cfo_correction_cp_rm_0_0/cfo_correction_cp_rm_0_0_in_context.xdc2default:default2.
cfo_correction_i/cp_rm_0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2l
VC:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2l
VC:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2242.3712default:default2
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
00:00:00.0042default:default2
2242.3712default:default2
0.0002default:defaultZ17-268h px? 
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
Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 2242.371 ; gain = 383.430
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 2242.371 ; gain = 383.430
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 2242.371 ; gain = 383.430
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2242.371 ; gain = 383.430
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2242.371 ; gain = 383.430
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2685.391 ; gain = 826.449
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
}Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2685.836 ; gain = 826.895
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
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2706.043 ; gain = 847.102
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
vFinished IO Insertion : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2710.848 ; gain = 851.906
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2710.848 ; gain = 851.906
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2710.848 ; gain = 851.906
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2710.848 ; gain = 851.906
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2710.848 ; gain = 851.906
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2710.848 ; gain = 851.906
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
f
%s
*synth2N
:+------+-------------------------------------+----------+
2default:defaulth p
x
? 
f
%s
*synth2N
:|      |BlackBox name                        |Instances |
2default:defaulth p
x
? 
f
%s
*synth2N
:+------+-------------------------------------+----------+
2default:defaulth p
x
? 
f
%s
*synth2N
:|1     |cfo_correction_angle_0_0             |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|2     |cfo_correction_axis_data_fifo_0_0    |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|3     |cfo_correction_axis_data_fifo_1_0    |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|4     |cfo_correction_axis_splitter_0_0     |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|5     |cfo_correction_axis_splitter_1_0     |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|6     |cfo_correction_complex_mult_0_0      |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|7     |cfo_correction_conj_0_1              |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|8     |cfo_correction_conj_1_0              |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|9     |cfo_correction_cp_rm2_0_0            |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|10    |cfo_correction_cp_rm_0_0             |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|11    |cfo_correction_delay_0_0             |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|12    |cfo_correction_delay_1_0             |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|13    |cfo_correction_mux_0_0               |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|14    |cfo_correction_scale_0_0             |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|15    |cfo_correction_sum_0_0               |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|16    |cfo_correction_util_vector_logic_0_0 |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|17    |cfo_correction_conj_0_0              |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|18    |cfo_correction_dds_top_0_0           |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:|19    |cfo_correction_mixer_0_0             |         1|
2default:defaulth p
x
? 
f
%s
*synth2N
:+------+-------------------------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
`
%s*synth2H
4+------+-----------------------------------+------+
2default:defaulth px? 
`
%s*synth2H
4|      |Cell                               |Count |
2default:defaulth px? 
`
%s*synth2H
4+------+-----------------------------------+------+
2default:defaulth px? 
`
%s*synth2H
4|1     |cfo_correction_angle_0             |     1|
2default:defaulth px? 
`
%s*synth2H
4|2     |cfo_correction_axis_data_fifo_0    |     1|
2default:defaulth px? 
`
%s*synth2H
4|3     |cfo_correction_axis_data_fifo_1    |     1|
2default:defaulth px? 
`
%s*synth2H
4|4     |cfo_correction_axis_splitter_0     |     1|
2default:defaulth px? 
`
%s*synth2H
4|5     |cfo_correction_axis_splitter_1     |     1|
2default:defaulth px? 
`
%s*synth2H
4|6     |cfo_correction_complex_mult_0      |     1|
2default:defaulth px? 
`
%s*synth2H
4|7     |cfo_correction_conj_0              |     2|
2default:defaulth px? 
`
%s*synth2H
4|9     |cfo_correction_conj_1              |     1|
2default:defaulth px? 
`
%s*synth2H
4|10    |cfo_correction_cp_rm2_0            |     1|
2default:defaulth px? 
`
%s*synth2H
4|11    |cfo_correction_cp_rm_0             |     1|
2default:defaulth px? 
`
%s*synth2H
4|12    |cfo_correction_dds_top_0           |     1|
2default:defaulth px? 
`
%s*synth2H
4|13    |cfo_correction_delay_0             |     1|
2default:defaulth px? 
`
%s*synth2H
4|14    |cfo_correction_delay_1             |     1|
2default:defaulth px? 
`
%s*synth2H
4|15    |cfo_correction_mixer_0             |     1|
2default:defaulth px? 
`
%s*synth2H
4|16    |cfo_correction_mux_0               |     1|
2default:defaulth px? 
`
%s*synth2H
4|17    |cfo_correction_scale_0             |     1|
2default:defaulth px? 
`
%s*synth2H
4|18    |cfo_correction_sum_0               |     1|
2default:defaulth px? 
`
%s*synth2H
4|19    |cfo_correction_util_vector_logic_0 |     1|
2default:defaulth px? 
`
%s*synth2H
4|20    |IBUF                               |   150|
2default:defaulth px? 
`
%s*synth2H
4|21    |OBUF                               |   146|
2default:defaulth px? 
`
%s*synth2H
4+------+-----------------------------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2710.848 ; gain = 851.906
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 2710.848 ; gain = 822.754
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2710.848 ; gain = 851.906
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
00:00:00.0272default:default2
2722.8872default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1502default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
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
2768.8052default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2q
]  A total of 150 instances were transformed.
  IBUF => IBUF (IBUFCTRL, INBUF): 150 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
a928ed342default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
722default:default2
152default:default2
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
00:00:182default:default2
00:00:202default:default2
2768.8052default:default2
1102.6252default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2v
bC:/Projects/pi-radio/HW/sims/cfo_correction/cfo_correction.runs/synth_1/cfo_correction_wrapper.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_utilization -file cfo_correction_wrapper_utilization_synth.rpt -pb cfo_correction_wrapper_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Oct 10 21:42:09 20222default:defaultZ17-206h px? 


End Record