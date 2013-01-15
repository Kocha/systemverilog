module tb;
  // import c_main
  import "DPI-C" context task c_main();
  
  initial begin
    c_main();
    $finish(2);
  end

  // export tasks
  export "DPI-C" c_svbit     = task sv_bit_task;
  export "DPI-C" c_svlogic   = task sv_logic_task;
  export "DPI-C" c_svlogic_b = task sv_logic_task_b;

  task sv_bit_task      (input bit  [7:0] a, output bit  [7:0] b);
    b = a * 10;
    $display("--- sv_bit   : input=%d, output=%d", a, b);
  endtask

  task sv_logic_task    (input logic[3:0] a, output logic[3:0] b);
    b = a + 4;
    $display("--- sv_logic : input=%d, output=%d", a, b);
  endtask

  task sv_logic_task_b  (input logic[3:0] a, output logic[3:0] b);
    b = a + 4;
    $display("--- sv_logic : input=%b, output=%b", a, b);
  endtask

endmodule : tb

