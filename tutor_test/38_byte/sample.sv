module testbench;

  string foo[byte];
  byte bar;

  initial begin 
    $display("%0d", "a string" == foo["not a byte"]);

    foo["e"] = "a string";
    $display("%0d", "a string" == foo["not a byte"]);

    bar = "not a byte";
    $display("bar: %0s", bar);
  end 

endmodule
