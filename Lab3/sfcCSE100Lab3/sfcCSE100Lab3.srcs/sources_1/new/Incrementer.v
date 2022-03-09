`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 01:36:14 AM
// Design Name: 
// Module Name: Incrementer
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


module Incrementer(
    input Cin,
    input [7:0] a,
    input [1:0] b,
    output [7:0] s
    ); 
    
    wire [7:0] c;
    
    Full_Adder Adder1(.a(a[0]), .b(b[0]), .cin(Cin), .sum(s[0]), .cout(c[0]));
    Full_Adder Adder2(.a(a[1]), .b(b[1]), .cin(c[0]), .sum(s[1]), .cout(c[1]));
    Full_Adder Adder3(.a(a[2]), .b(1'b0), .cin(c[1]), .sum(s[2]), .cout(c[2]));
    Full_Adder Adder4(.a(a[3]), .b(1'b0), .cin(c[2]), .sum(s[3]), .cout(c[3]));
    Full_Adder Adder5(.a(a[4]), .b(1'b0), .cin(c[3]), .sum(s[4]), .cout(c[4]));
    Full_Adder Adder6(.a(a[5]), .b(1'b0), .cin(c[4]), .sum(s[5]), .cout(c[5]));
    Full_Adder Adder7(.a(a[6]), .b(1'b0), .cin(c[5]), .sum(s[6]), .cout(c[6]));
    Full_Adder Adder8(.a(a[7]), .b(1'b0), .cin(c[6]), .sum(s[7]), .cout()); 
    
    
endmodule
