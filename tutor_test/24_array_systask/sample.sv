module tb;

  logic[15:0] hoge[8:1];
  int tmp;

  initial begin
    for(int i=0;i<8;i++) begin
      hoge[i+1] = 2 << i;
      $display("hoge[%1d] = 0x%h", i+1, hoge[i+1]);
    end
    tmp = $dimensions(hoge);  $display("dimension is %2d", tmp);
    tmp = $left(hoge,1);      $display("left      is %2d", tmp);
    tmp = $right(hoge,1);     $display("right     is %2d", tmp);
    tmp = $low(hoge,1);       $display("low       is %2d", tmp);
    tmp = $high(hoge,1);      $display("high      is %2d", tmp);
    tmp = $size(hoge,1);      $display("size      is %2d", tmp);
    tmp = $increment(hoge,1); $display("increment is %2d", tmp);
    #100;
    $finish;
  end

endmodule
