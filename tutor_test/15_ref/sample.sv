module testbench;

  logic[1:0] indt;
  logic[2:0] outdt;

  task automatic hoge(ref logic[1:0] in, output logic[2:0] out);
  // task automatic hoge(logic[1:0] in, output logic[2:0] out);
    forever begin
      if(in != 0) break;
      else begin
        $display("--- wating @ time:%4t ps ---", $time);
        #10;
      end
    end
    out = in << 1;
  endtask

  initial begin
    #10;  indt = 0; hoge(indt, outdt);
    $display("--- indt = %d, outdt = %d @ time:%4t ps ---", indt, outdt, $time);
    $finish(1);
  end

  initial begin
    #100; indt = 2;
  end

  initial begin
    #1000;
    $finish(0);
  end

endmodule:testbench
