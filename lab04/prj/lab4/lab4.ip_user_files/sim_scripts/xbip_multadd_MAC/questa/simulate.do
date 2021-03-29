onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xbip_multadd_MAC_opt

do {wave.do}

view wave
view structure
view signals

do {xbip_multadd_MAC.udo}

run -all

quit -force
