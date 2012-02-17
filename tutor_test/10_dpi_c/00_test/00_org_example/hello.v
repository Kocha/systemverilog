module hello_top;
  int ret;
  export "DPI-C" task verilog_task;
  task verilog_task(input int i, output int o);
    #10;
    $display("Hello from verilog_task()");
  endtask
  import "DPI-C" context task c_task(input int i, output int o);
  initial
    begin
       c_task(1, ret);  // Call the c task named 'c_task()'
    end
endmodule
