`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2020 11:41:22 PM
// Design Name: 
// Module Name: Converter
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


module Converter(
    input [0:3] n, neg, state, 
    output [6:0] out
    );
    
    wire n0, n1, n2, n3;
    wire s0, s1, s2, s3, s4, s5, s6;
    wire t0, t1, t2, t3, t4, t5, t6;
    
    assign n0 = n[0]; 
    assign n1 = n[1]; 
    assign n2 = n[2];
    assign n3 = n[3];
    
    //assign t0 = s0|(state&neg);

    //assign t6 = (~(state&neg))&s6;
  
//    assign out[0] = ((n0 & ~n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & n1 & ~n2 & n3)|(n0 & ~n1 & n2 & n3));
//    assign out[1] = ((n0 & ~n1 & n2 & ~n3)|(~n0 & n1 & n2 & ~n3)|(n0 & n1 & ~n2 & n3)|(~n0 & ~n1 & n2 & n3)|(~n0 & n1 & n2 & n3)|(n0 & n1 & n2 & n3));
//    assign out[2] = ((~n0 & n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & n3)|(~n0 & n1 & n2 & n3)|(n0 & n1 & n2 & n3)); 
//    assign out[3] = ((n0 & ~n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & ~n2 & n3)|(~n0 & n1 & ~n2 & n3)|(n0 & n1 & n2 & n3));
//    assign out[4] = ((n0 & ~n1 & ~n2 & ~n3)|(n0 & n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & ~n1 & n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & ~n2 & n3));
//    assign out[5] = ((n0 & ~n1 & ~n2 & ~n3)|(~n0 & n1 & ~n2 & ~n3)|(n0 & n1 & ~n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & n2 & n3));
//    assign out[6] = ((~n0 & ~n1 & ~n2 & ~n3)|(n0 & ~n1 & ~n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(~n0 & ~n1 & n2 & n3));
    
    assign out[0] = (((n0 & ~n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & n1 & ~n2 & n3)|(n0 & ~n1 & n2 & n3))&(~state|~neg))|(state|neg);
    assign out[1] = ((n0 & ~n1 & n2 & ~n3)|(~n0 & n1 & n2 & ~n3)|(n0 & n1 & ~n2 & n3)|(~n0 & ~n1 & n2 & n3)|(~n0 & n1 & n2 & n3)|(n0 & n1 & n2 & n3))|(state&neg);
    assign out[2] = ((~n0 & n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & n3)|(~n0 & n1 & n2 & n3)|(n0 & n1 & n2 & n3))|(state&neg); 
    assign out[3] = ((n0 & ~n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & ~n2 & n3)|(~n0 & n1 & ~n2 & n3)|(n0 & n1 & n2 & n3))|(state&neg);
    assign out[4] = ((n0 & ~n1 & ~n2 & ~n3)|(n0 & n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & ~n1 & n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & ~n2 & n3))|(state&neg);
    assign out[5] = ((n0 & ~n1 & ~n2 & ~n3)|(~n0 & n1 & ~n2 & ~n3)|(n0 & n1 & ~n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & n2 & n3))|(state&neg);
    assign out[6] = ((~n0 & ~n1 & ~n2 & ~n3)|(n0 & ~n1 & ~n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(~n0 & ~n1 & n2 & n3))&(~(state&neg));
   
    
endmodule
