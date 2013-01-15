module tb;

  logic clk=0, xrst=0, en=0;

  logic[3:0]  bit4_data;
  logic[7:0]  bit8_data;
  logic[10:0] bit11_data;

  always #1 clk <= ~clk;

  sample       bit4_sample (.*, .outdata(bit4_data));
  sample #(8)  bit8_sample (.*, .outdata(bit8_data));
  sample #(11) bit11_sample(.*, .outdata(bit11_data));

  initial begin
    #10;
    $display("--- Initial bit4  value = 'b%b", bit4_data);
    $display("--- Initial bit8  value = 'b%b", bit8_data);
    $display("--- Initial bit11 value = 'b%b", bit11_data);
    xrst = 1; //リセット解除
    #100;
    en = 1;
    $finish(2);
  end

endmodule

module sample(clk, xrst, en, outdata);
  parameter BITWIDTH = 4;
  input  logic clk, xrst, en;
  output logic[BITWIDTH-1:0] outdata;

  always @(posedge clk or negedge xrst) begin
    if(!xrst)   outdata <= '1; // {BITWIDTH{1'b1}}
    else if(en) outdata <= outdata - 1;
  end
endmodule

