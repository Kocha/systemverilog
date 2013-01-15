module dff (q, d, clear, preset, clock);
  output q;
  input d, clear, preset, clock;
  logic q;

  always @(clear or preset) begin
    if (!clear)       assign q = 0;
    else if (!preset) assign q = 1;
    else              deassign q;
  end

  always @(posedge clock) begin
    q = d;
  end

endmodule

module testbench;
  logic d      = 0;
  logic clear  = 0;
  logic preset = 0;
  logic clock  = 0;
  logic q;

  dff udff(.*);

  always #5 clock = ~clock;

  initial begin
    #6   clear  = 1; preset = 1;
    #100 clear  = 0; #10 clear  = 1;
    #100 preset = 0; #10 preset = 1;
    #100
    $finish(1);
  end

  initial begin
    #6 d = 1;
    @(posedge clock); #1 d = 0;
    @(posedge clock); #1 d = 1;
    @(posedge clock); #1 d = 0;
    @(posedge clock); #1 d = 1;
    #100 @(posedge clock); #1 d = 0;
  end

endmodule:testbench
