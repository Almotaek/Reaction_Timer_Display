`timescale 1ns / 1ps

module Delay_Counter_tb();
// INPUTS
logic clk, time_clr,record_wait,stop;
// OUTPUTS
logic [3:0] qq1,qq2,qq3,qq4;
logic error_long_delay,record_wait_done;

Delay_Counter DUV(.clk, .time_clr,.record_wait,.stop,
               .qq1,.qq2,.qq3,.qq4,.error_long_delay,.record_wait_done); // DECLARING THE MODULE

parameter CLK_PD = 10; // A 10 PARAMETER

//CYCLE DURATION:
always begin
   clk = 1'b0; #(CLK_PD/2);
   clk = 1'b1; #(CLK_PD/2);
end
//CHANGING INPUTS WITH EACH EDGE:
initial begin
   time_clr = 1;
   record_wait =0;
   stop=0;
   @(posedge clk); #1;
   time_clr = 0;
   record_wait =1;
   stop=0;
   repeat (5) @(posedge clk); #1;
   time_clr = 0;
   record_wait =1;
   stop=0;
   @(posedge clk); #1;
   time_clr = 0;
   record_wait =0;
   stop=1;
   repeat (2) @(posedge clk); #1;
   time_clr = 1;
   record_wait =0;
   stop=0;
   @(posedge clk); #1;
   time_clr = 0;
   record_wait =1;
   stop=0;
   repeat (100) @(posedge clk); #1;
   time_clr = 0;
   record_wait =1;
   stop=0;
   $stop;
end
endmodule