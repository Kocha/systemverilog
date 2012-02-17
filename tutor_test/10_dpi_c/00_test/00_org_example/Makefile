run:
	vlib work
	vlog -sv -dpiheader dpiheader.h hello.v
	gcc -c -I$(MODELSIM_HOME)/include hello_c.c
	gcc -shared -Bsymbolic -o hello_c.so hello_c.o
	vsim -c -sv_lib hello_c hello_top -do "run -all; quit -f"

clean:
	rm -rf work *.o *.so transcript *.wlf dpiheader.h
