# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "g_ACTIVE_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_DELAY_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_QUIET_CYCLES" -parent ${Page_0}


}

proc update_PARAM_VALUE.g_ACTIVE_CYCLES { PARAM_VALUE.g_ACTIVE_CYCLES } {
	# Procedure called to update g_ACTIVE_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_ACTIVE_CYCLES { PARAM_VALUE.g_ACTIVE_CYCLES } {
	# Procedure called to validate g_ACTIVE_CYCLES
	return true
}

proc update_PARAM_VALUE.g_DELAY_CYCLES { PARAM_VALUE.g_DELAY_CYCLES } {
	# Procedure called to update g_DELAY_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_DELAY_CYCLES { PARAM_VALUE.g_DELAY_CYCLES } {
	# Procedure called to validate g_DELAY_CYCLES
	return true
}

proc update_PARAM_VALUE.g_QUIET_CYCLES { PARAM_VALUE.g_QUIET_CYCLES } {
	# Procedure called to update g_QUIET_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_QUIET_CYCLES { PARAM_VALUE.g_QUIET_CYCLES } {
	# Procedure called to validate g_QUIET_CYCLES
	return true
}


proc update_MODELPARAM_VALUE.g_DELAY_CYCLES { MODELPARAM_VALUE.g_DELAY_CYCLES PARAM_VALUE.g_DELAY_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_DELAY_CYCLES}] ${MODELPARAM_VALUE.g_DELAY_CYCLES}
}

proc update_MODELPARAM_VALUE.g_ACTIVE_CYCLES { MODELPARAM_VALUE.g_ACTIVE_CYCLES PARAM_VALUE.g_ACTIVE_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_ACTIVE_CYCLES}] ${MODELPARAM_VALUE.g_ACTIVE_CYCLES}
}

proc update_MODELPARAM_VALUE.g_QUIET_CYCLES { MODELPARAM_VALUE.g_QUIET_CYCLES PARAM_VALUE.g_QUIET_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_QUIET_CYCLES}] ${MODELPARAM_VALUE.g_QUIET_CYCLES}
}

