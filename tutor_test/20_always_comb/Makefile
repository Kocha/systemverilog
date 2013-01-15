
run:
	vlib work
	vlog sample.sv
	vsim -c -L work testbench -do "run -all; quit"

run_alcomb:
	vlib work
	vlog sample.sv +define+ALCOMB
	vsim -c -L work testbench -do "run -all; quit"

clean:
	rm -rf work transcript vsim.wlf

