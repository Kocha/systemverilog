module testbench;

  string   fruit[4] = '{"banana", "apple", "orange", "hoge"};
  bit[7:0] data;
  bit      _data[8];

  task bitstream (input bit[7:0] in);
    foreach(in[i]) $display("--- in[%1d] = %b", i, in[i]);
  endtask

  task _bitstream (input bit in[8]);
    foreach(in[i]) $display("--- in[%1d] = %b", i, in[i]);
  endtask

  initial begin
    foreach(fruit[i]) $display("--- fruit[%1d] = %s", i, fruit[i]);
    $display("--- Next data type bit[7:0] data");
    data = 'b10101100;
    bitstream(data);
    $display("--- Next data type bit _data[8]");
    _data[7] = 1;
    _data[6] = 0;
    _data[5] = 1;
    _data[4] = 1;
    _data[3] = 1;
    _data[2] = 0;
    _data[1] = 1;
    _data[0] = 1;
    _bitstream(_data);
    $finish(1);
  end

endmodule:testbench
