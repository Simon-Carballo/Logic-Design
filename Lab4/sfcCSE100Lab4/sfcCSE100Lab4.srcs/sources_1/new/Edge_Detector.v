`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 02:06:48 AM
// Design Name: 
// Module Name: Edge_Detector
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


module Edge_Detector(
    input Btn, clk,
    output out
    );
    
    wire t1;
    
    FDRE #(.INIT(1'b0)) Edge (.C(clk), .R(1'b0), .CE(1'b1), .D(Btn), .Q(t1));
    
    assign out = Btn&~t1;
    
endmodule
