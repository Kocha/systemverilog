module testbench;

  task automatic do_stuff(int wait_time);
    #wait_time $display("waited %0d, then did stuff", wait_time);
  endtask 
 
  initial begin 
    fork 
      do_stuff(10);
      do_stuff(5);
    join
    $display("fork has been joined");
  end 

endmodule
