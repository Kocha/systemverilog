module testbench;

  int i = 0;

  initial begin
    // repeat
    repeat(5)  $display("--- i = %2d", i++);
    // forever
    forever begin
      if(i>10) break;
      else     $display("--- i = %2d", i++);
    end
    $finish(1);
  end

endmodule:testbench
