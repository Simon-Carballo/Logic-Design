`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2020 04:25:09 PM
// Design Name: 
// Module Name: Led_Selector
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


module Led_Selector(
    input clk, qsec,
    input in, prime, nprime, div, working, 
    output [15:0] ledin
    );
    
    wire [8:0] temp;
    wire [6:0] unused;
    wire [15:0] inputled;
    assign unused   = 7'd0;
    assign inputled = {temp[8:0],unused[6:0]};
    wire [15:0] primeled;
    
    LED_Input_Control InputLED(.clk(clk), .CE(qsec), .out(temp));
    LED_Prime_Control PrimeLED(.clk(clk), .CE(qsec), .out(primeled));
    
    assign ledin = (inputled[15:0]&{16{in}})|
                   (primeled[15:0]&{16{prime}})|
                   (16'hFFFF&{16{nprime}})|
                   (16'd0&div)|
                   (16'h0001&{16{working}}); 
    
endmodule
