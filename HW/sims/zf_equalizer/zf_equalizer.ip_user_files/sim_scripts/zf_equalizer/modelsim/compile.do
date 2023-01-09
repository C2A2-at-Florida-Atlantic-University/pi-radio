vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_6
vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_data_fifo_v2_0_8

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_bram_ctrl_v4_1_6 modelsim_lib/msim/axi_bram_ctrl_v4_1_6
vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_8 modelsim_lib/msim/axis_data_fifo_v2_0_8

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axis_splitter_0_0/sim/zf_equalizer_axis_splitter_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_mux_0_0/sim/zf_equalizer_mux_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_6  -93 \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axi_bram_ctrl_0_0/sim/zf_equalizer_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_blk_mem_gen_0_0/sim/zf_equalizer_blk_mem_gen_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_removal_0_0/sim/zf_equalizer_pilot_removal_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_scheduler_0_0/sim/zf_equalizer_pilot_scheduler_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_channel_estimate_0_0/sim/zf_equalizer_channel_estimate_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_average_0_0/sim/zf_equalizer_average_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_8  -incr -mfcu "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/0bd2/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axis_data_fifo_0_0/sim/zf_equalizer_axis_data_fifo_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_delay_0_0/sim/zf_equalizer_delay_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_equalization_0_0/sim/zf_equalizer_equalization_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/sim/zf_equalizer.v" \

vlog -work xil_defaultlib \
"glbl.v"

