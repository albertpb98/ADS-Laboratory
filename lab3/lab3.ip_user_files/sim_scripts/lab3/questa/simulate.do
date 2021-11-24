onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib lab3_opt

do {wave.do}

view wave
view structure
view signals

do {lab3.udo}

run -all

quit -force
