`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 03:54:47 PM
// Design Name: 
// Module Name: Selector
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


module Selector(
    input [3:0] sel, 
    input [15:0] N, 
    output [3:0] H
    );
    
    
    assign H =  (N[15:12] & {4{( sel[3] & ~sel[2] & ~sel[1] & ~sel[0])}})|
    (N[11:8] & {4{(~sel[3] & sel[2] & ~sel[1] & ~sel[0])}})|
    (N[7:4] & {4{(~sel[3] & ~sel[2] & sel[1] & ~sel[0])}})|
    (N[3:0] & {4{(~sel[3] & ~sel[2] & ~sel[1] & sel[0])}});
    

    
    //H is N[15:12] when sel=(1000);
    //H is N[11:8] when sel=(0100);
    //H is N[7:4] when sel=(0010);
    //H is N[3:0] when sel=(0001);
    
    
endmodule
