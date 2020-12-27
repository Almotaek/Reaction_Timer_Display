`timescale 1ns / 1ps

module CounterError_tb();
// INPUTS
logic clk, reset,error_wait;
// OUTPUTS
logic [12:0] q;
logic error_wait_done;

CounterError DUV(.clk, .reset,.error_wait,.q,.error_wait_done); // DECLARING THE MODULE

parameter CLK_PD = 10; // A 10 PARAMETER

//CYCLE DURATION:
always begin
   clk = 1'b0; #(CLK_PD/2);
   clk = 1'b1; #(CLK_PD/2);
end
//CHANGING INPUTS WITH EACH EDGE:
initial begin
   reset = 1;
   error_wait =0;
   @(posedge clk); #1;
   reset = 0;
   error_wait =1;
   repeat (10) @(posedge clk); #1;
   reset = 0;
   error_wait =1;
   $stop;
end
endmodule
