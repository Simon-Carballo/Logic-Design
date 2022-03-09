`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 11:14:19 PM
// Design Name: 
// Module Name: 4-Bit_Adder
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


module Four_Bit_Adder(
    input c,
    input a0,
    input b0,
    input a1,
    input b1,
    input a2,
    input b2,
    output s0,
    output s1,
    output s2,
    output s3
    );
    
    wire t0, t1;
    
    Full_Adder Adder1(.A(a0), .B(b0), .Cin(c), .S(s0), .Cout(t0));
    Full_Adder Adder2(.A(a1), .B(b1), .Cin(t0), .S(s1), .Cout(t1));
    Full_Adder Adder3(.A(a2), .B(b2), .Cin(t1), .S(s2), .Cout(s3));
    
    
    
endmodule
