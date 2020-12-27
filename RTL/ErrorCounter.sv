`timescale 1ns / 1ps
module CounterError(input logic clk, reset,error_wait,
               output logic [12:0] q,output logic error_wait_done);
always_ff @(posedge clk)
                           begin
                               if (reset) 
                                   begin 
                                       q<= 1'd0;  
                                       error_wait_done <= 1'b0; 
                                   end
                               else if(q==13'd5000)
                                   begin 
                                   q<= 1'd0;  
                                   error_wait_done <= 1'b1; 
                                   end
                               
                               else if(error_wait)  
                                   begin 
                                       q <= q + 1'd1;
                                     error_wait_done <= 1'b0;  
                                    end
                          end     
               endmodule
