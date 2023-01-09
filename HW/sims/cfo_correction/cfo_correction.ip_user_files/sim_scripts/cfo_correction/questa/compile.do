vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_data_fifo_v2_0_8
vlib questa_lib/msim/util_vector_logic_v2_0_2
vlib questa_lib/msim/xlconstant_v1_1_7

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_8 questa_lib/msim/axis_data_fifo_v2_0_8
vmap util_vector_logic_v2_0_2 questa_lib/msim/util_vector_logic_v2_0_2
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_0_0/sim/cfo_correction_conj_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_dds_top_0_0/sim/cfo_correction_dds_top_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_mixer_0_0/sim/cfo_correction_mixer_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_angle_0_0/sim/cfo_correction_angle_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_8  -incr -mfcu "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/0bd2/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_data_fifo_0_0/sim/cfo_correction_axis_data_fifo_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_data_fifo_1_0/sim/cfo_correction_axis_data_fifo_1_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_splitter_0_0/sim/cfo_correction_axis_splitter_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_axis_splitter_1_0/sim/cfo_correction_axis_splitter_1_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_complex_mult_0_0/sim/cfo_correction_complex_mult_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_0_1/sim/cfo_correction_conj_0_1.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_1_0/sim/cfo_correction_conj_1_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_cp_rm2_0_0/sim/cfo_correction_cp_rm2_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_delay_0_0/sim/cfo_correction_delay_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_delay_1_0/sim/cfo_correction_delay_1_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_mux_0_0/sim/cfo_correction_mux_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_scale_0_0/sim/cfo_correction_scale_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_sum_0_0/sim/cfo_correction_sum_0_0.v" \

vlog -work util_vector_logic_v2_0_2  -incr -mfcu "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_util_vector_logic_0_0/sim/cfo_correction_util_vector_logic_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_xlconstant_0_0/sim/cfo_correction_xlconstant_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_cp_rm_0_0/sim/cfo_correction_cp_rm_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_tlast_symbol_0_0/sim/cfo_correction_tlast_symbol_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/sim/cfo_correction.v" \

vlog -work xil_defaultlib \
"glbl.v"

