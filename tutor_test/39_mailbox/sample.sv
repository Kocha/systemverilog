module testbench;

  mailbox mbx;

  task task_put(input int in);
    mbx.put(in);
  endtask

  task task_get;
    int data;
    forever begin
      mbx.get(data);
      $display("@%0d data=%0d", $time, data);
    end
  endtask

  initial begin
    mbx = new();
    fork task_get; join_none

    for(int i=0; i<10; i++) begin
      #10; task_put(10*i);
    end

    #100 $finish;
  end

endmodule
