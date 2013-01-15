module testbench;

  initial begin
    time svtime = 0;
    for(int i=0; i<10; i++) begin
      svtime += i<<1;
      #svtime;
      #(i<<1);
    end
    $finish(1);
  end

  final begin
    $display("*********************************");
    $display("*** End of Simulation INFO    ***");
    $display("*** Simulation Time = %4t ps ***", $time);
    $display("*********************************");
  end

endmodule:testbench
