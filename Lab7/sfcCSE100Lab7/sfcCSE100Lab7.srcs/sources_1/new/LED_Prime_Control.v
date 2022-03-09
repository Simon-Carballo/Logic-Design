`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2020 09:15:24 PM
// Design Name: 
// Module Name: LED_Prime_Control
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

// Test Passed
module LED_Prime_Control(
    input clk, R, CE,
    output [15:0] out, reset
    );
    
    FDRE #(.INIT(1'b1)) LED_15 (.C(clk), .R(R), .CE(CE), .D(out[12]), .Q(out[15]));
    FDRE #(.INIT(1'b0)) LED_14 (.C(clk), .R(R), .CE(CE), .D(out[15]), .Q(out[14]));
    FDRE #(.INIT(1'b0)) LED_13 (.C(clk), .R(R), .CE(CE), .D(out[14]), .Q(out[13]));
    FDRE #(.INIT(1'b0)) LED_12 (.C(clk), .R(R), .CE(CE), .D(out[13]), .Q(out[12]));
    
    FDRE #(.INIT(1'b1)) LED_11 (.C(clk), .R(R), .CE(CE), .D(out[8]), .Q(out[11]));
    FDRE #(.INIT(1'b0)) LED_10 (.C(clk), .R(R), .CE(CE), .D(out[11]), .Q(out[10]));
    FDRE #(.INIT(1'b0)) LED_9 (.C(clk), .R(R), .CE(CE), .D(out[10]), .Q(out[9]));
    FDRE #(.INIT(1'b0)) LED_8 (.C(clk), .R(R), .CE(CE), .D(out[9]), .Q(out[8]));
    
    FDRE #(.INIT(1'b1)) LED_7 (.C(clk), .R(R), .CE(CE), .D(out[4]), .Q(out[7]));
    FDRE #(.INIT(1'b0)) LED_6 (.C(clk), .R(R), .CE(CE), .D(out[7]), .Q(out[6]));
    FDRE #(.INIT(1'b0)) LED_5 (.C(clk), .R(R), .CE(CE), .D(out[6]), .Q(out[5]));
    FDRE #(.INIT(1'b0)) LED_4 (.C(clk), .R(R), .CE(CE), .D(out[5]), .Q(out[4]));
    
    FDRE #(.INIT(1'b1)) LED_3 (.C(clk), .R(R), .CE(CE), .D(out[0]), .Q(out[3]));    
    FDRE #(.INIT(1'b0)) LED_2 (.C(clk), .R(R), .CE(CE), .D(out[3]), .Q(out[2]));
    FDRE #(.INIT(1'b0)) LED_1 (.C(clk), .R(R), .CE(CE), .D(out[2]), .Q(out[1]));
    FDRE #(.INIT(1'b0)) LED_0 (.C(clk), .R(R), .CE(CE), .D(out[1]), .Q(out[0]));
    
//    assign reset = out[12];
    
endmodule
