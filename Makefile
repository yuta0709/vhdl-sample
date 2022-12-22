compile:
	vcom dff.vhd test_dff.vhd

simulate:
	make compile
	vsim -c -do vsim.do work.testbench