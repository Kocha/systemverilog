module tb;
  // import c_main
  import "DPI-C" context task c_main();
  
  initial begin
    c_main();
    $finish(2);
  end

  // export tasks
  export "DPI-C" c_sv_string = task sv_string_task;

  task sv_string_task   (input string a, output string b);
    // b = a.toupper();
    b = a.tolower();
    $display("--- sv_string : input=%s, output=%s", a, b);
  // task sv_string_task   (input string a);
  //   $display("--- sv_string : input=%s", a);
  endtask

endmodule : tb

