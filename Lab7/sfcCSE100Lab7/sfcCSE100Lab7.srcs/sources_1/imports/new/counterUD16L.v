`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 02:04:10 AM
// Design Name: 
// Module Name: counterUD16L
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


module counterUD16L(
    input clk, Up, Dw, LD, R,
    input [15:0] din, 
    output UTC, DTC, Z_out,
    output [15:0] Q
    );
    
    wire u1, u2, u3, u4;
    wire d1, d2, d3, d4;
    wire Up1, Up2, Up3;
    wire Dw1, Dw2, Dw3;
    
    countUD4L counter1(.clk(clk), .Up(Up), .Dw(Dw), .R(R), .LD(LD), .Din(din[3:0]), .Q(Q[3:0]), .UTC(u1), .DTC(d1));
    assign Up1 = u1&Up;
    assign Dw1 = d1&~Up&Dw;
    countUD4L counter2(.clk(clk), .Up(Up1), .Dw(Dw1), .R(R), .LD(LD), .Din(din[7:4]), .Q(Q[7:4]), .UTC(u2), .DTC(d2));
    assign Up2 = u1&u2&Up;
    assign Dw2 = d1&d2&~Up&Dw;
    countUD4L counter3(.clk(clk), .Up(Up2), .Dw(Dw2), .R(R), .LD(LD), .Din(din[11:8]), .Q(Q[11:8]), .UTC(u3), .DTC(d3));
    assign Up3 = u1&u2&u3&Up;
    assign Dw3 = d1&d2&d3&~Up&Dw;
    countUD4L counter4(.clk(clk), .Up(Up3), .Dw(Dw3), .R(R), .LD(LD), .Din(din[15:12]), .Q(Q[15:12]), .UTC(u4), .DTC(d4));
    
//    assign Z_out = Q[7]; 
//    assign UTC = u1&u2&u3&u4;
//    assign DTC = d1&d2&d3&d4;
    
endmodule
