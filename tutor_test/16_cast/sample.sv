module testbench;

  int data;
  int cast_flag ;
  enum {a,b,c} enum_t;

  initial begin
    data = 100;
    $cast(data, data **2);
    $display("--- data = %d ---", data);
    // cast
    data = 'h7fffffff;
    cast_flag = $cast(data, 3.14 * data);
    $display("--- data = %d, flag = %d---", data, cast_flag);
    // Error
    cast_flag = $cast(enum_t, data * -10 );
    $display("--- data = %d, flag = %d---", data, cast_flag);
    $finish(1);
  end

endmodule:testbench
