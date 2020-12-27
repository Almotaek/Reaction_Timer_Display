`timescale 1ns / 1ps

module Counter_tb();
// INPUTS
logic clk, reset,start_rwait;
// OUTPUTS
logic [12:0] q;
logic rwait_done;

Counter DUV(.clk, .reset,.start_rwait,.q,.rwait_done); // DECLARING THE MODULE

parameter CLK_PD = 10; // A 10 PARAMETER

//CYCLE DURATION:
always begin
   clk = 1'b0; #(CLK_PD/2);
   clk = 1'b1; #(CLK_PD/2);
end
//CHANGING INPUTS WITH EACH EDGE:
initial begin
   reset = 1;
   start_rwait =0;
   @(posedge clk); #1;
   reset = 0;
   start_rwait =1;
   repeat (10) @(posedge clk); #1;
   reset = 0;
   start_rwait =1;
   $stop;
end
endmodule