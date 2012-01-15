// test module
module test(
  input  logic[7:0] in_a,
  input  logic[7:0] in_b,
  input  logic[7:0] in_c,
  output logic[7:0] out_a,
  output logic[7:0] out_b
  );

  //always_comb begin
  always @(*) begin
     out_a = in_a + in_b;
     add_bc();
  end

  function void add_bc ();
    out_b = in_b + in_c;
  endfunction: add_bc

endmodule

// TestBench
module testbench();

  logic[7:0] tb_a = 0;
  logic[7:0] tb_b = 0;
  logic[7:0] tb_c = 0;
  logic[7:0] tb_out_a;
  logic[7:0] tb_out_b;

  test DUT(
    .in_a(tb_a),
    .in_b(tb_b),
    .in_c(tb_c),
    .out_a(tb_out_a),
    .out_b(tb_out_b)
  );

  initial begin
    #100 tb_a++; tb_c++; $display("out_a=%d, out_b=%d", tb_out_a, tb_out_b);
    #100 tb_a++; tb_c++; $display("out_a=%d, out_b=%d", tb_out_a, tb_out_b);
    #100 tb_a++; tb_c++; $display("out_a=%d, out_b=%d", tb_out_a, tb_out_b);
    #100 tb_c++; $display("out_a=%d, out_b=%d", tb_out_a, tb_out_b);
    #100 tb_c++; $display("out_a=%d, out_b=%d", tb_out_a, tb_out_b);
    #100 tb_c++; $display("out_a=%d, out_b=%d", tb_out_a, tb_out_b);
    $finish();
  end

endmodule

