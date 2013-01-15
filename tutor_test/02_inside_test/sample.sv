module testbench;
  // class c_rand;
  //   rand integer value;
  // endclass
  // c_rand test;

  typedef enum
  {
    IDLE = 1, EXE = 2, STOP = 4, SLEEP = 8
  } def_t;
  def_t state;

  initial begin
    //--- inside {value}
    for(int i=0; i<16; i++) begin
      if( i inside {0,3,8} ) begin
        $display("--- i = %d ---", i);
      end
    end
    //--- randmize
    // test = new();
    // if(test.randomize()) $display("--- rand value=%d", test.value);
    // else                 $display("--- Error Randmize ---");
    //--- enum
    state = EXE;
    if(!(state inside {IDLE, SLEEP})) 
      $display("--- Error:Not State= IDLE or SLEEP ---");
    state = IDLE;
    if(!(state inside {IDLE, SLEEP})) 
      $display("--- Error:Not State= IDLE or SLEEP ---");

    $finish(1);
  end

endmodule:testbench

