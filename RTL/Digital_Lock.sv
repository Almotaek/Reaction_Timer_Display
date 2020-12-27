`timescale 1ns / 1ps
module Digital_Lock(input logic clk,x,y,output logic unlock);
             typedef enum logic [2:0]{
                          
                                  S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,
                                  S4=3'b100,S5=3'b101
                                  
                               }state_t;
                               state_t state, next_state;
                                                             
                         always_ff @(posedge clk)
                         state <= next_state;
                         
                         always_comb
                             begin                           
                                 next_state = S0;
                                 case (state)
                                 S0:
                                   begin 
                                   if(y) next_state =S0;
                                   else if(x) next_state =S1;
                                   end
                              endcase
                              end

endmodule
