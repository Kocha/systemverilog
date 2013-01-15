
`define SUM(a,b) (a + b)

module tb;

  integer i,j,k;

  initial begin
    i = 2; j = 5;
    k = `SUM(i,j);
    $display("--- i = %2d, j = %2d, k = %2d", i, j, k);
    $finish;
  end

endmodule
