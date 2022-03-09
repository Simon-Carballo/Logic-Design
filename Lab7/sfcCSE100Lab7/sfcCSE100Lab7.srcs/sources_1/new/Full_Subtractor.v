`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2020 05:58:51 PM
// Design Name: 
// Module Name: Full_Subtractor
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

// TEST PASSED
module Full_Subtractor(
    input x, y, Bin,
    output Diff, Bout
    );
    
    assign Diff = (~x&~y&Bin)|(~x&y&~Bin)|(x&~y&~Bin)|(x&y&Bin);
    assign Bout = (~x&~y&Bin)|(~x&y&~Bin)|(~x&y&Bin)|(x&y&Bin);
    
    
endmodule
