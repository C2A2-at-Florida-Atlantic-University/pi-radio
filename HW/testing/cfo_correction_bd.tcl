
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2022.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   common::send_gid_msg -ssname BD::TCL -id 2040 -severity "WARNING" "This script was generated using Vivado <$scripts_vivado_version> without IP versions in the create_bd_cell commands, but is now being run in <$current_vivado_version> of Vivado. There may have been major IP version changes between Vivado <$scripts_vivado_version> and <$current_vivado_version>, which could impact the parameter settings of the IPs."

}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# angle, axis_splitter, axis_splitter, complex_mult, conj, conj, cp_rm2, cp_rm, delay, delay, mux, scale, sum, conj, dds_top, mixer

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu28dr-ffvg1517-2-e
   set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name cfo_correction

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axis_data_fifo:*\
xilinx.com:ip:util_vector_logic:*\
xilinx.com:ip:xlconstant:*\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
angle\
axis_splitter\
axis_splitter\
complex_mult\
conj\
conj\
cp_rm2\
cp_rm\
delay\
delay\
mux\
scale\
sum\
conj\
dds_top\
mixer\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: Mixer
proc create_hier_cell_Mixer { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Mixer() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis0


  # Create pins
  create_bd_pin -dir I i_negative_freq
  create_bd_pin -dir I -type clk s_axis_aclk_0
  create_bd_pin -dir I -type rst s_axis_aresetn_0

  # Create instance: conj_0, and set properties
  set block_name conj
  set block_cell_name conj_0
  if { [catch {set conj_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $conj_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dds_top_0, and set properties
  set block_name dds_top
  set block_cell_name dds_top_0
  if { [catch {set dds_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dds_top_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /Mixer/dds_top_0/m_axis]

  # Create instance: mixer_0, and set properties
  set block_name mixer
  set block_cell_name mixer_0
  if { [catch {set mixer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mixer_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins m_axis_0] [get_bd_intf_pins mixer_0/m_axis]
  connect_bd_intf_net -intf_net angle_0_m_axis [get_bd_intf_pins s_axis] [get_bd_intf_pins dds_top_0/s_axis]
  connect_bd_intf_net -intf_net conj_0_m_axis [get_bd_intf_pins conj_0/m_axis] [get_bd_intf_pins mixer_0/s_axis1]
  connect_bd_intf_net -intf_net dds_top_0_m_axis [get_bd_intf_pins conj_0/s_axis] [get_bd_intf_pins dds_top_0/m_axis]
  connect_bd_intf_net -intf_net delay_1_m_axis [get_bd_intf_pins s_axis0] [get_bd_intf_pins mixer_0/s_axis0]

  # Create port connections
  connect_bd_net -net i_negative_freq_1 [get_bd_pins i_negative_freq] [get_bd_pins conj_0/i_negative_freq]
  connect_bd_net -net s_axis_aclk_0_1 [get_bd_pins s_axis_aclk_0] [get_bd_pins conj_0/axis_aclk] [get_bd_pins dds_top_0/axis_aclk] [get_bd_pins mixer_0/axis_aclk]
  connect_bd_net -net s_axis_aresetn_0_1 [get_bd_pins s_axis_aresetn_0] [get_bd_pins conj_0/axis_aresetn] [get_bd_pins dds_top_0/axis_aresetn] [get_bd_pins mixer_0/axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   ] $m_axis

  set s_axis [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {0} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {16} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {8} \
   CONFIG.TUSER_WIDTH {8} \
   ] $s_axis


  # Create ports
  set axis_aclk [ create_bd_port -dir I -type clk -freq_hz 250000000 axis_aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {s_axis:m_axis} \
   CONFIG.ASSOCIATED_RESET {axis_aresetn} \
 ] $axis_aclk
  set axis_aresetn [ create_bd_port -dir I -type rst axis_aresetn ]
  set bypass [ create_bd_port -dir I bypass ]

  # Create instance: Mixer
  create_hier_cell_Mixer [current_bd_instance .] Mixer

  # Create instance: angle_0, and set properties
  set block_name angle
  set block_cell_name angle_0
  if { [catch {set angle_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $angle_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo axis_data_fifo_0 ]

  # Create instance: axis_data_fifo_1, and set properties
  set axis_data_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo axis_data_fifo_1 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
 ] $axis_data_fifo_1

  # Create instance: axis_splitter_0, and set properties
  set block_name axis_splitter
  set block_cell_name axis_splitter_0
  if { [catch {set axis_splitter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axis_splitter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /axis_splitter_0/m_axis0]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /axis_splitter_0/m_axis1]

  # Create instance: axis_splitter_1, and set properties
  set block_name axis_splitter
  set block_cell_name axis_splitter_1
  if { [catch {set axis_splitter_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axis_splitter_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: complex_mult_0, and set properties
  set block_name complex_mult
  set block_cell_name complex_mult_0
  if { [catch {set complex_mult_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $complex_mult_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: conj_0, and set properties
  set block_name conj
  set block_cell_name conj_0
  if { [catch {set conj_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $conj_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /conj_0/m_axis]

  # Create instance: conj_1, and set properties
  set block_name conj
  set block_cell_name conj_1
  if { [catch {set conj_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $conj_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cp_rm2_0, and set properties
  set block_name cp_rm2
  set block_cell_name cp_rm2_0
  if { [catch {set cp_rm2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cp_rm2_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /cp_rm2_0/m_axis]

  # Create instance: cp_rm_0, and set properties
  set block_name cp_rm
  set block_cell_name cp_rm_0
  if { [catch {set cp_rm_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cp_rm_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: delay_0, and set properties
  set block_name delay
  set block_cell_name delay_0
  if { [catch {set delay_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $delay_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.g_ACTIVE_CYCLES {64} \
   CONFIG.g_DELAY_CYCLES {253} \
   CONFIG.g_QUIET_CYCLES {256} \
 ] $delay_0

  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /delay_0/m_axis]

  # Create instance: delay_1, and set properties
  set block_name delay
  set block_cell_name delay_1
  if { [catch {set delay_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $delay_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.g_DELAY_CYCLES {310} \
 ] $delay_1

  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /delay_1/m_axis]

  # Create instance: mux_0, and set properties
  set block_name mux
  set block_cell_name mux_0
  if { [catch {set mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: scale_0, and set properties
  set block_name scale
  set block_cell_name scale_0
  if { [catch {set scale_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $scale_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /scale_0/m_axis]

  # Create instance: sum_0, and set properties
  set block_name sum
  set block_cell_name sum_0
  if { [catch {set sum_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sum_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] [get_bd_intf_pins /sum_0/m_axis]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net Mixer_m_axis_0 [get_bd_intf_pins Mixer/m_axis_0] [get_bd_intf_pins mux_0/s_axis0]
  connect_bd_intf_net -intf_net angle_0_m_axis [get_bd_intf_pins angle_0/m_axis] [get_bd_intf_pins scale_0/s_axis]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axis_data_fifo_0/M_AXIS] [get_bd_intf_pins delay_0/s_axis]
  connect_bd_intf_net -intf_net axis_data_fifo_1_M_AXIS [get_bd_intf_pins axis_data_fifo_1/M_AXIS] [get_bd_intf_pins delay_1/s_axis]
  connect_bd_intf_net -intf_net axis_splitter_0_m_axis0 [get_bd_intf_pins axis_splitter_0/m_axis0] [get_bd_intf_pins cp_rm2_0/s_axis]
  connect_bd_intf_net -intf_net axis_splitter_0_m_axis1 [get_bd_intf_pins axis_splitter_0/m_axis1] [get_bd_intf_pins axis_splitter_1/s_axis]
  connect_bd_intf_net -intf_net axis_splitter_1_m_axis0 [get_bd_intf_pins axis_data_fifo_1/S_AXIS] [get_bd_intf_pins axis_splitter_1/m_axis0]
  connect_bd_intf_net -intf_net axis_splitter_1_m_axis1 [get_bd_intf_pins axis_splitter_1/m_axis1] [get_bd_intf_pins mux_0/s_axis1]
  connect_bd_intf_net -intf_net complex_mult_0_m_axis [get_bd_intf_pins complex_mult_0/m_axis] [get_bd_intf_pins sum_0/s_axis]
  connect_bd_intf_net -intf_net conj_0_m_axis [get_bd_intf_pins axis_data_fifo_0/S_AXIS] [get_bd_intf_pins conj_0/m_axis]
  connect_bd_intf_net -intf_net conj_1_m_axis [get_bd_intf_pins Mixer/s_axis0] [get_bd_intf_pins conj_1/m_axis]
  connect_bd_intf_net -intf_net cp_rm2_0_m_axis [get_bd_intf_pins complex_mult_0/s_axis1] [get_bd_intf_pins cp_rm2_0/m_axis]
  connect_bd_intf_net -intf_net cp_rm_0_m_axis [get_bd_intf_pins axis_splitter_0/s_axis] [get_bd_intf_pins cp_rm_0/m_axis]
  connect_bd_intf_net -intf_net cp_rm_0_m_cp_axis [get_bd_intf_pins conj_0/s_axis] [get_bd_intf_pins cp_rm_0/m_cp_axis]
  connect_bd_intf_net -intf_net delay_0_m_axis [get_bd_intf_pins complex_mult_0/s_axis0] [get_bd_intf_pins delay_0/m_axis]
  connect_bd_intf_net -intf_net delay_1_m_axis [get_bd_intf_pins conj_1/s_axis] [get_bd_intf_pins delay_1/m_axis]
  connect_bd_intf_net -intf_net mux_0_m_axis [get_bd_intf_ports m_axis] [get_bd_intf_pins mux_0/m_axis]
  connect_bd_intf_net -intf_net s_axis_0_1 [get_bd_intf_ports s_axis] [get_bd_intf_pins cp_rm_0/s_axis]
  connect_bd_intf_net -intf_net scale_0_m_axis [get_bd_intf_pins Mixer/s_axis] [get_bd_intf_pins scale_0/m_axis]
  connect_bd_intf_net -intf_net sum_0_m_axis [get_bd_intf_pins angle_0/s_axis] [get_bd_intf_pins sum_0/m_axis]

  # Create port connections
  connect_bd_net -net cp_rm_0_o_symbol [get_bd_pins cp_rm2_0/i_symbol] [get_bd_pins cp_rm_0/o_symbol] [get_bd_pins delay_0/i_symbol] [get_bd_pins delay_1/i_symbol] [get_bd_pins scale_0/i_symbol]
  connect_bd_net -net i_select_0_1 [get_bd_ports bypass] [get_bd_pins mux_0/i_select]
  connect_bd_net -net s_axis_aclk_0_1 [get_bd_ports axis_aclk] [get_bd_pins Mixer/s_axis_aclk_0] [get_bd_pins angle_0/axis_aclk] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins axis_data_fifo_1/s_axis_aclk] [get_bd_pins axis_splitter_0/axis_aclk] [get_bd_pins axis_splitter_1/axis_aclk] [get_bd_pins complex_mult_0/axis_aclk] [get_bd_pins conj_0/axis_aclk] [get_bd_pins conj_1/axis_aclk] [get_bd_pins cp_rm2_0/axis_aclk] [get_bd_pins cp_rm_0/axis_aclk] [get_bd_pins delay_0/axis_aclk] [get_bd_pins delay_1/axis_aclk] [get_bd_pins mux_0/axis_aclk] [get_bd_pins scale_0/axis_aclk] [get_bd_pins sum_0/axis_aclk]
  connect_bd_net -net s_axis_aresetn_0_1 [get_bd_ports axis_aresetn] [get_bd_pins Mixer/s_axis_aresetn_0] [get_bd_pins angle_0/axis_aresetn] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins axis_data_fifo_1/s_axis_aresetn] [get_bd_pins axis_splitter_0/axis_aresetn] [get_bd_pins axis_splitter_1/axis_aresetn] [get_bd_pins complex_mult_0/axis_aresetn] [get_bd_pins conj_0/axis_aresetn] [get_bd_pins conj_1/axis_aresetn] [get_bd_pins cp_rm2_0/axis_aresetn] [get_bd_pins cp_rm_0/axis_aresetn] [get_bd_pins delay_0/axis_aresetn] [get_bd_pins delay_1/axis_aresetn] [get_bd_pins mux_0/axis_aresetn] [get_bd_pins scale_0/axis_aresetn] [get_bd_pins sum_0/axis_aresetn]
  connect_bd_net -net scale_0_o_negative_freq [get_bd_pins scale_0/o_negative_freq] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins Mixer/i_negative_freq] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins conj_0/i_negative_freq] [get_bd_pins conj_1/i_negative_freq] [get_bd_pins xlconstant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


