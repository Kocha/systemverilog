class hoge;
  int   x;
  task set (int i);
    x = i;
  endtask
  function int get;
    return x;
  endfunction

  local int y;
  task set_y (int i);
    y = i;
  endtask
  function int get_y;
    return y;
  endfunction
endclass

module testbench;
  hoge test = new;

  initial begin
    test.set(3);
    $display("---            test.x is %d", test.x);
    $display("--- call get() test.x is %d", test.get());
    test.x = 10;
    $display("---            test.x is %d", test.x);
    $display("--- call get() test.x is %d", test.get());
    $display("Local value y test");
    test.set_y(10);
    $display("--- call get() test.y is %d", test.get_y());
    // test.y = 100;
    // $display("---            test.y is %d", test.y);
    // $display("--- call get() test.y is %d", test.get_y());
    $finish(1);
  end

endmodule:testbench
