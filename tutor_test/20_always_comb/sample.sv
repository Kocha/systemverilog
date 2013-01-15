typedef enum {WAIT, LOAD, STORE, EXE} state_t;

// SystemVerilog test_module
module hoge(
  input  logic clk,
  input  logic rstx,
  output state_t state
  );

  state_t next_state;

  always @(posedge clk or negedge rstx) begin
    if(!rstx) state <= WAIT;
    else      state <= next_state;
  end

`ifdef ALCOMB
  always_comb begin
`else
  always @(state) begin
`endif
    case(state)
      WAIT : next_state = LOAD;
      LOAD : next_state = EXE;
      EXE  : next_state = STORE;
      STORE: next_state = WAIT;
    endcase
  end

endmodule

// TestBench
module testbench();

  logic clk =0;
  logic rstx=0;
  state_t state;

  hoge DUT(.*);

  // show task
  task show(state_t in);
    case(in)
      WAIT : $display("--- state = WAIT  ---");
      LOAD : $display("--- state = LOAD  ---");
      EXE  : $display("--- state = EXE   ---");
      STORE: $display("--- state = STORE ---");
    endcase
  endtask

  always #5 clk <= ~clk;

  initial begin
    #20  rstx = 1;
    #100;
    $finish();
  end

  always @(posedge clk) begin
    show(state);
  end

endmodule
