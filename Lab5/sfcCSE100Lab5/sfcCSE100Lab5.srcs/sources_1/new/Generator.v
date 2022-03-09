`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2020 06:51:53 PM
// Design Name: 
// Module Name: Generator
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


module Generator(
    input clk,
    input run,
    output [7:0] rnd
    );
    
    wire t1;
    
    assign t1 = rnd[0] ^ rnd[5] ^ rnd[6] ^ rnd[7];
    
    FDRE #(.INIT(1'b1)) Q0_FF (.C(clk), .R(1'b0), .CE(run), .D(t1), .Q(rnd[0]));
    FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .R(1'b0), .CE(run), .D(rnd[0]), .Q(rnd[1]));
    FDRE #(.INIT(1'b0)) Q2_FF (.C(clk), .R(1'b0), .CE(run), .D(rnd[1]), .Q(rnd[2]));
    FDRE #(.INIT(1'b0)) Q3_FF (.C(clk), .R(1'b0), .CE(run), .D(rnd[2]), .Q(rnd[3]));
    FDRE #(.INIT(1'b0)) Q4_FF (.C(clk), .R(1'b0), .CE(run), .D(rnd[3]), .Q(rnd[4]));
    FDRE #(.INIT(1'b0)) Q5_FF (.C(clk), .R(1'b0), .CE(run), .D(rnd[4]), .Q(rnd[5]));
    FDRE #(.INIT(1'b0)) Q6_FF (.C(clk), .R(1'b0), .CE(run), .D(rnd[5]), .Q(rnd[6]));
    FDRE #(.INIT(1'b0)) Q7_FF (.C(clk), .R(1'b0), .CE(run), .D(rnd[6]), .Q(rnd[7]));
    
endmodule
