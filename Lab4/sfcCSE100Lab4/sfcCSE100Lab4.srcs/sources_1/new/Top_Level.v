`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 02:06:48 AM
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


module Top_Level(
    input clkin, btnR, btnC, btnU, btnD, btnL,
    input [15:0] sw, 
    output [15:0] led,
    output [6:0] seg,
    output [3:0] an,
    output dp
    );
    
    wire clk;
    wire Digwire;
    wire [15:0] Q;
    wire t1, t2, t3;
    wire up, dw;
    wire utc, dtc;
    wire [3:0] c;
    wire [3:0] r;
    wire fclk;
    
    assign an = ~r;
//    assign UTC = utc;
//    assign DTC = dtc;
    
    assign dp = ~((utc|an[3])&(dtc|an[0]));
    assign led[14:1] = sw[14:1];
    assign led[15]=dtc;
    assign led[0]=utc;
    
    //Clock
    lab4_clks clock(.clkin(clkin), .greset(btnR), .clk(clk), .fastclk(fclk), .digsel(Digwire)); 
    
    ClockCase ClockButton(.Btn(btnC), .clk(clk), .Q(Q), .out(t1));
    Edge_Detector UpButton(.Btn(btnU), .clk(clk), .out(t2));
    assign up = (t2 | btnC &~(&Q[15:2]));
    Edge_Detector DownButton(.Btn(btnD), .clk(clk), .out(t3));
    assign dw = t3;
    
    counterUD16L Counter(.clk(fclk), .Up(up), .Dw(dw), .LD(btnL), .din(sw), .Q(Q), .UTC(utc), .DTC(dtc)); 
    
    Ring_Counter Ring(.start(Digwire), .clk(clk), .out(r));
    Selector Select(.sel(r), .N(Q), .H(c));
    Segment_Display Display(.n(c), .sego(seg));
    
    
endmodule
