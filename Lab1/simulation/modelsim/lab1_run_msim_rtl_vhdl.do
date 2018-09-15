transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/VHDL-Design/Lab1/full_adder.vhd}
vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/VHDL-Design/Lab1/carry_lookahead_adder.vhd}

vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/VHDL-Design/Lab1/ripple_carry_adder_tb.vhd}
vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/VHDL-Design/Lab1/ripple_carry_adder.vhd}
vcom -93 -work work {C:/Users/Markus Brisl�v/Documents/IL1331 - VHDL Design/VHDL-Design/Lab1/full_adder.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  ripple_carry_adder_tb

add wave *
view structure
view signals
run -all
