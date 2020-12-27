`timescale 1ns / 1ps
module Delay_Counter(input logic clk, time_clr,record_wait,stop,
               output logic [3:0] qq1,qq2,qq3,qq4,output logic error_long_delay,record_wait_done);
               logic carry1,carry2,carry3,carry4;
               logic error_long_delay1,error_long_delay2,error_long_delay3,error_long_delay4;
               logic  record_wait_done1,record_wait_done2,record_wait_done3,record_wait_done4;
          

                    
//               assign record_wait_done = (record_wait_done1==1'b1||record_wait_done2==1'b1||record_wait_done3==1'b1||record_wait_done4==1'b1);
//               assign error_long_delay = carry4;             
              
               //see if error long delpay should be related to the last carray
               
    BCD_Counter BCD_Counter1(.clk(clk),.time_clr(time_clr),.record_wait(record_wait)
    ,.stop(stop),.q(qq1),.error_long_delay(error_long_delay1),.record_wait_done(record_wait_done1),.carry(carry1));
    
   BCD_Counter BCD_Counter2(.clk(clk),.time_clr(time_clr),.record_wait(carry1)
    ,.stop(stop),.q(qq2),.error_long_delay(error_long_delay2),.record_wait_done(record_wait_done2),.carry(carry2));
    
   BCD_Counter BCD_Counter3(.clk(clk),.time_clr(time_clr),.record_wait(carry2)
     ,.stop(stop),.q(qq3),.error_long_delay(error_long_delay3),.record_wait_done(record_wait_done3),.carry(carry3));
             
   BCD_Counter BCD_Counter4(.clk(clk),.time_clr(time_clr),.record_wait(carry3)
       ,.stop(stop),.q(qq4),.error_long_delay(error_long_delay4),.record_wait_done(record_wait_done4),.carry(carry4));
 
                assign error_long_delay=(error_long_delay4==1'b1);
                assign record_wait_done = (record_wait_done1==1'b1||record_wait_done2==1'b1||record_wait_done3==1'b1||record_wait_done4==1'b1);
//                    always_ff @(posedge clk)
//                    begin 
//                            if(record_wait_done1==1'b1||record_wait_done2==1'b1||record_wait_done3==1'b1||record_wait_done4==1'b1)  record_wait_done <= 1'b1;
//                            else record_wait_done <= 1'b0;
//                            if(carry4==1'b1) error_long_delay <= 1'b1;
//                            else error_long_delay <= 1'b0;
//                    end           
//    BCD_Counter BCD_Counter4(.clk(clk),.time_clr(time_clr),.error_wait(error_wait),.start_delay_counter(carry)
//    ,.stop(stop),.q(q),.error_long_delay(error_long_delay),.carry(carry4));

endmodule
