`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 02:40:39 PM
// Design Name: 
// Module Name: Segment_Display
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


module Segment_Display(
    input [3:0] n,
    output [6:0] sego
    );
    
    MUX8_1 SegA(.in({1'b0, n[0], n[0], 1'b0, 1'b0, ~n[0], 1'b0, n[0]}), .sel(n[3:1]), .out(sego[0])); 
    MUX8_1 SegB(.in({1'b1, ~n[0], n[0], 1'b0, ~n[0], n[0], 1'b0, 1'b0}), .sel(n[3:1]), .out(sego[1]));   
    MUX8_1 SegC(.in({1'b1, ~n[0], 1'b0, 1'b0, 1'b0, 1'b0, ~n[0], 1'b0}), .sel(n[3:1]), .out(sego[2]));
    MUX8_1 SegD(.in({n[0], 1'b0, ~n[0], n[0], n[0], ~n[0], 1'b0, n[0]}), .sel(n[3:1]), .out(sego[3]));
    MUX8_1 SegE(.in({1'b0, 1'b0, 1'b0, n[0], n[0], 1'b1, n[0], n[0]}), .sel(n[3:1]), .out(sego[4]));
    MUX8_1 SegF(.in({1'b0, n[0], 1'b0, 1'b0, n[0], 1'b0, 1'b1, n[0]}), .sel(n[3:1]), .out(sego[5]));
    MUX8_1 SegG(.in({1'b0, ~n[0], 1'b0, 1'b0, n[0], 1'b0, 1'b0, 1'b1}), .sel(n[3:1]), .out(sego[6]));
    
endmodule
