`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 05:09:30 PM
// Design Name: 
// Module Name: 16-bit_Adder
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


module bit16_Adder(
    input [15:0] sw,
    output [15:0] out
    );
    
    wire t0, t1;
    
    Full_Adder Adder1(.A(a0), .B(b0), .Cin(c), .S(s0), .Cout(t0));
    Full_Adder Adder2(.A(a1), .B(b1), .Cin(t0), .S(s1), .Cout(t1));
    Full_Adder Adder3(.A(a2), .B(b2), .Cin(t1), .S(s2), .Cout(s3));
    
    
    
endmodule
