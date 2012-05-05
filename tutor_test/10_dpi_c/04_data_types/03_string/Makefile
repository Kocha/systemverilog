compile:
	vlib work
	vlog -sv -dpiheader dpiheader.h tb.sv

c_run: compile
	gcc -c -I$(MODELSIM_HOME)/include c_main.c
	gcc -shared -Bsymbolic -o c_main.so c_main.o
	vsim -c -sv_lib c_main -do "run -all; quit" tb

cpp_run: compile
	g++ -c -I$(MODELSIM_HOME)/include -fpermissive c_main.cpp
	g++ -shared -Bsymbolic -o c_main.so c_main.o
	vsim -c -sv_lib c_main -do "run -all; quit" tb

clean:
	rm -rf *.o *.so
	rm -rf dpiheader.h
	rm -rf work transcript vsim.wlf
