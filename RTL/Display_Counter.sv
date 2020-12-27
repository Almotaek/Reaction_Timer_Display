`timescale 1ns / 1ps
module Display_Counter(input logic clk, reset,display_wait,
               output logic [12:0] q,output logic display_wait_done);
always_ff @(posedge clk)
                                          begin
                                              if (reset) 
                                                  begin 
                                                      q<= 1'd0;  
                                                      display_wait_done <= 1'b0; 
                                                  end
                                              else if(q==13'd5000)
                                                  begin 
                                                  q<= 1'd0;  
                                                  display_wait_done <= 1'b1; 
                                                  end
                                              
                                              else if(display_wait)  
                                                  begin 
                                                      q <= q + 1'd1;
                                                    display_wait_done <= 1'b0;  
                                                   end
                                         end     
                              endmodule
//assign display_wait_done = (q==13'd5000);
//always_ff @(posedge clk)
//                if (reset) q<= 2'd0;
//                else if(display_wait)  q <= q + 1'd1;
//endmodule
