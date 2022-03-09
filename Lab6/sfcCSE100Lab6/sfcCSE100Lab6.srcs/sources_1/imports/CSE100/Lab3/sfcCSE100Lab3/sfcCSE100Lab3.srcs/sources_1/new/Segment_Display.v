`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 02:40:39 PM
// Design Name: 
// Module Name: Segment_Display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Segment_Display(
    input [3:0] n, neg, state,
    output [6:0] sego
    );
    
    wire s0, s1, s2, s3, s4, s5, s6;
    
//    assign sego[0] = (s0&(~state|~neg))|(state|neg);
//    assign sego[1] = (s1&(~state|~neg))|(state|neg);
//    assign sego[2] = (s2&(~state|~neg))|(state|neg);
//    assign sego[3] = (s3&(~state|~neg))|(state|neg);
//    assign sego[4] = (s4&(~state|~neg))|(state|neg);
//    assign sego[5] = (s5&(~state|~neg))|(state|neg);
//    assign sego[6] = (s6&(~state|~neg));
    
    assign sego[0] = s0|neg;
    assign sego[1] = s1|neg;
    assign sego[2] = s2|neg;
    assign sego[3] = s3|neg;
    assign sego[4] = s4|neg;
    assign sego[5] = s5|neg;
    assign sego[6] = s6&~neg;
    
    MUX8_1 SegA(.in({1'b0, n[0], n[0], 1'b0, 1'b0, ~n[0], 1'b0, n[0]}), .sel(n[3:1]), .out(s0)); 
    MUX8_1 SegB(.in({1'b1, ~n[0], n[0], 1'b0, ~n[0], n[0], 1'b0, 1'b0}), .sel(n[3:1]), .out(s1));   
    MUX8_1 SegC(.in({1'b1, ~n[0], 1'b0, 1'b0, 1'b0, 1'b0, ~n[0], 1'b0}), .sel(n[3:1]), .out(s2));
    MUX8_1 SegD(.in({n[0], 1'b0, ~n[0], n[0], n[0], ~n[0], 1'b0, n[0]}), .sel(n[3:1]), .out(s3));
    MUX8_1 SegE(.in({1'b0, 1'b0, 1'b0, n[0], n[0], 1'b1, n[0], n[0]}), .sel(n[3:1]), .out(s4));
    MUX8_1 SegF(.in({1'b0, n[0], 1'b0, 1'b0, n[0], 1'b0, 1'b1, n[0]}), .sel(n[3:1]), .out(s5));
    MUX8_1 SegG(.in({1'b0, ~n[0], 1'b0, 1'b0, n[0], 1'b0, 1'b0, 1'b1}), .sel(n[3:1]), .out(s6));
    
    //assign sego[6] = neg;
    
endmodule
