
RTL=tb.v

run: work compile sim

run_sv: work compile_sv sim

work:
	vlib work

compile:
	vlog ${RTL}

compile_sv:
	vlog -sv ${RTL}

sim:
	vsim -c -L work tb -do "run -all; quit"

clean:
	rm -rf work transcript vsim.wlf

