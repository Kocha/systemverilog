module testbench;

  initial begin
    logic[3:0] a,b,x,y;
    a = 1; b = 1;
    x = a++; $display("--- x = %d, a = %d ---", x, a);
    y = ++b; $display("--- y = %d, b = %d ---", y, b);

    $finish(1);
  end

endmodule:testbench
