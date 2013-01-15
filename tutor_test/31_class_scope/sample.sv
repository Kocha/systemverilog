class hoge;
  static function void show(int a, int b);
    $display("- a = %3d, b = %3d", a, b);
  endfunction
endclass

module testbench;

  int i,j;
  hoge cl_hoge = new;

  initial begin
    i = 10; j = 4;
    cl_hoge.show(i, j);
    hoge::show(i,j);
    $finish;
  end

endmodule
