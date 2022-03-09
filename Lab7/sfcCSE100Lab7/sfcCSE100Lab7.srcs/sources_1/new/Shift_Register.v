`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2020 11:44:08 PM
// Design Name: 
// Module Name: Shift_Register
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


module Shift_Register(
    input [15:0] Din,
    input SHin, SHL, R, clk, LD,  
    output [15:0] out
    );
    
    FDRE #(.INIT(1'b0)) LED_0 (.C(clk), .R(R), .CE(SHL|LD), .D((SHin&SHL)|(Din[0]&LD)), .Q(out[0]));
    FDRE #(.INIT(1'b0)) LED_1 (.C(clk), .R(R), .CE(SHL|LD), .D((out[0]&SHL)|(Din[1]&LD)), .Q(out[1]));
    FDRE #(.INIT(1'b0)) LED_2 (.C(clk), .R(R), .CE(SHL|LD), .D((out[1]&SHL)|(Din[2]&LD)), .Q(out[2]));
    FDRE #(.INIT(1'b0)) LED_3 (.C(clk), .R(R), .CE(SHL|LD), .D((out[2]&SHL)|(Din[3]&LD)), .Q(out[3]));
    FDRE #(.INIT(1'b0)) LED_4 (.C(clk), .R(R), .CE(SHL|LD), .D((out[3]&SHL)|(Din[4]&LD)), .Q(out[4]));
    FDRE #(.INIT(1'b0)) LED_5 (.C(clk), .R(R), .CE(SHL|LD), .D((out[4]&SHL)|(Din[5]&LD)), .Q(out[5]));
    FDRE #(.INIT(1'b0)) LED_6 (.C(clk), .R(R), .CE(SHL|LD), .D((out[5]&SHL)|(Din[6]&LD)), .Q(out[6]));
    FDRE #(.INIT(1'b0)) LED_7 (.C(clk), .R(R), .CE(SHL|LD), .D((out[6]&SHL)|(Din[7]&LD)), .Q(out[7]));
    FDRE #(.INIT(1'b0)) LED_8 (.C(clk), .R(R), .CE(SHL|LD), .D((out[7]&SHL)|(Din[8]&LD)), .Q(out[8]));
    FDRE #(.INIT(1'b0)) LED_9 (.C(clk), .R(R), .CE(SHL|LD), .D((out[8]&SHL)|(Din[9]&LD)), .Q(out[9]));
    FDRE #(.INIT(1'b0)) LED_10 (.C(clk), .R(R), .CE(SHL|LD), .D((out[9]&SHL)|(Din[10]&LD)), .Q(out[10]));
    FDRE #(.INIT(1'b0)) LED_11 (.C(clk), .R(R), .CE(SHL|LD), .D((out[10]&SHL)|(Din[11]&LD)), .Q(out[11]));
    FDRE #(.INIT(1'b0)) LED_12 (.C(clk), .R(R), .CE(SHL|LD), .D((out[11]&SHL)|(Din[12]&LD)), .Q(out[12]));    
    FDRE #(.INIT(1'b0)) LED_13 (.C(clk), .R(R), .CE(SHL|LD), .D((out[12]&SHL)|(Din[13]&LD)), .Q(out[13]));
    FDRE #(.INIT(1'b0)) LED_14 (.C(clk), .R(R), .CE(SHL|LD), .D((out[13]&SHL)|(Din[14]&LD)), .Q(out[14]));
    FDRE #(.INIT(1'b0)) LED_15 (.C(clk), .R(R), .CE(SHL|LD), .D((out[14]&SHL)|(Din[15]&LD)), .Q(out[15]));
    
endmodule
