class base;
  int int_base1 = 1;
  int int_base2 = 1;
  int int_base3 = 1;
  function new(int a);
    int_base2 = 2;
    int_base3 = a;
  endfunction
endclass

class hoge extends base;
  int int_hoge1 = 4;
  int int_hoge2 = int_base2;
  int int_hoge3 = 6;
  function new;
    super.new(int_hoge3);
  endfunction
endclass

module testbench;

  hoge cl_hoge = new;

  initial begin
    $display("--- cl_hoge.int_base1 = %3d",cl_hoge.int_base1 );
    $display("--- cl_hoge.int_base2 = %3d",cl_hoge.int_base2 );
    $display("--- cl_hoge.int_base3 = %3d",cl_hoge.int_base3 );
    $display("--- cl_hoge.int_hoge1 = %3d",cl_hoge.int_hoge1 );
    $display("--- cl_hoge.int_hoge2 = %3d",cl_hoge.int_hoge2 );
    $display("--- cl_hoge.int_hoge3 = %3d",cl_hoge.int_hoge3 );
    $finish;
  end

endmodule
