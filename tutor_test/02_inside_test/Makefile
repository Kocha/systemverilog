
sample:
	vlib work
	vlog sample.sv
	vsim -c -L work testbench -do "run -all; quit"

#vsim -c -L work test -do ./run.do

clean:
	rm -rf work transcript vsim.wlf

