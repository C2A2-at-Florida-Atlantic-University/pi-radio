vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v2_0_8
vlib riviera/util_vector_logic_v2_0_2
vlib riviera/xlconstant_v1_1_7

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_8 riviera/axis_data_fifo_v2_0_8
vmap util_vector_logic_v2_0_2 riviera/util_vector_logic_v2_0_2
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7

vlog -work xpm  -sv2k12 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_conj_0_0/sim/cfo_correction_conj_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_dds_top_0_0/sim/cfo_correction_dds_top_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_mixer_0_0/sim/cfo_correction_mixer_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_angle_0_0/sim/cfo_correction_angle_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_8  -v2k5 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/0bd2/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
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

vlog -work util_vector_logic_v2_0_2  -v2k5 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_util_vector_logic_0_0/sim/cfo_correction_util_vector_logic_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ipshared/8713/hdl" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_xlconstant_0_0/sim/cfo_correction_xlconstant_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_cp_rm_0_0/sim/cfo_correction_cp_rm_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/ip/cfo_correction_tlast_symbol_0_0/sim/cfo_correction_tlast_symbol_0_0.v" \
"../../../../cfo_correction.gen/sources_1/bd/cfo_correction/sim/cfo_correction.v" \

vlog -work xil_defaultlib \
"glbl.v"

