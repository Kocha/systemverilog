class hoge;
  int int_tmp = 4;
  function new(int a);
    int_tmp = a;
  endfunction
endclass

module testbench;

  hoge cl_hoge = new(10);

  initial begin
    $display("--- cl_hoge.int_tmp  = %3d",cl_hoge.int_tmp );
    $finish;
  end

endmodule
