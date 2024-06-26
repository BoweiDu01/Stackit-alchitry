/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module blockit_beta_2 (
    input buttonpress,
    input clk,
    input rst,
    output reg decimal_counter_increase,
    output reg decimal_counter_rst,
    output reg [15:0] currentrow,
    output reg [15:0] previousrow,
    output reg [15:0] rowcounter,
    output reg [15:0] blockdirection,
    output reg [15:0] currenttimer,
    output reg [15:0] combocount,
    output reg [15:0] score,
    output reg [15:0] stack1,
    output reg [15:0] stack2,
    output reg [15:0] stack3,
    output reg [15:0] stack4,
    output reg [15:0] stack5,
    output reg [15:0] distfromleft,
    output reg [15:0] finaloutput
  );
  
  
  
  reg [15:0] inputAlu_a;
  
  reg [15:0] inputAlu_b;
  
  wire [16-1:0] M_game_alu_out;
  wire [3-1:0] M_game_alu_zvn;
  reg [16-1:0] M_game_alu_a;
  reg [16-1:0] M_game_alu_b;
  reg [6-1:0] M_game_alu_alufn_signal;
  alu_10 game_alu (
    .a(M_game_alu_a),
    .b(M_game_alu_b),
    .alufn_signal(M_game_alu_alufn_signal),
    .out(M_game_alu_out),
    .zvn(M_game_alu_zvn)
  );
  
  wire [1-1:0] M_row_clock1_detector_out;
  reg [1-1:0] M_row_clock1_detector_in;
  edge_detector_5 row_clock1_detector (
    .clk(clk),
    .in(M_row_clock1_detector_in),
    .out(M_row_clock1_detector_out)
  );
  wire [1-1:0] M_game_timer_detector_out;
  reg [1-1:0] M_game_timer_detector_in;
  edge_detector_5 game_timer_detector (
    .clk(clk),
    .in(M_game_timer_detector_in),
    .out(M_game_timer_detector_out)
  );
  wire [6-1:0] M_controlunit_alufn;
  wire [3-1:0] M_controlunit_asel;
  wire [3-1:0] M_controlunit_bsel;
  wire [2-1:0] M_controlunit_alu_out_sel;
  wire [4-1:0] M_controlunit_regfile_write_address;
  wire [4-1:0] M_controlunit_regfile_read_address_a;
  wire [4-1:0] M_controlunit_regfile_read_address_b;
  wire [1-1:0] M_controlunit_we_regfile;
  wire [1-1:0] M_controlunit_decimal_counter_increase;
  wire [1-1:0] M_controlunit_decimal_counter_rst;
  wire [4-1:0] M_controlunit_debug;
  reg [1-1:0] M_controlunit_buttonpress;
  reg [1-1:0] M_controlunit_decrease_timer;
  reg [1-1:0] M_controlunit_rowclock1;
  reg [16-1:0] M_controlunit_regfile_datain;
  blockit_controlunit_11 controlunit (
    .clk(clk),
    .rst(rst),
    .buttonpress(M_controlunit_buttonpress),
    .decrease_timer(M_controlunit_decrease_timer),
    .rowclock1(M_controlunit_rowclock1),
    .regfile_datain(M_controlunit_regfile_datain),
    .alufn(M_controlunit_alufn),
    .asel(M_controlunit_asel),
    .bsel(M_controlunit_bsel),
    .alu_out_sel(M_controlunit_alu_out_sel),
    .regfile_write_address(M_controlunit_regfile_write_address),
    .regfile_read_address_a(M_controlunit_regfile_read_address_a),
    .regfile_read_address_b(M_controlunit_regfile_read_address_b),
    .we_regfile(M_controlunit_we_regfile),
    .decimal_counter_increase(M_controlunit_decimal_counter_increase),
    .decimal_counter_rst(M_controlunit_decimal_counter_rst),
    .debug(M_controlunit_debug)
  );
  wire [16-1:0] M_regfile_out_a;
  wire [16-1:0] M_regfile_out_b;
  wire [16-1:0] M_regfile_currentrow;
  wire [16-1:0] M_regfile_previousrow;
  wire [16-1:0] M_regfile_rowcounter;
  wire [1-1:0] M_regfile_blockdirection;
  wire [16-1:0] M_regfile_currenttimer;
  wire [16-1:0] M_regfile_combocount;
  wire [16-1:0] M_regfile_score;
  wire [16-1:0] M_regfile_stack1;
  wire [16-1:0] M_regfile_stack2;
  wire [16-1:0] M_regfile_stack3;
  wire [16-1:0] M_regfile_stack4;
  wire [16-1:0] M_regfile_stack5;
  wire [16-1:0] M_regfile_ticklimit;
  wire [16-1:0] M_regfile_distfromleft;
  reg [4-1:0] M_regfile_write_address;
  reg [1-1:0] M_regfile_we;
  reg [16-1:0] M_regfile_data;
  reg [4-1:0] M_regfile_read_address_a;
  reg [4-1:0] M_regfile_read_address_b;
  blockit_regfile_12 regfile (
    .clk(clk),
    .rst(rst),
    .write_address(M_regfile_write_address),
    .we(M_regfile_we),
    .data(M_regfile_data),
    .read_address_a(M_regfile_read_address_a),
    .read_address_b(M_regfile_read_address_b),
    .out_a(M_regfile_out_a),
    .out_b(M_regfile_out_b),
    .currentrow(M_regfile_currentrow),
    .previousrow(M_regfile_previousrow),
    .rowcounter(M_regfile_rowcounter),
    .blockdirection(M_regfile_blockdirection),
    .currenttimer(M_regfile_currenttimer),
    .combocount(M_regfile_combocount),
    .score(M_regfile_score),
    .stack1(M_regfile_stack1),
    .stack2(M_regfile_stack2),
    .stack3(M_regfile_stack3),
    .stack4(M_regfile_stack4),
    .stack5(M_regfile_stack5),
    .ticklimit(M_regfile_ticklimit),
    .distfromleft(M_regfile_distfromleft)
  );
  wire [1-1:0] M_slowclock_value;
  counter_13 slowclock (
    .clk(clk),
    .rst(rst),
    .value(M_slowclock_value)
  );
  wire [1-1:0] M_slow_timer_value;
  counter_14 slow_timer (
    .clk(clk),
    .rst(rst),
    .value(M_slow_timer_value)
  );
  
  always @* begin
    M_row_clock1_detector_in = M_slowclock_value;
    M_game_timer_detector_in = M_slow_timer_value;
    M_controlunit_decrease_timer = M_game_timer_detector_out;
    M_controlunit_buttonpress = buttonpress;
    M_controlunit_rowclock1 = M_row_clock1_detector_out;
    decimal_counter_increase = M_controlunit_decimal_counter_increase;
    decimal_counter_rst = M_controlunit_decimal_counter_rst;
    M_regfile_we = M_controlunit_we_regfile;
    M_regfile_write_address = M_controlunit_regfile_write_address;
    M_regfile_read_address_a = M_controlunit_regfile_read_address_a;
    M_regfile_read_address_b = M_controlunit_regfile_read_address_b;
    M_controlunit_regfile_datain = M_regfile_out_b;
    
    case (M_controlunit_asel)
      2'h0: begin
        inputAlu_a = M_regfile_out_a;
      end
      2'h1: begin
        inputAlu_a = 1'h0;
      end
      2'h2: begin
        inputAlu_a = 8'h1e;
      end
      2'h3: begin
        inputAlu_a = 8'h2d;
      end
      default: begin
        inputAlu_a = 1'h0;
      end
    endcase
    
    case (M_controlunit_bsel)
      2'h0: begin
        inputAlu_b = M_regfile_out_b;
      end
      2'h1: begin
        inputAlu_b = 1'h1;
      end
      2'h2: begin
        inputAlu_b = 16'h8000;
      end
      2'h3: begin
        inputAlu_b = 8'h10;
      end
      default: begin
        inputAlu_b = 1'h0;
      end
    endcase
    M_game_alu_a = inputAlu_a;
    M_game_alu_b = inputAlu_b;
    M_game_alu_alufn_signal = M_controlunit_alufn;
    
    case (M_controlunit_alu_out_sel)
      2'h1: begin
        M_regfile_data = 16'hffff;
      end
      2'h2: begin
        M_regfile_data = 16'hf00f;
      end
      2'h3: begin
        M_regfile_data = 1'h1;
      end
      default: begin
        M_regfile_data = M_game_alu_out;
      end
    endcase
    currentrow = M_regfile_currentrow;
    previousrow = M_regfile_previousrow;
    rowcounter = M_regfile_rowcounter;
    blockdirection = M_regfile_blockdirection;
    currenttimer = M_regfile_currenttimer;
    combocount = M_regfile_combocount;
    score = M_regfile_score;
    stack1 = M_regfile_stack1;
    stack2 = M_regfile_stack2;
    stack3 = M_regfile_stack3;
    stack4 = M_regfile_stack4;
    stack5 = M_regfile_stack5;
    distfromleft = M_regfile_distfromleft;
    finaloutput = M_controlunit_debug;
  end
endmodule
