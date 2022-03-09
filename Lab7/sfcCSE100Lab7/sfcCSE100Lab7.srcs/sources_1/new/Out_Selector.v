`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2020 08:01:28 PM
// Design Name: 
// Module Name: Out_Selector
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


module Out_Selector(
    input [15:0] In, 
    input [15:0] Div,
    input main, div, 
    output [15:0] out
    );
    
    assign out = (In[15:0]&{16{main}})|(Div[15:0]&{16{div}}); 
    
endmodule
