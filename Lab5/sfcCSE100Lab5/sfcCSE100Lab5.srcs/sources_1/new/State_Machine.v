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
    input Go, Stop, FourSecs, TwoSecs, Match, clk, 
    output ShowNum, ResetTimer, RunGame, Scored, FlashBoth, FlashAlt 
    );
    
    wire [4:0] PS;
    wire [4:0] NS;
    
    Control_Logic Control_Logic_FSM(.Go(Go), .Stop(Stop), .FourSec(FourSecs), .TwoSec(TwoSecs), .Match(Match), .PS(PS), .NS(NS), 
    .ShowNum(ShowNum), .ResetTimer(ResetTimer), .RunGame(RunGame), .Scored(Scored), .FlashBoth(FlashBoth), .FlashAlt(FlashAlt));
    
    //FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .CE(1'b1), .D(NS[0]), .Q(PS[0]));
    //FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .CE(1'b1), .D(NS[1]), .Q(PS[1]));
    //FDRE #(.INIT(1'b0)) Q2_FF (.C(clk), .CE(1'b1), .D(NS[2]), .Q(PS[2]));
    //FDRE #(.INIT(1'b0)) Q3_FF (.C(clk), .CE(1'b1), .D(NS[3]), .Q(PS[3]));
    //FDRE #(.INIT(1'b0)) Q4_FF (.C(clk), .CE(1'b1), .D(NS[4]), .Q(PS[4]));
    
    FDRE #(.INIT(1'b1)) Q0_FF (.C(clk), .CE(1'b1), .D(NS[0]), .Q(PS[0]));
    FDRE #(.INIT(1'b0)) Q123_FF[4:1] (.C({4{clk}}), .CE({4{1'b1}}), .D(NS[4:1]), .Q(PS[4:1])); 
    
endmodule
