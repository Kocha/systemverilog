module testbench;
  typedef enum { NO[5], NAME[6:10], HOGE } enum_t;

  function void hoge(enum_t in);
    case(in)
      NO0    : $display("--- Serect : enum(NO0   ) ---"); 
      NO1    : $display("--- Serect : enum(NO1   ) ---"); 
      NO2    : $display("--- Serect : enum(NO2   ) ---"); 
      NO3    : $display("--- Serect : enum(NO3   ) ---"); 
      NO4    : $display("--- Serect : enum(NO4   ) ---"); 
      NAME6  : $display("--- Serect : enum(NAME6 ) ---"); 
      NAME7  : $display("--- Serect : enum(NAME7 ) ---"); 
      NAME8  : $display("--- Serect : enum(NAME8 ) ---"); 
      NAME9  : $display("--- Serect : enum(NAME9 ) ---"); 
      NAME10 : $display("--- Serect : enum(NAME10) ---"); 
      HOGE   : $display("--- Serect : enum(HOGE  ) ---"); 
    endcase
  endfunction

  initial begin
    enum_t tmp;
    tmp = NO0   ; hoge(tmp);
    tmp = NO1   ; hoge(tmp);
    tmp = NO2   ; hoge(tmp);
    tmp = NO3   ; hoge(tmp);
    tmp = NO4   ; hoge(tmp);
    tmp = NAME6 ; hoge(tmp);
    tmp = NAME7 ; hoge(tmp);
    tmp = NAME8 ; hoge(tmp);
    tmp = NAME9 ; hoge(tmp);
    tmp = NAME10; hoge(tmp);
    tmp = HOGE  ; hoge(tmp);
    $finish(1);
  end

endmodule:testbench
