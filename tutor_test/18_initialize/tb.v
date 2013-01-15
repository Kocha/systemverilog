module tb;

  integer i = 10;
  integer j = i;

  initial begin
    $display("--- i = %2d, j = %2d", i, j);
    $finish;
  end

endmodule
