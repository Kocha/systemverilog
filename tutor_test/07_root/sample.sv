module top(input bit clock, input bit a, output bit[1:0] b);

  // hoge uhoge(.*);
  subm usubm(.*);

endmodule

module subm(input bit clock, input bit a, output bit[1:0] b);

  hoge uhoge(.*);

endmodule

module hoge(input bit clock, input bit a, output bit[1:0] b);

  always @(posedge clock) begin
    b[1] <= b[0] ;
    b[0] <= a;
  end

  always @(posedge clock) begin
    $display("------ testbench.in = %b, top.b(out) = %b", 
             $root.testbench.in, $root.testbench.utop.b);   
  end
endmodule

module testbench;
  bit      clock = 0;
  bit      in = 0;
  bit[1:0] out;

  top utop(.*, .a(in), .b(out));

  always #5 clock = ~clock;

  initial begin
    @(posedge clock); in = 0; // $display("--- in = %b, out = %b", in, out);
    @(posedge clock); in = 1; // $display("--- in = %b, out = %b", in, out);
    @(posedge clock); in = 1; // $display("--- in = %b, out = %b", in, out);
    @(posedge clock); in = 0; // $display("--- in = %b, out = %b", in, out);
    @(posedge clock); in = 1; // $display("--- in = %b, out = %b", in, out);
    @(posedge clock); in = 0; // $display("--- in = %b, out = %b", in, out);
    @(posedge clock); in = 1; // $display("--- in = %b, out = %b", in, out);
    @(posedge clock); in = 0; // $display("--- in = %b, out = %b", in, out);
    @(posedge clock); in = 0; // $display("--- in = %b, out = %b", in, out);
    $finish(1);
  end

endmodule:testbench
