`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2020 05:40:25 PM
// Design Name: 
// Module Name: Top_Level_Simulation
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


module Top_Level_Simulation();
    reg sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8, sw9, sw10, sw11, sw12, sw13, sw14, sw15, btnU, btnD, btnR, btnL, btnC, clkin;
    wire seg0, seg1, seg2, seg3, seg4, seg5, seg6, dp, an0, an1, an2, an3;
    
    Top_Level UUT (
    .sw({sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8, sw9, sw10, sw11, sw12, sw13, sw14, sw15}),
    .btnU(btnU),.btnD(btnD), .btnR(btnR), .clkin(clkin), 
    .seg({seg0, seg1, seg2, seg3, seg4, seg5, seg6}),
    .an({an0, an1, an2, an3}),
    .dp(dp)
    );
    
    parameter PERIOD = 10;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    // Clock process for clkin
    begin
        #OFFSET
		  clkin = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
        end
    end
	
    initial
    begin
	// add your (input) stimuli here
	// to set signal foo to value 0 use
	// foo = 1'b0;
	// to set signal foo to value 1 use
	// foo = 1'b1;
	//always advance time my multiples of 100ns
	// to advance time by 100ns use the following line
	#100;
    // Button
    btnU=1'b1;
    btnD=1'b0;
	// Display 0001
	// -------------------- Time: 100ns
    #100;
    // Button
    
    
    end
    
endmodule
