`timescale 1ns / 1ps

module hex(input logic [2:0] q,input logic [6:0] d0,d1,d2,d3,d4,d5,d6,d7,
output logic [6:0] segs_1);
// Output patterns: abc_defg
always_comb
if(q==3'd0) segs_1 = d0;
else if(q==3'd1) segs_1=d1;
else if(q==3'd2) segs_1=d2;
else if(q==3'd3) segs_1=d3;
else if(q==3'd4) segs_1=d4;
else if(q==3'd5) segs_1=d5;
else if(q==3'd6) segs_1=d6;
else if(q==3'd7) segs_1=d7;
endmodule