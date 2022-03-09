`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 12:02:24 AM
// Design Name: 
// Module Name: Subtractor16bit
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
module Subtractor16bit(
    input [15:0] A, 
    input [15:0] B, 
    output [15:0] out
    );
    
    wire [15:0] b; 
    
    Full_Subtractor bit0(.x(A[0]), .y(B[0]), .Bin(1'b0), .Bout(b[0]), .Diff(out[0]));
    Full_Subtractor bit1(.x(A[1]), .y(B[1]), .Bin(b[0]), .Bout(b[1]), .Diff(out[1]));
    Full_Subtractor bit2(.x(A[2]), .y(B[2]), .Bin(b[1]), .Bout(b[2]), .Diff(out[2]));
    Full_Subtractor bit3(.x(A[3]), .y(B[3]), .Bin(b[2]), .Bout(b[3]), .Diff(out[3]));
    Full_Subtractor bit4(.x(A[4]), .y(B[4]), .Bin(b[3]), .Bout(b[4]), .Diff(out[4]));
    Full_Subtractor bit5(.x(A[5]), .y(B[5]), .Bin(b[4]), .Bout(b[5]), .Diff(out[5]));
    Full_Subtractor bit6(.x(A[6]), .y(B[6]), .Bin(b[5]), .Bout(b[6]), .Diff(out[6]));
    Full_Subtractor bit7(.x(A[7]), .y(B[7]), .Bin(b[6]), .Bout(b[7]), .Diff(out[7]));
    Full_Subtractor bit8(.x(A[8]), .y(B[8]), .Bin(b[7]), .Bout(b[8]), .Diff(out[8]));
    Full_Subtractor bit9(.x(A[9]), .y(B[9]), .Bin(b[8]), .Bout(b[9]), .Diff(out[9]));
    Full_Subtractor bit10(.x(A[10]), .y(B[10]), .Bin(b[9]), .Bout(b[10]), .Diff(out[10]));
    Full_Subtractor bit11(.x(A[11]), .y(B[11]), .Bin(b[10]), .Bout(b[11]), .Diff(out[11]));
    Full_Subtractor bit12(.x(A[12]), .y(B[12]), .Bin(b[11]), .Bout(b[12]), .Diff(out[12]));
    Full_Subtractor bit13(.x(A[13]), .y(B[13]), .Bin(b[12]), .Bout(b[13]), .Diff(out[13]));
    Full_Subtractor bit14(.x(A[14]), .y(B[14]), .Bin(b[13]), .Bout(b[14]), .Diff(out[14]));
    Full_Subtractor bit15(.x(A[15]), .y(B[15]), .Bin(b[14]), .Bout(b[15]), .Diff(out[15])); 
    
endmodule
