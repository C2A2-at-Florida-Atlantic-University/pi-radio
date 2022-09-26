onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_8 -L xil_defaultlib -L xlconstant_v1_1_7 -L util_vector_logic_v2_0_2 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
