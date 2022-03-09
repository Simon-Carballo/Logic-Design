`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2020 06:47:22 PM
// Design Name: 
// Module Name: Test_Bench
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


module Test_Bench();
//    reg [15:0] In;
//    reg start, btnR, clkin, Clear;
//    wire [15:0] Divisor;
//    wire nprime, prime;  

    reg [15:0] sw;
    reg clkin, btnC, btnD, btnL, btnR; 
    wire [15:0] led;
    wire [6:0] seg;
    wire [3:0] an;
    wire dp;
    
 
      
//    input [15:0] A, 
//    input [15:0] B, 
//    output EQ, LT
//    wire [7:0] D7Seg3,D7Seg2,D7Seg1,D7Seg0;
    
    
    Top_Level UUT (
        .clkin(clkin),
        .sw(sw),
        .btnC(btnC), 
        .btnD(btnD), 
        .btnL(btnL), 
        .btnR(btnR),
        .led(led), 
        .seg(seg), 
        .an(an), 
        .dp(dp)   
    
//        .In(In),
//        .Clear(Clear),
//        .start(start),
//        .btnR(btnR),
//        .Divisor(Divisor),
//        .nprime(nprime),
//        .prime(prime)
        
        );
        
  parameter PERIOD = 10;
  parameter real DUTY_CYCLE = 0.5;
  parameter OFFSET = 2;
	 

	initial    // Clock process for clkin
	begin
//	  start = 1'bx;
	  btnR = 1'b0;
//	  btnU = 1'bx;
//	  btnD = 1'bx;
//	  btnL = 1'bx;
    
    #OFFSET
		clkin = 1'b1;
    forever
    begin
      #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
    end
	end
	
	initial
    begin
// Comparator Test   
//        #1000;
//        In  = 16'd205;
//        start = 1'b1;
//        Clear = 1'b1;
//        #100;
//        Clear = 1'b0;
//        #1200;
        
        sw[0]   = 1'b1;
        sw[1]   = 1'b0;
        sw[2]   = 1'b1;
        sw[3]   = 1'b0;
        sw[4]   = 1'b0;
        sw[5]   = 1'b0;
        sw[6]   = 1'b0;
        sw[7]   = 1'b0;
        sw[8]   = 1'b0;
        sw[9]   = 1'b0;
        sw[10]   = 1'b0;
        sw[11]   = 1'b0;
        sw[12]   = 1'b0;
        sw[13]   = 1'b0;
        sw[14]   = 1'b0;
        sw[15]   = 1'b0;
        btnL    =1'b1;
        btnC    =1'b0;
        btnD    =1'b0;
        #3000;
        btnD = 1'b1;
        #5000;
        btnC =1'b1;
        #200;
        
        
        
//        A = 1'b0;
//        B = 1'b1;
//        #300; 
//        A = 16'b0000000000001100;
//        B = 16'b0000000000110000;
//        #400; 
//        A = 16'b0000001100100000;
//        B = 16'b0000000000110000;       
//        #500; 
//        A = 16'b0000000001100000;
//        B = 16'b0000000000110000;       
//        #600;    

//// 16bit Subtractor test
//        #100;
//        A = 16'b0000000000000001;
//        B = 16'b0000000000000000;
//        #200;
//        A = 16'b0000000000000111;
//        B = 16'b0000000000000100;
//        #300; 
        
    end        

        //show_7segDisplay showit (.seg(seg),.dp(dp),.an(an),
//        .D7Seg0(D7Seg0),.D7Seg1(D7Seg1),.D7Seg2(D7Seg2),.D7Seg3(D7Seg3));
    
    
    
    
endmodule
