`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2020 04:23:43 PM
// Design Name: 
// Module Name: ClockCase
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


module ClockCase(
    input Btn, clk,
    input [15:0] Q,
    output out
    );
    
    wire t1;
    
    FDRE #(.INIT(1'b0)) Edge (.C(clk), .R(1'b0), .CE(1'b1), .D(Btn), .Q(t1));
    
    assign out = (Btn&~t1)&(~(Q[3]&Q[2]&Q[1]&Q[0])|~(Q[3]&Q[2]&Q[1]&~Q[0])|~(Q[3]&Q[2]&~Q[1]&Q[0])|~(Q[3]&Q[2]&~Q[1]&~Q[0]));

endmodule
