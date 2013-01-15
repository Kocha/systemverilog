module testbench;

  logic signed [3:0] hoge = 0;

  initial begin
    hoge = 3'b110;        $display("--- Data = %d ", hoge);
    hoge = 3'sb110;       $display("--- Data = %d ", hoge);
    hoge = 3 * (3'sb110); $display("--- Data = %d ", hoge);
    hoge = 4'shD;         $display("--- Data = %d ", hoge);
    hoge = 2'sd2;         $display("--- Data = %d ", hoge);
    $finish(1);
  end

endmodule:testbench
