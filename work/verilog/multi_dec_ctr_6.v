/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     DIGITS = 4
*/
module multi_dec_ctr_6 (
    input clk,
    input rst,
    input inc,
    output reg [15:0] digits
  );
  
  localparam DIGITS = 3'h4;
  
  
  wire [(3'h4+0)-1:0] M_dctr_ovf;
  wire [(3'h4+0)*4-1:0] M_dctr_value;
  reg [(3'h4+0)-1:0] M_dctr_inc;
  
  genvar GEN_dctr0;
  generate
  for (GEN_dctr0=0;GEN_dctr0<3'h4;GEN_dctr0=GEN_dctr0+1) begin: dctr_gen_0
    decimal_counter_16 dctr (
      .clk(clk),
      .rst(rst),
      .inc(M_dctr_inc[GEN_dctr0*(1)+(1)-1-:(1)]),
      .ovf(M_dctr_ovf[GEN_dctr0*(1)+(1)-1-:(1)]),
      .value(M_dctr_value[GEN_dctr0*(3'h4)+(3'h4)-1-:(3'h4)])
    );
  end
  endgenerate
  
  always @* begin
    M_dctr_inc[0+0-:1] = inc;
    digits = M_dctr_value;
    M_dctr_inc[1+2-:3] = M_dctr_ovf[0+2-:3];
  end
endmodule
