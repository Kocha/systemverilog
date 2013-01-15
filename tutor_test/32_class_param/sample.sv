class hoge #(int width = 1);

  logic [width-1:0] l_a;

  function void show();
    $display("--- a = %3d", l_a);
  endfunction

endclass

module testbench;

  hoge #(4) cl_4hoge = new;
  hoge #(8) cl_8hoge = new;

  initial begin
    cl_4hoge.l_a =  3; cl_4hoge.show();
    cl_8hoge.l_a = 10; cl_8hoge.show();
    cl_4hoge.l_a = 20; cl_4hoge.show();
    $finish;
  end

endmodule
