`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 04:39:39 PM
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
    reg sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7, btnU, btnD, btnR, clkin;
    wire seg0, seg1, seg2, seg3, seg4, seg5, seg6, dp, an0, an1, an2, an3;
    
    Top_Level UUT (
    .sw({sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7}),
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
	//Lower
	sw0=1'b0;
    sw1=1'b0;
    sw2=1'b0;
    sw3=1'b0;
    //Upper
    sw4=1'b0;
    sw5=1'b0;
    sw6=1'b0;
    sw7=1'b0;
    // Button
    btnU=1'b0;
    btnD=1'b0;
	// Display 0, 0
	// -------------------- Time: 100ns
	#100;
	//Lower
	sw0=1'b1;
    sw1=1'b0;
    sw2=1'b0;
    sw3=1'b0;
    //Upper
    sw4=1'b1;
    sw5=1'b0;
    sw6=1'b0;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 1, 1
    // -------------------- Time: 200ns
    #100;
	//Lower
	sw0=1'b0;
    sw1=1'b1;
    sw2=1'b0;
    sw3=1'b0;
    //Upper
    sw4=1'b0;
    sw5=1'b1;
    sw6=1'b0;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 2, 2
    // -------------------- Time: 300ns
    #100;
	//Lower
	sw0=1'b1;
    sw1=1'b1;
    sw2=1'b0;
    sw3=1'b0;
    //Upper
    sw4=1'b1;
    sw5=1'b1;
    sw6=1'b0;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 3, 3
    // -------------------- Time: 400ns
    #100;
	//Lower
	sw0=1'b0;
    sw1=1'b0;
    sw2=1'b1;
    sw3=1'b0;
    //Upper
    sw4=1'b0;
    sw5=1'b0;
    sw6=1'b1;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 4, 4
    // -------------------- Time: 500ns
    #100;
	//Lower
	sw0=1'b1;
    sw1=1'b0;
    sw2=1'b1;
    sw3=1'b0;
    //Upper
    sw4=1'b1;
    sw5=1'b0;
    sw6=1'b1;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 5, 5
    // -------------------- Time: 600ns
    #100;
	//Lower
	sw0=1'b0;
    sw1=1'b1;
    sw2=1'b1;
    sw3=1'b0;
    //Upper
    sw4=1'b0;
    sw5=1'b1;
    sw6=1'b1;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 6, 6
    // -------------------- Time: 700ns
    #100;
	//Lower
	sw0=1'b1;
    sw1=1'b1;
    sw2=1'b1;
    sw3=1'b0;
    //Upper
    sw4=1'b1;
    sw5=1'b1;
    sw6=1'b1;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 7, 7
    // -------------------- Time: 800ns
    #100;
	//Lower
	sw0=1'b0;
    sw1=1'b0;
    sw2=1'b0;
    sw3=1'b1;
    //Upper
    sw4=1'b0;
    sw5=1'b0;
    sw6=1'b0;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 8, 8
    // -------------------- Time: 900ns
    #100;
	//Lower
	sw0=1'b1;
    sw1=1'b0;
    sw2=1'b0;
    sw3=1'b1;
    //Upper
    sw4=1'b1;
    sw5=1'b0;
    sw6=1'b0;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 9, 9
    // -------------------- Time: 1000ns
    #100;
	//Lower
	sw0=1'b0;
    sw1=1'b1;
    sw2=1'b0;
    sw3=1'b1;
    //Upper
    sw4=1'b0;
    sw5=1'b1;
    sw6=1'b0;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display A, A
    // -------------------- Time: 1100ns
    #100;
	//Lower
	sw0=1'b1;
    sw1=1'b1;
    sw2=1'b0;
    sw3=1'b1;
    //Upper
    sw4=1'b1;
    sw5=1'b1;
    sw6=1'b0;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display b, b
    // -------------------- Time: 1200ns
	#100;
	//Lower
	sw0=1'b0;
    sw1=1'b0;
    sw2=1'b1;
    sw3=1'b1;
    //Upper
    sw4=1'b0;
    sw5=1'b0;
    sw6=1'b1;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display C, C
    // -------------------- Time: 1300ns
	#100;
	//Lower
	sw0=1'b1;
    sw1=1'b0;
    sw2=1'b1;
    sw3=1'b1;
    //Upper
    sw4=1'b1;
    sw5=1'b0;
    sw6=1'b1;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display d, d
    // -------------------- Time: 1400ns
	#100;
	//Lower
	sw0=1'b0;
    sw1=1'b1;
    sw2=1'b1;
    sw3=1'b1;
    //Upper
    sw4=1'b0;
    sw5=1'b1;
    sw6=1'b1;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display E, E
    // -------------------- Time: 1500ns
	#100;
	//Lower
	sw0=1'b1;
    sw1=1'b1;
    sw2=1'b1;
    sw3=1'b1;
    //Upper
    sw4=1'b1;
    sw5=1'b1;
    sw6=1'b1;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display F, F
    // -------------------- Time: 1600ns
	#100;
	//Lower
	sw0=1'b1;
    sw1=1'b0;
    sw2=1'b0;
    sw3=1'b0;
    //Upper
    sw4=1'b0;
    sw5=1'b1;
    sw6=1'b0;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 1, 2
    // -------------------- Time: 1700ns
	#100;
	//Lower
	sw0=1'b1;
    sw1=1'b1;
    sw2=1'b0;
    sw3=1'b0;
    //Upper
    sw4=1'b0;
    sw5=1'b1;
    sw6=1'b1;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 3, 6
    // -------------------- Time: 1800ns
	#100;
	//Lower
	sw0=1'b1;
    sw1=1'b0;
    sw2=1'b0;
    sw3=1'b0;
    //Upper
    sw4=1'b1;
    sw5=1'b1;
    sw6=1'b0;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display 1, b
    // -------------------- Time: 1900ns
	#100;
	//Lower
	sw0=1'b0;
    sw1=1'b0;
    sw2=1'b1;
    sw3=1'b1;
    //Upper
    sw4=1'b0;
    sw5=1'b0;
    sw6=1'b1;
    sw7=1'b0;	
    //Button
    btnU=1'b0;
    btnD=1'b0;
    // Display c, 4
    // -------------------- Time: 2000ns    
	#100;
	//Lower
	sw0=1'b1;
    sw1=1'b1;
    sw2=1'b1;
    sw3=1'b1;
    //Upper
    sw4=1'b1;
    sw5=1'b1;
    sw6=1'b1;
    sw7=1'b1;	
    //Button
    btnU=1'b0;
    btnD=1'b1;
    // Display A, A+2 OVER TEST
    // -------------------- Time: 2100ns
   end
endmodule
