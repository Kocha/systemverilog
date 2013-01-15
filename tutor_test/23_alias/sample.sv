
module add (input  logic[31:0] a, b,
            output logic[31:0] result);
  always_comb begin
    result = a + b;
  end
endmodule

module sub (input  logic[31:0] idt1, idt2,
            output logic[31:0] odt);
  always_comb begin
    odt = idt1 - idt2;
  end
endmodule

module mul (input  logic[31:0] in1, in2,
            output logic[31:0] out);
  always_comb begin
    out = in1 * in2;
  end
endmodule

module exe (input  logic[31:0] data1, data2);

  wire logic[31:0] a,b,result;
  wire logic[31:0] idt1, idt2, odt;
  wire logic[31:0] in1, in2, out;

  alias a = idt1 = in1 = data1;
  alias b = idt2 = in2 = data2;

  add uadd(.*);
  sub usub(.*);
  mul umul(.*);

  initial begin
    #10;
    $display("--- data1 = %3d, data2 = %3d", data1, data2);
    $display("--- add result = %3d", result);
    $display("--- sub result = %3d", odt);
    $display("--- mul result = %3d", out);
  end
endmodule

module tb;

  logic[31:0] data1=0,data2=0;

  exe uexe(.*);

  initial begin
    data1 = 10; data2 = 2;
    #100;
    $finish;
  end

endmodule
