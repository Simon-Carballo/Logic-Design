`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 01:27:56 AM
// Design Name: 
// Module Name: MUX8_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: _!
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX8_1(
    input [7:0] in,
    input [2:0] sel,
    output out
    );
    
    assign out = (in[0] & ~sel[2] & ~sel[1] & ~sel[0])|
    (in[1] & ~sel[2] & ~sel[1] & sel[0])|
    (in[2] & ~sel[2] & sel[1] & ~sel[0])|
    (in[3] & ~sel[2] & sel[1] & sel[0])|
    (in[4] & sel[2] & ~sel[1] & ~sel[0])|
    (in[5] & sel[2] & ~sel[1] & sel[0])|
    (in[6] & sel[2] & sel[1] & ~sel[0])|
    (in[7] & sel[2] & sel[1] & sel[0]); 
    
endmodule
