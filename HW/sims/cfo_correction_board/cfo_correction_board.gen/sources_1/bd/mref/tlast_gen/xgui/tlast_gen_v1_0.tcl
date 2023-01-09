# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "g_TDATA_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_TLAST_CYCLES" -parent ${Page_0}


}

proc update_PARAM_VALUE.g_TDATA_BITS { PARAM_VALUE.g_TDATA_BITS } {
	# Procedure called to update g_TDATA_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_TDATA_BITS { PARAM_VALUE.g_TDATA_BITS } {
	# Procedure called to validate g_TDATA_BITS
	return true
}

proc update_PARAM_VALUE.g_TLAST_CYCLES { PARAM_VALUE.g_TLAST_CYCLES } {
	# Procedure called to update g_TLAST_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_TLAST_CYCLES { PARAM_VALUE.g_TLAST_CYCLES } {
	# Procedure called to validate g_TLAST_CYCLES
	return true
}


proc update_MODELPARAM_VALUE.g_TLAST_CYCLES { MODELPARAM_VALUE.g_TLAST_CYCLES PARAM_VALUE.g_TLAST_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_TLAST_CYCLES}] ${MODELPARAM_VALUE.g_TLAST_CYCLES}
}

proc update_MODELPARAM_VALUE.g_TDATA_BITS { MODELPARAM_VALUE.g_TDATA_BITS PARAM_VALUE.g_TDATA_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_TDATA_BITS}] ${MODELPARAM_VALUE.g_TDATA_BITS}
}

