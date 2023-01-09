onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib zf_equalizer_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {zf_equalizer.udo}

run -all

quit -force
