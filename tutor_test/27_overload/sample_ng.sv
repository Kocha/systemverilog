module tb;

  function void show(input int a);
    $display("--- a = %3d", a);
  endfunction

  function void show(input int a, input int b);
    $display("--- a = %3d, b = %3d", a,b);
  endfunction

  int i,j;

  initial begin
    i = 10; j = 4;
    show(i);
    show(i,j);
    $finish;
  end

endmodule
