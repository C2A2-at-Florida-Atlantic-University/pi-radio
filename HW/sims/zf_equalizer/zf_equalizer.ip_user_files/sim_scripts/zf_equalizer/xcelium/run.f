-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_6 \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axi_bram_ctrl_0_0/sim/zf_equalizer_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_blk_mem_gen_0_0/sim/zf_equalizer_blk_mem_gen_0_0.v" \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_removal_0_0/sim/zf_equalizer_pilot_removal_0_0.v" \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_equalization_0_0/sim/zf_equalizer_equalization_0_0.v" \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_channel_estimate_0_0/sim/zf_equalizer_channel_estimate_0_0.v" \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_axis_splitter_0_0/sim/zf_equalizer_axis_splitter_0_0.v" \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_mux_0_0/sim/zf_equalizer_mux_0_0.v" \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_scheduler_0_0/sim/zf_equalizer_pilot_scheduler_0_0.v" \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_polar_to_cartesian_c_0_0/sim/zf_equalizer_polar_to_cartesian_c_0_0.v" \
  "../../../../zf_equalizer.gen/sources_1/bd/zf_equalizer/sim/zf_equalizer.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

