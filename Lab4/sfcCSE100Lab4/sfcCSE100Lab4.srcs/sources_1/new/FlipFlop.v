`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 04:10:39 PM
// Design Name: 
// Module Name: FlipFlop
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

module Sequential(
    input clk,
    input x,
    output [1:0] Q, // uncomment this line if you want Q as an output
    output z
    );
    
    wire [1:0] Q;  // comment this line if you want Q as an output
    wire [1:0] D;
    
    FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .CE(1'b1), .D(D[0]), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .CE(1'b1), .D(D[1]), .Q(Q[1]));
    
    assign D[1] = ..... ; // logic expression for D[1] in terms of x, Q[1], and Q[0]
    assign D[0] = ..... ; // logic expression for D[0] in terms of x, Q[1], and Q[0]
    assign z = ..... ; // logic expression for z in terms of x, Q[1], and Q[0]
    
endmodule
