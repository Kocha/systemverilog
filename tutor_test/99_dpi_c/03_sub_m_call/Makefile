run:
	vlib work
	vlog tb.sv
	gcc -c -I$(MODELSIM_HOME)/include c_main.c
	gcc -shared -Bsymbolic -o c_main.so c_main.o
	vsim -c -sv_lib c_main -do "run -all; quit" tb

clean:
	rm -rf work transcript vsim.wlf *.o *.so
