cd $SrcPath
source file_list.tcl
source $ProjPath/cfo_correction_bd.tcl
source $ProjPath/equalizer_bd.tcl
source $ProjPath/radio_top_bd.tcl

make_wrapper -files [get_files radio_top.bd] -top -import -force
set_property top radio_top_wrapper [current_fileset]
update_compile_order -fileset sources_1
