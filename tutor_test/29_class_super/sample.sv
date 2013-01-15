class base;
  virtual function void show(int a, int b);
    $display("- a = %3d, b = %3d", a, b);
  endfunction
endclass

class hoge extends base;
  function void show(int a, int b=0);
    if (b != 0) super.show(a,b);
    else        $display("- a = %3d", a);
  endfunction
endclass

module testbench;

  int i,j;
  hoge cl_hoge = new;

  initial begin
    i = 10; j = 4;
    cl_hoge.show(i);
    cl_hoge.show(i,j);
    $finish;
  end

endmodule
