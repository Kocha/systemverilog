class base;
  virtual function void show(int a, int b);
    $display("--- base: a = %3d, b = %3d", a, b);
  endfunction
endclass

class hoge extends base;
  virtual function void show(int a, int b=0);
    $display("--- hoge: a = %3d", a);
  endfunction
endclass

module testbench;

  int i,j;
  base  tmp_cl[2];
  base  cl_base = new;
  hoge  cl_hoge = new;

  initial begin
    i = 10; j = 4;
    tmp_cl[0] = cl_base;
    tmp_cl[1] = cl_hoge;
    tmp_cl[0].show(i,j); // base
    tmp_cl[1].show(i,j); // hoge
    $finish;
  end

endmodule
