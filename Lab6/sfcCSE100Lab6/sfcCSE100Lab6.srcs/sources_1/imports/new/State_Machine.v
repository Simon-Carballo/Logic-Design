`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 03:47:40 PM
// Design Name: 
// Module Name: State_Machine
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


module State_Machine(
    input clk, btnL, btnR, 
    output Up, Dw, L_LED, R_LED, R, T_On
    );
    
    wire [6:0] PS;
    wire [6:0] NS;
    
    Control_Logic Control_Logic_FSM(.PS(PS), .NS(NS), .Left(btnL), .Right(btnR), .CountUp(Up), .CountDw(Dw), .Reset(R), .L_LED(L_LED), .R_LED(R_LED), .On(T_On));
    
    FDRE #(.INIT(1'b1)) Q0_FF (.C(clk), .CE(1'b1), .D(NS[0]), .Q(PS[0]));
    FDRE #(.INIT(1'b0)) Q123_FF[6:1] (.C({6{clk}}), .CE({6{1'b1}}), .D(NS[6:1]), .Q(PS[6:1])); 
    
endmodule
