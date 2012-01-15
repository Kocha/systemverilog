// SystemVerilog test_module
module test(
  input  logic[7:0] in_a,
  input  logic[7:0] in_b,
  input  logic      in_sel,
  output logic[7:0] out
  );

  always_comb begin
    if(in_sel) begin
      out = in_a + in_b;
    end
    //else begin
    //  out = in_a - in_b;   
    //end
  end

endmodule

// TestBench
module testbench();

  logic[7:0] tb_a = 0;
  logic[7:0] tb_b = 0;
  logic      tb_sel = 0;
  logic[7:0] tb_out;

  test DUT(
    .in_a(tb_a),
    .in_b(tb_b),
    .in_sel(tb_sel),
    .out(tb_out)
  );

  initial begin
    #100 tb_a++; $display("out=%d", tb_out);
    #100 tb_a++; $display("out=%d", tb_out);
    #100 tb_a++; $display("out=%d", tb_out);
    #100 tb_b++; $display("out=%d", tb_out);
    #100 tb_b++; $display("out=%d", tb_out);
    #100 tb_b++; $display("out=%d", tb_out);
    $finish();
  end

endmodule

