`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 05:44:46 PM
// Design Name: 
// Module Name: Top_Level
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


module Top_Level_Test(
    input clkin, start, btnR, Clear,
    input [15:0] In,
    output [15:0] Divisor,
    output [15:0] quotient, 
    output nprime, prime 
    );
    
    //CLK Global
    wire clk, digsel, qsec;
    lab6_clks global_clk(.clkin(clkin), .greset(btnR), .qsec(qsec), .clk(clk), .digsel(digsel));
    
    Divider Test(.clk(clk), .Start(start), .Input(In), .Q_out(quotient), .Clear(Clear), .Div_out(Divisor), .NPrime(nprime), .Prime(prime));
    
//    //Display Module
//    wire [3:0] ring;
//    wire [3:0] Inputs;
//    wire [15:0] Out; 
//    assign Out = (Q[15:0]&ShowIn)|(divisor[15:0]&ShowDiv);
    
//    Ring_Counter Ring(.start(digsel), .clk(clk), .out(ring));
//    Selector Select(.sel(ring), .N(Out), .H(Inputs));
//    Segment_Display Display(.n(Inputs), .sego(seg));
       
//    assign an[0] = ~(ring[0]|(flash&TC_Out[0])); 
//    assign an[1] = ~(ring[1]|(flash&TC_Out[0]));
//    assign an[2] = ~(ring[2]|(flash&TC_Out[0]));
//    assign an[3] = ~(ring[3]|(flash&TC_Out[0]));
//    assign dp = 1'b1;  
    
endmodule
