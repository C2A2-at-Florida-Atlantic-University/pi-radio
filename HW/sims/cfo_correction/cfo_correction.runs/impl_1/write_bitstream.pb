
?
?The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2?
ucfo_correction_i/axis_data_fifo_1/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default25
!cfo_correction_i/axis_data_fifo_12default:defaultZ28-208h px? 
?
?The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2?
ucfo_correction_i/axis_data_fifo_0/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default25
!cfo_correction_i/axis_data_fifo_02default:defaultZ28-208h px? 
v
Command: %s
53*	vivadotcl2E
1write_bitstream -force cfo_correction_wrapper.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu28dr2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu28dr2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Unspecified I/O Standard: 295 out of 295 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2?
 "$
bypassbypass2default:default"0
axis_aresetnaxis_aresetn2default:default"7
s_axis_tdata[127:0]s_axis_tdata2default:default"5
s_axis_tuser[7:0]s_axis_tuser2default:default"1
s_axis_tid[7:0]
s_axis_tid2default:default"0
s_axis_tlasts_axis_tlast2default:default"2
s_axis_tvalids_axis_tvalid2default:default"*
	axis_aclk	axis_aclk2default:default"7
m_axis_tdata[127:0]m_axis_tdata2default:default"6
m_axis_tstrb[15:0]m_axis_tstrb2default:default"0
m_axis_tlastm_axis_tlast2default:default"2
m_axis_tvalidm_axis_tvalid2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px? 
?
?Unconstrained Logical Port: 295 out of 295 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2?
 "$
bypassbypass2default:default"0
axis_aresetnaxis_aresetn2default:default"7
s_axis_tdata[127:0]s_axis_tdata2default:default"5
s_axis_tuser[7:0]s_axis_tuser2default:default"1
s_axis_tid[7:0]
s_axis_tid2default:default"0
s_axis_tlasts_axis_tlast2default:default"2
s_axis_tvalids_axis_tvalid2default:default"*
	axis_aclk	axis_aclk2default:default"7
m_axis_tdata[127:0]m_axis_tdata2default:default"6
m_axis_tstrb[15:0]m_axis_tstrb2default:default"0
m_axis_tlastm_axis_tlast2default:default"2
m_axis_tvalidm_axis_tvalid2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px? 
?
?enum_AMULTSEL_BMULTSEL_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E2 is not using the D port (AMULTSEL = A and BMULTSEL = B). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2?
 "?
xcfo_correction_i/scale_0/inst/dsp_macro_0_inst/U0/i_synth/i_synth_option.i_synth_model/opt_8series.i_uniwrap/i_primitive	xcfo_correction_i/scale_0/inst/dsp_macro_0_inst/U0/i_synth/i_synth_option.i_synth_model/opt_8series.i_uniwrap/i_primitive2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E22default:default8ZAVAL-155h px? 
h
DRC finished with %s
1905*	planAhead2*
2 Errors, 1 Advisories2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
02default:default2
02default:default2
32default:defaultZ4-41h px? 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Oct 10 21:45:57 20222default:defaultZ17-206h px? 


End Record