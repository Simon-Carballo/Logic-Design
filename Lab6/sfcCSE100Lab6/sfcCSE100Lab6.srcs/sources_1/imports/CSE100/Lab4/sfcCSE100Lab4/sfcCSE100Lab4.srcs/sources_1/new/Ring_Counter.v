`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 04:00:44 PM
// Design Name: 
// Module Name: Ring_Counter
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


module Ring_Counter(
    input start, clk, 
    output [3:0] out
    );
    
    //wire [1:0] Q;  // comment this line if you want Q as an output
    wire d0,d1,d2,d3;
    
    FDRE #(.INIT(1'b1)) Ringcounter1 (.C(clk), .R(1'b0), .CE(start), .D(d3), .Q(d0));
    FDRE #(.INIT(1'b0)) Ringcounter2 (.C(clk), .R(1'b0), .CE(start), .D(d0), .Q(d1));
    FDRE #(.INIT(1'b0)) Ringcounter3 (.C(clk), .R(1'b0), .CE(start), .D(d1), .Q(d2));
    FDRE #(.INIT(1'b0)) Ringcounter4 (.C(clk), .R(1'b0), .CE(start), .D(d2), .Q(d3));
    
    assign out = {d3, d2, d1, d0};

endmodule
