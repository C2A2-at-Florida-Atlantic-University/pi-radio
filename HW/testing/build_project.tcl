set ProjPath $::env(ProjPath)
set SrcPath $::env(SrcPath)
set ipRepoPath $::env(ipRepoPath)

create_project pi_radio $ProjPath/pi_radio -part xczu28dr-ffvg1517-2-e
set_property board_part xilinx.com:zcu111:part0:1.4 [current_project]
set_property target_language VHDL [current_project]

cd $ProjPath
source file_list.tcl

cd $ProjPath
#exec cp build_ssr_fft.tcl $ipRepoPath/ssr_FFT
#cd $ipRepoPath/ssr_FFT
#exec vivado -mode batch -source build_ssr_fft.tcl
set_property  ip_repo_paths  $ipRepoPath [current_project]
update_ip_catalog

generate_target -force -verbose -quiet {synthesis} [get_ips]

start_gui
