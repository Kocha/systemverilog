module tb;
  // import c_main
  import "DPI-C" context task c_main();
  
  initial begin
    c_main();
    $finish(2);
  end

  // export task
  export "DPI-C" c_chandle = task sv_chandle_task;

  task sv_chandle_task( input chandle a );
    if(a == null) $display("--- a is null");
    else          $display("--- a is not null");
  endtask

endmodule : tb
