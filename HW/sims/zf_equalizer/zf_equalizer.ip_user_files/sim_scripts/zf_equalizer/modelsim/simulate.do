onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L xil_defaultlib -L axi_bram_ctrl_v4_1_6 -L blk_mem_gen_v8_4_5 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_8 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.zf_equalizer xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {zf_equalizer.udo}

run -all

quit -force
