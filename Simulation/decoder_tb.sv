`timescale 1ns / 1ps

module decoder_tb();
// INPUTS
logic clk;
logic [2:0] data;
// OUTPUTS
logic [7:0] an;

decoder DUV(.data,.an); // DECLARING THE MODULE

parameter CLK_PD = 10; // A 10 PARAMETER

//CYCLE DURATION:
always begin
   clk = 1'b0; #(CLK_PD/2);
   clk = 1'b1; #(CLK_PD/2);
end
//CHANGING INPUTS WITH EACH EDGE:
initial begin
   data = 3'd0;
   @(posedge clk) #1;
   data = 3'd1;
   @(posedge clk) #1;
   data = 3'd2;
   @(posedge clk) #1;
   data = 3'd3;
   @(posedge clk) #1;
   data = 3'd4;
   @(posedge clk) #1;
   data = 3'd5;
   @(posedge clk) #1;
   data = 3'd6;
   @(posedge clk) #1;
   data = 3'd7;
   $stop;
end
endmodule
