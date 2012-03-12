module tb;
  reg r_a=0;

  sub_m sub_m_inst(.in(r_a));

  import "DPI-C" context task c_main();
  
  initial begin
    c_main();
    $finish(2);
  end

  export "DPI-C" v_task1 = task sub_m_inst.task1;
  export "DPI-C" v_task2 = task sub_m_inst.task2;
  export "DPI-C" v_task3 = task sub_m_inst.task3;
  export "DPI-C" v_task4 = task sub_m_inst.task4;
/*
  task task1;
    $display("--- Call Task1 ---");
  endtask
  
  task task2(input a);
    $display("--- Call Task2 input = %d ---", a);
  endtask

  task task3(input a, output b);
    begin
      $display("--- Call Task3 input = %d ---", a);
      b = 1;
    end
  endtask

  task task4;
    input a; output reg[1:0] b;
    begin
      $display("--- Call Task4 input = %d ---", a);
      b = 2;
    end
  endtask
*/
endmodule : tb

module sub_m(input reg in);

  task task1;
    $display("--- Call Task1 ---");
  endtask
  
  task task2(input a);
    $display("--- Call Task2 input = %d ---", a);
  endtask

  task task3(input a, output b);
    begin
      $display("--- Call Task3 input = %d ---", a);
      b = 1;
    end
  endtask

  task task4;
    input a; output reg[1:0] b;
    begin
      $display("--- Call Task4 input = %d ---", a);
      b = 2;
    end
  endtask

endmodule

