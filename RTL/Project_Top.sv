`timescale 1ns / 1ps
module Project_Top(input logic mode,clk_100MHz, reset,enter,stop,output logic rgb_r, rgb_g,rgb_b,
output logic [6:0] segs_1 ,output logic [7:0] an,output point);
logic [6:0] segsR, segsS;
logic [7:0] anR, anS;

Top_Reaction_Timer Top_Reaction_Timer(.clk_100MHz(clk_100MHz), .reset(reset),.enter(enter),.stop(stop),.rgb_r(rgb_r),.rgb_g(rgb_g),.rgb_b(rgb_b),
.segs_1(segsR) ,.an(anR), .point(point));

Seven_Seg_Control Seven_Seg_Control(.clk_100MHz(clk_100MHz),.reset(reset),.enb(mode),.segs_1(segsS) ,.an(anS));

always_comb
    begin 
        if(mode==1'b0)
        begin
        segs_1= segsR;
        an = anR;
        end
        else 
        begin
        segs_1 = segsS;
        an = anS;
        end
    end
endmodule

