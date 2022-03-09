`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 01:52:49 AM
// Design Name: 
// Module Name: MUX2_1x8
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


module MUX2_1x16(
    input [15:0] in0,
    input [15:0] in1,
    input sel,
    output [15:0] out
    );
    
    assign out = (in0 & {16{~sel}})|(in1 & {16{sel}});
    
endmodule
