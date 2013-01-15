class hoge;
  int   x;
  real  y;
  task show(string name);
    $display("--- name:%s x = %d, y = %f", name, x, y);
  endtask;
endclass

module testbench;
  hoge a = new;
  hoge b = new;

  initial begin
    $display("start ---");
    a.x = 3; a.y = 1.0;
    a.show("a");
    b.show("b");
    // 代入
    $display("step1 : b = a ---");
    b = a;
    a.show("a");
    b.show("b");
    // b クラスへの代入
    $display("step2 : b class set data ---");
    b.x = 100; b.y = 0.9;
    a.show("a");
    b.show("b");
    $finish(1);
  end

endmodule:testbench
