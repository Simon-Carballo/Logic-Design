`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2020 04:24:08 PM
// Design Name: 
// Module Name: 8Bit_Adder
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


module Bit8_Adder(
    input [7:0] In, 
    output [7:0] Out 
    );
    
    wire [7:0] C;
    
    Full_Adder bit0(.A(In[0]), .B(1'b0), .Cin(1'b1), .S(Out[0]), .Cout(C[0]));
    Full_Adder bit1(.A(In[1]), .B(1'b0), .Cin(C[0]), .S(Out[1]), .Cout(C[1]));
    Full_Adder bit2(.A(In[2]), .B(1'b0), .Cin(C[1]), .S(Out[2]), .Cout(C[2]));
    Full_Adder bit3(.A(In[3]), .B(1'b0), .Cin(C[2]), .S(Out[3]), .Cout(C[3]));
    Full_Adder bit4(.A(In[4]), .B(1'b0), .Cin(C[3]), .S(Out[4]), .Cout(C[4]));
    Full_Adder bit5(.A(In[5]), .B(1'b0), .Cin(C[4]), .S(Out[5]), .Cout(C[5]));
    Full_Adder bit6(.A(In[6]), .B(1'b0), .Cin(C[6]), .S(Out[6]), .Cout(Out[7]));
    //Full_Adder bit7(.A(In[7]), .B(1'b0), .Cin(C[7]), .S(Out[0]), .Cout(C[0]));
 
    
endmodule
