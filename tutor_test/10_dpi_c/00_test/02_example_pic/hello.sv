module hello_top;
   int ret;
   export "DPI-C" task verilog_task;
   task verilog_task(input int i, output int o);
      #10;
      $display("Hello from verilog_task()");
   endtask // verilog_task
   import "DPI-C" context task c_task(input int i, output int o);
      initial begin
         c_task(1, ret);
         $display("ret=%d", ret);
      end
endmodule // hello_top

