transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/Projects/lab2/CPU_package.vhd}
vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/Projects/lab2/ALU.vhd}

vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/Projects/lab2/ALU_TB.vhd}
vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/Projects/lab2/ALU.vhd}
vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/Projects/lab2/CPU_package.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  ALU_TB

add wave *
view structure
view signals
run 320 ns