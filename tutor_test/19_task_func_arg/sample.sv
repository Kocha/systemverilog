module tb;

  task sub(input int a, input int b,
           output int result);
    result = a - b;
  endtask

  function void show(input int a, input int b);
    $display("--- a = %3d, b = %3d", a,b);
  endfunction

  int i,j,k;

  initial begin
    i = 10; j = 4;
    sub(i,j,k); $display("--- sub:i = %3d, j = %3d, k = %3d", i, j, k);
    show(i,j);
    // 引数を指定
    $display("--- Argument ---");
    sub(.result(k),.b(i),.a(j)); $display("--- sub:i = %3d, j = %3d, k = %3d", i, j, k);
    show(.b(i),.a(j));
    $finish;
  end

endmodule
