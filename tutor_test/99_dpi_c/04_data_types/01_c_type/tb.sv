module tb;
  // import c_main
  import "DPI-C" context task c_main();
  
  initial begin
    c_main();
    $finish(2);
  end

  // export tasks
  export "DPI-C" c_char      = task sv_byte_task;
  export "DPI-C" c_shortint  = task sv_shortint_task;
  export "DPI-C" c_int       = task sv_int_task;
  export "DPI-C" c_long_long = task sv_longint_task;
  export "DPI-C" c_double    = task sv_real_task;
  export "DPI-C" c_float     = task sv_shortreal_task;

  task sv_byte_task     (input byte       a, output byte       b);
    b = a * 10;
    $display("--- sv_byte      : input=%8d, output=%8d", a, b);
  endtask

  task sv_shortint_task (input shortint   a, output shortint   b);
    b = a * 100;
    $display("--- sv_shortint  : input=%8d, output=%8d", a, b);
  endtask

  task sv_int_task      (input int        a, output int        b);
    b = a * 1000;
    $display("--- sv_int       : input=%8d, output=%8d", a, b);
  endtask

  task sv_longint_task  (input longint    a, output longint    b);
    b = a * 10000;
    $display("--- sv_longint   : input=%8d, output=%8d", a, b);
  endtask

  task sv_real_task     (input real       a, output real       b);
    b = a * 100.11;
    $display("--- sv_real      : input=%8.4f, output=%8.4f", a, b);
  endtask

  task sv_shortreal_task(input shortreal  a, output shortreal  b);
    b = a * 0.8;
    $display("--- sv_shortreal : input=%8.4f, output=%8.4f", a, b);
  endtask

endmodule : tb

