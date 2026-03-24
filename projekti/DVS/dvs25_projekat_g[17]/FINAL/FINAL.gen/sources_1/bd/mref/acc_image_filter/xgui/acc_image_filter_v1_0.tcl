# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_IMG_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_IMG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_RADIOUS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RADIUS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_S_AXI_LITE_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_S_AXI_LITE_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_IMG_SIZE { PARAM_VALUE.C_IMG_SIZE } {
	# Procedure called to update C_IMG_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IMG_SIZE { PARAM_VALUE.C_IMG_SIZE } {
	# Procedure called to validate C_IMG_SIZE
	return true
}

proc update_PARAM_VALUE.C_MAX_IMG_WIDTH { PARAM_VALUE.C_MAX_IMG_WIDTH } {
	# Procedure called to update C_MAX_IMG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_IMG_WIDTH { PARAM_VALUE.C_MAX_IMG_WIDTH } {
	# Procedure called to validate C_MAX_IMG_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_RADIOUS { PARAM_VALUE.C_MAX_RADIOUS } {
	# Procedure called to update C_MAX_RADIOUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_RADIOUS { PARAM_VALUE.C_MAX_RADIOUS } {
	# Procedure called to validate C_MAX_RADIOUS
	return true
}

proc update_PARAM_VALUE.C_RADIUS { PARAM_VALUE.C_RADIUS } {
	# Procedure called to update C_RADIUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RADIUS { PARAM_VALUE.C_RADIUS } {
	# Procedure called to validate C_RADIUS
	return true
}

proc update_PARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to update G_S_AXI_LITE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to validate G_S_AXI_LITE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH { PARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to update G_S_AXI_LITE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH { PARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to validate G_S_AXI_LITE_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_MAX_IMG_WIDTH { MODELPARAM_VALUE.C_MAX_IMG_WIDTH PARAM_VALUE.C_MAX_IMG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_IMG_WIDTH}] ${MODELPARAM_VALUE.C_MAX_IMG_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAX_RADIOUS { MODELPARAM_VALUE.C_MAX_RADIOUS PARAM_VALUE.C_MAX_RADIOUS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_RADIOUS}] ${MODELPARAM_VALUE.C_MAX_RADIOUS}
}

proc update_MODELPARAM_VALUE.C_RADIUS { MODELPARAM_VALUE.C_RADIUS PARAM_VALUE.C_RADIUS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RADIUS}] ${MODELPARAM_VALUE.C_RADIUS}
}

proc update_MODELPARAM_VALUE.C_IMG_SIZE { MODELPARAM_VALUE.C_IMG_SIZE PARAM_VALUE.C_IMG_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IMG_SIZE}] ${MODELPARAM_VALUE.C_IMG_SIZE}
}

proc update_MODELPARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH { MODELPARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH PARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH}] ${MODELPARAM_VALUE.G_S_AXI_LITE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH { MODELPARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH PARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH}] ${MODELPARAM_VALUE.G_S_AXI_LITE_DATA_WIDTH}
}

