`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 10:48:48 PM
// Design Name: 
// Module Name: countUD4L
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


module countUD4L(
    input clk, LD,
    input [3:0] Din, 
    output [3:0] Q, // uncomment this line if you want Q as an output
    output UTC, DTC
    );
    
    //wire [1:0] Q;  // comment this line if you want Q as an output
    wire d0, d1, d2, d3;
    wire q0, q1, q2, q3;
     
    assign Q = {q3, q2, q1, q0};
    
//    assign d0 = ((q0^(Up|Dw))&~LD)|LD&Din[0];
//    assign d1 = ((q1^((Up&q0)|(Dw&~q0)))&~LD)|LD&Din[1];
//    assign d2 = ((q2^((Up&q0&q1)|(Dw&~q0&~q1)))&~LD)|LD&Din[2];
//    assign d3 = ((q3^((Up&q0&q1&q2)|(Dw&~q0&~q1&~q2)))&~LD)|LD&Din[3];
    
    assign d0 = Din[0];
    assign d1 = Din[1];
    assign d2 = Din[2];
    assign d3 = Din[3];
     
    FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .R(1'b0), .CE(LD), .D(d0), .Q(q0));
    FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .R(1'b0), .CE(LD), .D(d1), .Q(q1));
    FDRE #(.INIT(1'b0)) Q2_FF (.C(clk), .R(1'b0), .CE(LD), .D(d2), .Q(q2));
    FDRE #(.INIT(1'b0)) Q3_FF (.C(clk), .R(1'b0), .CE(LD), .D(d3), .Q(q3));

    assign UTC = Q[3] & Q[2] & Q[1] & Q[0];
    assign DTC = ~Q[3] & ~Q[2] & ~Q[1] & ~Q[0];
    
endmodule
