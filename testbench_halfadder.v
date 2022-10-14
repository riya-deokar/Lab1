`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2022 04:22:25 PM
// Design Name: 
// Module Name: testbench_halfadder
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


module testbench_halfadder(
    );
    reg A, B; //input 
    wire S, C; //output 
    
    //instantiation
    half_adder ha(.A(A), .B(B), .S(S), .C(C)); 
    
    initial begin
    A=0; 
    B=0; 
    end
    
    always begin 
    #10 {A,B} = {A,B} + 1'b1;
    //#10 $finish; 
    end
endmodule
