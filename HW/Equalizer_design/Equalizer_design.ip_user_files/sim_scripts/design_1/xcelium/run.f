-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx_2022.1/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_conj_0_0/sim/design_1_conj_0_0.v" \
  "../../../bd/design_1/ip/design_1_cp_rm_0_0/sim/design_1_cp_rm_0_0.v" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../Equalizer_design.gen/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_data_fifo_v2_0_8 \
  "../../../../Equalizer_design.gen/sources_1/bd/design_1/ipshared/0bd2/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axis_data_fifo_0_0/sim/design_1_axis_data_fifo_0_0.v" \
  "../../../bd/design_1/ip/design_1_delay_0_0/sim/design_1_delay_0_0.v" \
  "../../../bd/design_1/ip/design_1_complex_mult_sum_0_0/sim/design_1_complex_mult_sum_0_0.v" \
  "../../../bd/design_1/ip/design_1_axis_splitter_0_0/sim/design_1_axis_splitter_0_0.v" \
  "../../../bd/design_1/ip/design_1_cp_rm2_0_0/sim/design_1_cp_rm2_0_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

