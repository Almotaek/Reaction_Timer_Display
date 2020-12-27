`timescale 1ns / 1ps
module Counter(input logic clk, reset,start_rwait,
               output logic [12:0] q,output logic rwait_done);
always_ff @(posedge clk)
            begin
                if (reset) 
                    begin 
                        q<= 1'd0;  
                        rwait_done <= 1'b0; 
                    end
                else if(q==13'd5000)
                    begin 
                    q<= 1'd0;  
                    rwait_done <= 1'b1; 
                    end
                
                else if(start_rwait)  
                    begin 
                        q <= q + 1'd1;
                        rwait_done <= 1'b0;  
                     end
           end     
endmodule
