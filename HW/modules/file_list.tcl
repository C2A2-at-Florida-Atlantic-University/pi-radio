set ip_list [get_ips]

add_files -fileset sources_1 [glob src/rtl/*.vhd]

import_ip src/ip/cmpy_0.xci
import_ip src/ip/cmpy_1.xci
import_ip src/ip/cordic_0.xci
import_ip src/ip/dds_compiler_0.xci
import_ip src/ip/dsp_macro_0.xci

upgrade_ip [get_ips {*}]

add_files -fileset sim_1 sim/cfo_correction_top_tb.sv
add_files -fileset sim_1 sim/tlast_gen_tb.sv
set_property top cfo_correction_top_tb [get_filesets sim_1]
