`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 01:19:30 AM
// Design Name: 
// Module Name: MUX4_1
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


module MUX4_1(
    input [3:0] in,
    input [1:0] sel,
    output out
    );
    
    assign out = (in[0] & ~sel[1] & ~sel[0])|(in[1] & ~sel[1] & sel[0])|(in[2] & sel[1] & ~sel[0])|(in[3] & sel[1] & sel[0]); 
    
    
endmodule
