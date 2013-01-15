module testbench;

  mailbox mbx;

  task task_put(input int in);
    mbx.put(in);
    $display("@%0d mbx.num() = %0d", $time, mbx.num());
  endtask

  task task_get;
    int data;
    forever begin
      #100 mbx.get(data);
      $display("@%0d data=%0d", $time, data);
    end
  endtask

  initial begin
    mbx = new(8);
    fork task_get; join_none
    
    for(int i=0; i<10; i++) begin
      #10; task_put(10*i);
    end

    #1000 $finish;
  end

endmodule
