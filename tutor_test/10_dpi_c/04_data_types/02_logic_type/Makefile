run:
	vlib work
	vlog -sv -dpiheader dpiheader.h tb.sv
	gcc -c -I$(MODELSIM_HOME)/include c_main.c
	gcc -shared -Bsymbolic -o c_main.so c_main.o
	vsim -c -sv_lib c_main -do "run -all; quit" tb

clean:
	rm -rf *.o *.so
	rm -rf dpiheader.h
	rm -rf work transcript vsim.wlf
