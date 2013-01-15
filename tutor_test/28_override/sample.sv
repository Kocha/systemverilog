class base;
  virtual function void show(int a, int b);
    $display("--- a = %3d, b = %3d", a, b);
  endfunction
endclass

class hoge extends base;
  function void show(int a, int b=0);
    $display("--- a = %3d", a);
  endfunction
endclass

module tb;

  base  cl_base  = new;
  hoge  cl_hoge  = new;

  int i,j;

  initial begin
    i = 10; j = 4;
    cl_base.show(i,j);
    cl_hoge.show(i);
    $finish;
  end

endmodule
