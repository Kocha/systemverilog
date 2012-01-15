// SystemVerilog test_module
module test(
  input  logic[7:0] in_a,
  input  logic[7:0] in_b,
  input  logic[7:0] in_c,
  output logic[7:0] out
  );

  //always_comb begin
  always @(*) begin
     out = in_a + in_b + in_c;
  end

endmodule

// TestBench
module testbench();

  logic[7:0] tb_a = 0;
  logic[7:0] tb_b = 0;
  logic[7:0] tb_c = 0;
  logic[7:0] tb_out;

  test DUT(
    .in_a(tb_a),
    .in_b(tb_b),
    .in_c(tb_c),
    .out(tb_out)
  );

  initial begin
    #100 tb_a++; tb_c++; $display("out=%d", tb_out);
    #100 tb_a++; tb_c++; $display("out=%d", tb_out);
    #100 tb_a++; tb_c++; $display("out=%d", tb_out);
    #100 tb_c++; $display("out=%d", tb_out);
    #100 tb_c++; $display("out=%d", tb_out);
    #100 tb_c++; $display("out=%d", tb_out);
    $finish();
  end

endmodule

