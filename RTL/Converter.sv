`timescale 1ns / 1ps
module Converter(input logic [3:0] s0,s1,s2,s3,output logic [6:0] d0,d1,d2,d3);
localparam [6:0]
zero = 7'b0000001,
one = 7'b1001111,
two =7'b0010010,
three = 7'b0000110,
four =7'b1001100,
five =7'b100100,
six =7'b0100000,
seven=7'b0001111,
eight=7'b0000000,
nine =7'b0001100;
always_comb
    begin
    case(s0)
        4'd0: d0=zero;
        4'd1: d0=one;
        4'd2: d0=two;
        4'd3: d0=three;
        4'd4: d0=four;
        4'd5: d0=five;
        4'd6: d0=six;
        4'd7: d0=seven;
        4'd8: d0=eight;
        4'd9: d0=nine;
    endcase
    case(s1)
        4'd0: d1=zero;
        4'd1: d1=one;
        4'd2: d1=two;
        4'd3: d1=three;
        4'd4: d1=four;
        4'd5: d1=five;
        4'd6: d1=six;
        4'd7: d1=seven;
        4'd8: d1=eight;
        4'd9: d1=nine;
    endcase
    case(s2)
        4'd0: d2=zero;
        4'd1: d2=one;
        4'd2: d2=two;
        4'd3: d2=three;
        4'd4: d2=four;
        4'd5: d2=five;
        4'd6: d2=six;
        4'd7: d2=seven;
        4'd8: d2=eight;
        4'd9: d2=nine;
    endcase
    case(s3)
        4'd0: d3=zero;
        4'd1: d3=one;
        4'd2: d3=two;
        4'd3: d3=three;
        4'd4: d3=four;
        4'd5: d3=five;
        4'd6: d3=six;
        4'd7: d3=seven;
        4'd8: d3=eight;
        4'd9: d3=nine;
    endcase
    end
endmodule
