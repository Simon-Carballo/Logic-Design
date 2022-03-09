`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 06:44:00 PM
// Design Name: 
// Module Name: Counter8UDL
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


module Counter8UDL(
    input clk, Up, Dw, LD, R,
    input [7:0] din, 
    output UTC, DTC, Z_out,
    output [7:0] Q
    );
    
    wire u1, u2, u3, u4;
    wire d1, d2, d3, d4;
    wire Up1, Up2, Up3;
    wire Dw1, Dw2, Dw3;
    
    countUD4L counter1(.clk(clk), .Up(Up), .Dw(Dw), .R(R), .LD(LD), .Din(din[3:0]), .Q(Q[3:0]), .UTC(u1), .DTC(d1));
    assign Up1 = u1&Up&~Dw;
    assign Dw1 = d1&~Up&Dw;
    countUD4L counter2(.clk(clk), .Up(Up1), .Dw(Dw1), .R(R), .LD(LD), .Din(din[7:4]), .Q(Q[7:4]));
    
    assign Z_out = Q[7]; 

endmodule
