module tb;

  reg[31:0] a;
  reg[31:0] seq1_data;
  reg[31:0] seq2_data;
 
  initial begin
    #10;
    task_static(2, seq1_data);
    $display("--- Static   ::time:%3t, task output value = %d, a value = %d", $time, seq1_data ,a);
    #30;
    task_automatic(2, seq1_data);
    $display("--- Automatic::time:%3t, task output value = %d, a value = %d", $time, seq1_data ,a);
    #10;
  end
 
  initial begin
    #10;
    task_static(100, seq2_data);
    $display("--- Static   ::time:%3t, task output value = %d, a value = %d", $time, seq2_data ,a);
    #30;
    task_automatic(100, seq2_data);
    $display("--- Automatic::time:%3t, task output value = %d, a value = %d", $time, seq2_data ,a);
    #100;
    $finish(2);
  end
 
  task task_static;
    input[31:0]  indata;
    output[31:0] outdata;
    automatic reg [31:0] tmp;
    begin
      tmp     = indata*10;
      outdata = indata*10;
      $display("--- Static   ::time:%3t, Call Static Task:tmp value = %d", $time, tmp);
      #10;
      a = tmp;
    end
  endtask

  task automatic task_automatic;
    input[31:0]  indata;
    output[31:0] outdata;
    static reg [31:0] tmp;
    begin
      tmp     = indata*10;
      outdata = indata*10;
      $display("--- Automatic::time:%3t, Call Static Task:tmp value = %d", $time, tmp);
      #10;
      a = tmp;
    end
  endtask

endmodule
