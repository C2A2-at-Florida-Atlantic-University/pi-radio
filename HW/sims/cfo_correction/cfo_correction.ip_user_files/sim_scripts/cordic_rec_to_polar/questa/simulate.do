onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib cordic_rec_to_polar_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cordic_rec_to_polar.udo}

run -all

quit -force
