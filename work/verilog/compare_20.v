/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare_20 (
    input z,
    input v,
    input n,
    input [5:0] alufn_signal,
    output reg cmp
  );
  
  
  
  reg nxorv;
  
  always @* begin
    nxorv = n ^ v;
    
    case (alufn_signal[1+1-:2])
      2'h1: begin
        cmp = z;
      end
      2'h2: begin
        cmp = nxorv;
      end
      2'h3: begin
        cmp = z | nxorv;
      end
      default: begin
        cmp = 1'h0;
      end
    endcase
  end
endmodule
