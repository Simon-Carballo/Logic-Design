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
    input clk, btnC, btnL, btnD, Prime, NPrime, 
    output LED_Input, LED_nprime, LED_prime, Show_In, Show_Div, Flash, Start
    );
    
    wire [4:0] PS;
    wire [4:0] NS;

    Control_Logic Control_Logic_FSM(.PS(PS), .NS(NS), .btnC(btnC), .btnL(btnL), .btnD(btnD), .Prime(Prime), .NPrime(NPrime), .LED_Input(LED_Input), 
    .LED_nprime(LED_nprime), .LED_prime(LED_prime), .Show_In(Show_In), .Show_Div(Show_Div), .Flash(Flash), .Start(Start));
    
    FDRE #(.INIT(1'b1)) Q0_FF (.C(clk), .CE(1'b1), .D(NS[0]), .Q(PS[0]));
    FDRE #(.INIT(1'b0)) Q123_FF[4:1] (.C({4{clk}}), .CE({4{1'b1}}), .D(NS[4:1]), .Q(PS[4:1])); 
    
endmodule
