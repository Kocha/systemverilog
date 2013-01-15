run:
	vlib work
	vlog hello.sv
	gcc -c -I$(MODELSIM_HOME)/include hello_c.c
	gcc -shared -Bsymbolic -o hello_c.so hello_c.o
	vsim -c -sv_lib hello_c -do "run -all; quit" hello_top

clean:
	rm -rf work transcript vsim.wlf *.o *.so
