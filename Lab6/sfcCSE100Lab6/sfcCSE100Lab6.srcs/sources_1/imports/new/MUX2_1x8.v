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


module MUX2_1x8(
    input [7:0] in0,
    input [7:0] in1,
    input sel,
    output [7:0] out
    );
    
    assign out = (in0 & {8{~sel}})|(in1[7:0] & {8{sel}});
    
endmodule
