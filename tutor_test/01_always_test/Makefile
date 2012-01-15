
sample:
	vlib work
	vlog sample.sv
	vsim -c -L work testbench -do "run -all; quit"

sample2:
	vlib work
	vlog sample2.sv
	vsim -c -L work testbench -do "run -all; quit"

sample3:
	vlib work
	vlog sample3.sv
	vsim -c -L work testbench -do "run -all; quit"

#vsim -c -L work test -do ./run.do

clean:
	rm -rf work transcript vsim.wlf

