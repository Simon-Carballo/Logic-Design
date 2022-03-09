`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 02:46:53 PM
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
    input [7:0] sw,
    input btnU,
    input btnD,
    input btnR,
    input clkin,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    
    wire [7:0] t;
    wire [6:0] a;
    wire [6:0] b;
    wire dig_sel; 
    
    assign an[0] = dig_sel;
    assign an[1] = ~dig_sel;
    assign an[2] = 1'b1;
    assign an[3] = 1'b1;
    assign dp = 1'b1; 
    
    Incrementer Adder(.a(sw[7:0]), .b({btnU,btnD}), .s({t0,t1,t2,t3,t4,t5,t6,t7}));
    Segment_Display Lower(.n({t0,t1,t2,t3}), .sego(a[6:0]));
    Segment_Display Upper(.n({t4,t5,t6,t7}), .sego(b[6:0]));
    lab3_digsel DigSel(.clkin(clkin), .greset(btnR), .digsel(dig_sel));
    MUX2_1x8 Final(.in0({1'b0,b[6:0]}), .in1({1'b0,a[6:0]}), .sel(dig_sel), .out(seg[6:0])); 
    
endmodule
