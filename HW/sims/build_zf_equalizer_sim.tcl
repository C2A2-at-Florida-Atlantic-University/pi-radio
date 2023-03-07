#################################################################################################################################################
# Jared Hermans
#################################################################################################################################################

# Make sure to set environment variable $PI_RADIO_REPO_PATH to root of this git repo
# This script will build the Zero Forcing PolyPhase Equalizer block design container for simulation
# Run "vivado -mode batch -source build_zf_equalizer_sim.tcl"

set PI_RADIO_REPO_PATH $::env(PI_RADIO_REPO_PATH)
create_project -force zf_equalizer $PI_RADIO_REPO_PATH/HW/sims/zf_equalizer -part xczu28dr-ffvg1517-2-e
set_property board_part xilinx.com:zcu111:part0:1.4 [current_project]
cd $PI_RADIO_REPO_PATH/HW/modules
source file_list.tcl
cd $PI_RADIO_REPO_PATH/HW/bd
source zf_equalizer_bd.tcl
make_wrapper -files [get_files $PI_RADIO_REPO_PATH/HW/sims/zf_equalizer/zf_equalizer.srcs/sources_1/bd/zf_equalizer/zf_equalizer.bd] -top
add_files -norecurse $PI_RADIO_REPO_PATH/HW/sims/zf_equalizer/zf_equalizer.gen/sources_1/bd/zf_equalizer/hdl/zf_equalizer_wrapper.v
update_compile_order -fileset sources_1
set_property top zf_equalizer_wrapper [current_fileset]
update_compile_order -fileset sources_1
set_property top zf_equalizer_tb [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1
set_property -name {xsim.simulate.runtime} -value {} -objects [get_filesets sim_1]
cd $PI_RADIO_REPO_PATH/HW/sims/zf_equalizer
open_bd_design {zf_equalizer.srcs/sources_1/bd/zf_equalizer/zf_equalizer.bd}

add_files -fileset sim_1 -norecurse $PI_RADIO_REPO_PATH/HW/sims/zf_equalizer/zf_equalizer_tb_behav.wcfg
set_property xsim.view $PI_RADIO_REPO_PATH/HW/sims/zf_equalizer/zf_equalizer_tb_behav.wcfg [get_filesets sim_1]

start_gui
