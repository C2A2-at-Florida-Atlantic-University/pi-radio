onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib cfo_correction_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cfo_correction.udo}

run -all

quit -force
