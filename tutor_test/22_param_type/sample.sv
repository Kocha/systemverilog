
module sum #(parameter type DTYPE = int) (
    input  DTYPE a, b,
    output DTYPE result);
  DTYPE temp;
  always_comb begin
    temp = a + b;
  end
  assign result = temp;
endmodule

module tb;

  integer   int_i=0,int_j=0,int_k;
  shortreal rel_i=0,rel_j=0,rel_k;
  reg[3:0]  reg_i=0,reg_j=0,reg_k;

  sum                      int_hoge(int_i,int_j,int_k);
  sum #(.DTYPE(shortreal)) rel_hoge(rel_i,rel_j,rel_k);
  sum #(.DTYPE(reg[3:0]))  reg_hoge(reg_i,reg_j,reg_k);

  initial begin
    int_i = 2;   int_j = -5;
    rel_i = 1.0; rel_j = 2.5;
    reg_i = 10;  reg_j = 8;
    #10;
    $display("--- int_i = %3d, int_j = %3d, int_k = %3d", int_i,int_j,int_k);
    $display("--- rel_i = %3f, rel_j = %3f, rel_k = %3f", rel_i,rel_j,rel_k);
    $display("--- reg_i = %3d, reg_j = %3d, reg_k = %3d", reg_i,reg_j,reg_k);
    $finish;
  end

endmodule
