`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 08:51:52 PM
// Design Name: 
// Module Name: Divider_StateMachine
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

module Divider_StateMachine(
    input EQ, LT, CEQ, CLT,
    input clk, Start, Ccase,
    output LD, Shift, ShiftR, Q, Add, SubB, Sub0, LDR, Next
    );
    
    wire [4:0] PS;
    wire [4:0] NS;

//    Divider_ControlLogic Divider_Control(.PS(PS), .NS(NS), .EQ(EQ), .LT(LT), .Start(Start), .LD(LD), .Shift(Shift), .Q(Q), .Sub(Sub),
//    .Add(Add), .NPrime(NPrime), .Prime(Prime));
    Divider_ControlLogic Divider_Control(.PS(PS), .NS(NS), .Start(Start), .EQ(EQ), .LT(LT), .CEQ(CEQ), .CLT(CLT), .LD(LD), .Shift(Shift), 
    .ShiftR(ShiftR), .Q(Q), .Add(Add), .Ccase(Ccase), .SubB(SubB), .Sub0(Sub0), .LDR(LDR), .Next(Next));
    
    FDRE #(.INIT(1'b1)) Q0_FF (.C(clk), .CE(1'b1), .D(NS[0]), .Q(PS[0]));
    FDRE #(.INIT(1'b0)) Q123_FF[4:1] (.C({4{clk}}), .CE({4{1'b1}}), .D(NS[4:1]), .Q(PS[4:1]));
    
endmodule
