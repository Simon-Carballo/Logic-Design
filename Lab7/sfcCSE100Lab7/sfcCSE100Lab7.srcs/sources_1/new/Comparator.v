`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2020 10:37:20 PM
// Design Name: 
// Module Name: Comparator
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

// Test Passed
module Comparator(
    input [15:0] A, 
    input [15:0] B, 
    output EQ, LT
    );
    
    wire [15:0] e;
    wire [15:0] l;
    
    Compare bit15(.a(A[15]), .b(B[15]), .eq(e[15]), .lt(l[15]));
    Compare bit14(.a(A[14]), .b(B[14]), .eq(e[14]), .lt(l[14]));
    Compare bit13(.a(A[13]), .b(B[13]), .eq(e[13]), .lt(l[13]));
    Compare bit12(.a(A[12]), .b(B[12]), .eq(e[12]), .lt(l[12]));
    Compare bit11(.a(A[11]), .b(B[11]), .eq(e[11]), .lt(l[11]));
    Compare bit10(.a(A[10]), .b(B[10]), .eq(e[10]), .lt(l[10]));
    Compare bit9(.a(A[9]), .b(B[9]), .eq(e[9]), .lt(l[9]));
    Compare bit8(.a(A[8]), .b(B[9]), .eq(e[8]), .lt(l[8]));
    Compare bit7(.a(A[7]), .b(B[7]), .eq(e[7]), .lt(l[7]));
    Compare bit6(.a(A[6]), .b(B[6]), .eq(e[6]), .lt(l[6]));
    Compare bit5(.a(A[5]), .b(B[5]), .eq(e[5]), .lt(l[5]));
    Compare bit4(.a(A[4]), .b(B[4]), .eq(e[4]), .lt(l[4]));
    Compare bit3(.a(A[3]), .b(B[3]), .eq(e[3]), .lt(l[3]));
    Compare bit2(.a(A[2]), .b(B[2]), .eq(e[2]), .lt(l[2]));
    Compare bit1(.a(A[1]), .b(B[1]), .eq(e[1]), .lt(l[1]));
    Compare bit0(.a(A[0]), .b(B[0]), .eq(e[0]), .lt(l[0]));
    
    assign EQ = &e;
    assign LT = l[15]|
    e[15]&l[14]|
    e[15]&e[14]&l[14]|
    e[15]&e[14]&e[13]&l[12]|
    e[15]&e[14]&e[13]&e[12]&l[11]|
    e[15]&e[14]&e[13]&e[12]&e[11]&l[10]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&l[9]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&l[8]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&e[8]&l[7]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&e[8]&e[7]&l[6]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&e[8]&e[7]&e[6]&l[5]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&e[8]&e[7]&e[6]&e[5]&l[4]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&e[8]&e[7]&e[6]&e[5]&e[4]&l[3]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&e[8]&e[7]&e[6]&e[5]&e[4]&e[3]&l[2]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&e[8]&e[7]&e[6]&e[5]&e[4]&e[3]&e[2]&l[1]|
    e[15]&e[14]&e[13]&e[12]&e[11]&e[10]&e[9]&e[8]&e[7]&e[6]&e[5]&e[4]&e[3]&e[2]&e[1]&l[0];
    
    
endmodule
