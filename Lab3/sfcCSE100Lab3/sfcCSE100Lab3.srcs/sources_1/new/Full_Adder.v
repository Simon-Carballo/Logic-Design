`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 03:43:47 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    output sum, cout,
    input a, b, cin
    );
    
    MUX4_1 MUX_cout(.in({1'b1, cin, cin, 1'b0}), .sel({a, b}), .out(cout));
    MUX4_1 MUX_sum(.in({cin, ~cin, ~cin, cin}), .sel({a, b}), .out(sum));
     
endmodule
