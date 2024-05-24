/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     CLK_FREQ = 50000000
     MIN_DELAY = 20
     NUM_SYNC = 2
*/
module button_conditioner_4 (
    input clk,
    input in,
    output reg out
  );
  
  localparam CLK_FREQ = 26'h2faf080;
  localparam MIN_DELAY = 5'h14;
  localparam NUM_SYNC = 2'h2;
  
  
  wire [1-1:0] M_sync_out;
  reg [1-1:0] M_sync_in;
  pipeline_15 sync (
    .clk(clk),
    .in(M_sync_in),
    .out(M_sync_out)
  );
  reg [19:0] M_ctr_d, M_ctr_q = 1'h0;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    M_sync_in = in;
    out = (&M_ctr_q);
    if (!(&M_ctr_q)) begin
      M_ctr_d = M_ctr_q + 1'h1;
    end
    if (!M_sync_out) begin
      M_ctr_d = 1'h0;
    end
  end
  
  always @(posedge clk) begin
    M_ctr_q <= M_ctr_d;
  end
  
endmodule
