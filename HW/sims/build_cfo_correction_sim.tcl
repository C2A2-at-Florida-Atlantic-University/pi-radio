# Make sure to set environment variable $PI_RADIO_REPO_PATH to root of this git repo
# This script will build the PolyPhase CFO Correction block design container for simulation
# Run "vivado -mode batch -source build_cfo_correction_sim.tcl"
set PI_RADIO_REPO_PATH $::env(PI_RADIO_REPO_PATH)
create_project cfo_correction $PI_RADIO_REPO_PATH/HW/sims/cfo_correction -part xczu28dr-ffvg1517-2-e
set_property board_part xilinx.com:zcu111:part0:1.4 [current_project]
cd $PI_RADIO_REPO_PATH/HW/modules
source file_list.tcl
cd $PI_RADIO_REPO_PATH/HW/bd
