vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_bram_ctrl_v4_1_6
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v2_0_8

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_bram_ctrl_v4_1_6 riviera/axi_bram_ctrl_v4_1_6
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_8 riviera/axis_data_fifo_v2_0_8

vlog -work xpm  -sv2k12 "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axis_splitter_0_0/sim/zf_equalizer_axis_splitter_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_mux_0_0/sim/zf_equalizer_mux_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_6 -93 \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axi_bram_ctrl_0_0/sim/zf_equalizer_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_blk_mem_gen_0_0/sim/zf_equalizer_blk_mem_gen_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_removal_0_0/sim/zf_equalizer_pilot_removal_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_scheduler_0_0/sim/zf_equalizer_pilot_scheduler_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_channel_estimate_0_0/sim/zf_equalizer_channel_estimate_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_average_0_0/sim/zf_equalizer_average_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_8  -v2k5 "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/0bd2/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/8713/hdl" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axis_data_fifo_0_0/sim/zf_equalizer_axis_data_fifo_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_delay_0_0/sim/zf_equalizer_delay_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_equalization_0_0/sim/zf_equalizer_equalization_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/sim/zf_equalizer.v" \

vlog -work xil_defaultlib \
"glbl.v"

