class base;
  virtual function void show(int a, int b=0); endfunction
endclass

class hoge extends base;
  function void show(int a, int b=0);
    $display("--- a = %3d", a);
  endfunction
endclass

class hoge2 extends base;
  function void show(int a, int b=0);
    $display("--- a = %3d, b = %3d", a, b);
  endfunction
endclass

module tb;

  hoge  cl_hoge  = new;
  hoge2 cl_hoge2 = new;

  int i,j;

  initial begin
    i = 10; j = 4;
    cl_hoge.show(i);
    cl_hoge2.show(i, j);
    $finish;
  end

endmodule
