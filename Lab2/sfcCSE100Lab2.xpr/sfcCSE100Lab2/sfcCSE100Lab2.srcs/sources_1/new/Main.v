`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 01:19:26 AM
// Design Name: 
// Module Name: Main
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


module Main(
    input sw0,
    input sw1,
    input sw2,
    input sw3,
    input sw4,
    input sw5,
    input sw6,
    output CA,
    output CB,
    output CC,
    output CD,
    output CE,
    output CF,
    output CG,
    output DP,
    output AN0,
    output AN1, 
    output AN2,
    output AN3
    );
    
    assign DP = 1;
    assign AN0 = 0;
    assign AN1 = 1;
    assign AN2 = 1;
    assign AN3 = 1;
    
    wire t0, t1, t2, t3;
    
    Four_Bit_Adder Four_B_Adder(.c(sw0), .a0(sw1), .b0(sw4), .a1(sw2), .b1(sw5), .a2(sw3), .b2(sw6), .s0(t0), .s1(t1), .s2(t2), .s3(t3));
    Converter Seven_Seg_Converter(.n0(t0), .n1(t1), .n2(t2), .n3(t3), .Aout(CA), .Bout(CB), .Cout(CC), .Dout(CD), .Eout(CE), .Fout(CF), .Gout(CG));  
    
endmodule
