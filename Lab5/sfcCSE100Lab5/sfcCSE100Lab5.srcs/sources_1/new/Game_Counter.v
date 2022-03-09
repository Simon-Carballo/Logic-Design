`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2020 10:15:25 PM
// Design Name: 
// Module Name: Game_Counter
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


module Game_Counter(
    input clk, CE, Reset,
    output [7:0] Q
    );
    
    wire u1;
    wire Up1;
    
    countUD4L counter1(.clk(clk), .Up(CE), .R(Reset), .Q(Q[3:0]), .UTC(u1));
    assign Up1 = u1&CE;
    countUD4L counter2(.clk(clk), .Up(Up1), .R(Reset), .Q(Q[7:4]));
    
endmodule
