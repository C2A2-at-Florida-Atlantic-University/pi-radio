onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib cordic_polar_to_rec_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cordic_polar_to_rec.udo}

run -all

quit -force
