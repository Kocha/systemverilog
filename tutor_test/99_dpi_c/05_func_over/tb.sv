module tb;

  import "DPI-C" context task c_main();

  initial begin
      c_main();

      $finish(2);
  end

  export "DPI-C" sv_show  = task task_show;
  export "DPI-C" sv_show2 = task task_show2;

  task task_show( input int a );
    $display("--- a = %3d", a);
  endtask : task_show

  task task_show2( input int a, input int b );
    $display("--- a = %3d, b = %3d", a,b);
  endtask : task_show2

endmodule : tb
