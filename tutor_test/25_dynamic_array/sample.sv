module tb;

  int hoge[];

  initial begin
    hoge = new[100];
    $display("hoge size = %4d", hoge.size);
    hoge = new[hoge.size + 10](hoge); // add array + 10
    $display("hoge size = %4d", hoge.size);
    hoge.delete; // delete array
    $display("hoge size = %4d", hoge.size);
  end

endmodule
