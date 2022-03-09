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
    input n0,
    input n1,
    input n2,
    input n3,
    output Aout,
    output Bout,
    output Cout,
    output Dout,
    output Eout,
    output Fout,
    output Gout  
    );
    
    assign Aout = (n0 & ~n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & n1 & ~n2 & n3)|(n0 & ~n1 & n2 & n3);
    assign Bout = (n0 & ~n1 & n2 & ~n3)|(~n0 & n1 & n2 & ~n3)|(n0 & n1 & ~n2 & n3)|(~n0 & ~n1 & n2 & n3)|(~n0 & n1 & n2 & n3)|(n0 & n1 & n2 & n3);
    assign Cout = (~n0 & n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & n3)|(~n0 & n1 & n2 & n3)|(n0 & n1 & n2 & n3); 
    assign Dout = (n0 & ~n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & ~n2 & n3)|(~n0 & n1 & ~n2 & n3)|(n0 & n1 & n2 & n3);
    assign Eout = (n0 & ~n1 & ~n2 & ~n3)|(n0 & n1 & ~n2 & ~n3)|(~n0 & ~n1 & n2 & ~n3)|(n0 & ~n1 & n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & ~n2 & n3);
    assign Fout = (n0 & ~n1 & ~n2 & ~n3)|(~n0 & n1 & ~n2 & ~n3)|(n0 & n1 & ~n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(n0 & ~n1 & n2 & n3);
    assign Gout = (~n0 & ~n1 & ~n2 & ~n3)|(n0 & ~n1 & ~n2 & ~n3)|(n0 & n1 & n2 & ~n3)|(~n0 & ~n1 & n2 & n3);
   
    
endmodule
