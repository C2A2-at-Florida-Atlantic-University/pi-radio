# Make sure to set environment variable $PI_RADIO_REPO_PATH to root of this git repo
# This script will build the PolyPhase CFO Correction block design container for simulation
# Run "vivado -mode batch -source build_cfo_correction_sim.tcl"
set PI_RADIO_REPO_PATH $::env(PI_RADIO_REPO_PATH)
create_project -force cfo_correction $PI_RADIO_REPO_PATH/HW/sims/cfo_correction -part xczu28dr-ffvg1517-2-e
set_property board_part xilinx.com:zcu111:part0:1.4 [current_project]
cd $PI_RADIO_REPO_PATH/HW/modules
source file_list.tcl
cd $PI_RADIO_REPO_PATH/HW/bd
source cfo_correction_bd.tcl
make_wrapper -files [get_files $PI_RADIO_REPO_PATH/HW/sims/cfo_correction/cfo_correction.srcs/sources_1/bd/cfo_correction/cfo_correction.bd] -top
add_files -norecurse $PI_RADIO_REPO_PATH/HW/sims/cfo_correction/cfo_correction.gen/sources_1/bd/cfo_correction/hdl/cfo_correction_wrapper.v
update_compile_order -fileset sources_1
set_property top cfo_correction_wrapper [current_fileset]
update_compile_order -fileset sources_1
set_property -name {xsim.simulate.runtime} -value {} -objects [get_filesets sim_1]
set_property top cfo_correction_top_tb [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
add_files -fileset sim_1 -norecurse $PI_RADIO_REPO_PATH/HW/sims/wcfg/cfo_correction_top_tb_behav.wcfg
set_property xsim.view $PI_RADIO_REPO_PATH/HW/sims/wcfg/cfo_correction_top_tb_behav.wcfg [get_filesets sim_1]
start_gui
