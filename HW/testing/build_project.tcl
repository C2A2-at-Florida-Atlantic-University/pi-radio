set ProjPath $::env(ProjPath)
set SrcPath $::env(SrcPath)

create_project pi_radio $ProjPath/pi_radio -part xczu28dr-ffvg1517-2-e
set_property board_part xilinx.com:zcu111:part0:1.4 [current_project]
set_property target_language VHDL [current_project]

cd $ProjPath
source file_list.tcl

upgrade_ip [get_ips {*}]
generate_target -force -verbose -quiet {synthesis} [get_ips]

start_gui
