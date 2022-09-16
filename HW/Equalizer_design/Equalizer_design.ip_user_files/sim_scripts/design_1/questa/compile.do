vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_data_fifo_v2_0_8
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_8 questa_lib/msim/axis_data_fifo_v2_0_8
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../Equalizer_design.gen/sources_1/bd/design_1/ipshared/8713/hdl" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../Equalizer_design.gen/sources_1/bd/design_1/ipshared/8713/hdl" \
"../../../../Equalizer_design.gen/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_8  -incr -mfcu "+incdir+../../../../Equalizer_design.gen/sources_1/bd/design_1/ipshared/8713/hdl" \
"../../../../Equalizer_design.gen/sources_1/bd/design_1/ipshared/0bd2/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Equalizer_design.gen/sources_1/bd/design_1/ipshared/8713/hdl" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_0/sim/design_1_axis_data_fifo_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_splitter_0_0/sim/design_1_axis_splitter_0_0.v" \
"../../../bd/design_1/ip/design_1_cp_rm2_0_0/sim/design_1_cp_rm2_0_0.v" \
"../../../bd/design_1/ip/design_1_delay_0_0/sim/design_1_delay_0_0.v" \
"../../../bd/design_1/ip/design_1_cp_rm_0_0/sim/design_1_cp_rm_0_0.v" \
"../../../bd/design_1/ip/design_1_conj_0_0/sim/design_1_conj_0_0.v" \
"../../../bd/design_1/ip/design_1_complex_mult_0_0/sim/design_1_complex_mult_0_0.v" \
"../../../bd/design_1/ip/design_1_sum_0_0/sim/design_1_sum_0_0.v" \
"../../../bd/design_1/ip/design_1_angle_0_0/sim/design_1_angle_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_1_0/sim/design_1_axis_data_fifo_1_0.v" \
"../../../bd/design_1/ip/design_1_delay_1_0/sim/design_1_delay_1_0.v" \
"../../../bd/design_1/ip/design_1_mixer_0_0/sim/design_1_mixer_0_0.v" \
"../../../bd/design_1/ip/design_1_dds_top_0_0/sim/design_1_dds_top_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_conj_1_0/sim/design_1_conj_1_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

