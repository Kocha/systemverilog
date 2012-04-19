module tb;
  // import c_main
  import "DPI-C" context task c_main();
  
  initial begin
    c_main();
    $finish(2);
  end

  // export tasks
  export "DPI-C" c_char           = task sv_byte_task;
  export "DPI-C" c_shortint       = task sv_shortint_task;
  export "DPI-C" c_int            = task sv_int_task;
  export "DPI-C" c_long_long      = task sv_longint_task;
  export "DPI-C" c_double         = task sv_real_task;
  export "DPI-C" c_float          = task sv_shortreal_task;
  export "DPI-C" c_void_p         = task sv_chandle_task;
  export "DPI-C" c_const_char_p   = task sv_string_task;
  export "DPI-C" c_unsigned_char1 = task sv_bit_task;
  export "DPI-C" c_unsigned_char2 = task sv_logic_task;
  export "DPI-C" c_unsigned_char3 = task sv_reg_task;

  task sv_byte_task     (input byte       a, output byte       b);
    b = a * 10;
    $display("--- sv_byte      : input=%d, output=%d", a, b);
  endtask

  task sv_shortint_task (input shortint   a, output shortint   b);
    b = a * 100;
    $display("--- sv_shortint  : input=%d, output=%d", a, b);
  endtask

  task sv_int_task      (input int        a, output int        b);
    b = a * 1000;
    $display("--- sv_int       : input=%d, output=%d", a, b);
  endtask

  task sv_longint_task  (input longint    a, output longint    b);
    b = a * 10000;
    $display("--- sv_longint   : input=%d, output=%d", a, b);
  endtask

  task sv_real_task     (input real       a, output real       b);
    b = a * 100.11;
    $display("--- sv_real      : input=%f, output=%f", a, b);
  endtask

  task sv_shortreal_task(input shortreal  a, output shortreal  b);
    b = a * 0.8;
    $display("--- sv_shortreal : input=%f, output=%f", a, b);
  endtask

  task sv_chandle_task  (input chandle    a, output chandle    b);
    // $display("--- sv_chandle   : input=%d, output=%d", a, b);
  endtask

  task sv_string_task   (input string     a, output string     b);
    // b = a + "ok!";
    // $display("--- sv_string    : input=%s, output=%s", a, b);
  endtask

  task sv_bit_task      (input bit  [3:0] a, output bit  [3:0] b);
    b = a * 10;
    $display("--- sv_bit       : input=%d, output=%d", a, b);
  endtask

  task sv_logic_task    (input logic[3:0] a, output logic[3:0] b);
    b = a * 10;
    $display("--- sv_logic     : input=%d, output=%d", a, b);
  endtask

  task sv_reg_task      (input reg  [3:0] a, output reg  [3:0] b);
    b = a * 10;
    $display("--- sv_reg       : input=%d, output=%d", a, b);
  endtask

endmodule : tb

