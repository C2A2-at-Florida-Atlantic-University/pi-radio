vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/axi_bram_ctrl_v4_1_6
vlib activehdl/xil_defaultlib
vlib activehdl/blk_mem_gen_v8_4_5

vmap xpm activehdl/xpm
vmap axi_bram_ctrl_v4_1_6 activehdl/axi_bram_ctrl_v4_1_6
vmap xil_defaultlib activehdl/xil_defaultlib
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_bram_ctrl_v4_1_6 -93 \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axi_bram_ctrl_0_0/sim/zf_equalizer_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_blk_mem_gen_0_0/sim/zf_equalizer_blk_mem_gen_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_removal_0_0/sim/zf_equalizer_pilot_removal_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_equalization_0_0/sim/zf_equalizer_equalization_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_channel_estimate_0_0/sim/zf_equalizer_channel_estimate_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axis_splitter_0_0/sim/zf_equalizer_axis_splitter_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_mux_0_0/sim/zf_equalizer_mux_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_scheduler_0_0/sim/zf_equalizer_pilot_scheduler_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_polar_to_cartesian_c_0_0/sim/zf_equalizer_polar_to_cartesian_c_0_0.v" \
"../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/sim/zf_equalizer.v" \

vlog -work xil_defaultlib \
"glbl.v"

