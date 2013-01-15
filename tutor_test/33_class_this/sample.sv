class base;
  int a;

  virtual function void set_a(int in);
    a = in;
  endfunction

endclass

class hoge extends base ;

  int a;

  function void set_a(int in);
    this.a = in;
    $display("--- this.a = %3d, super.a = %3d", this.a, super.a);
  endfunction

endclass

module testbench;

  hoge cl_hoge = new;

  initial begin
    cl_hoge.set_a(10);
    $finish;
  end

endmodule
