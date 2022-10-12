`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2022 04:43:19 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(A, B, Cin, Cout, S);
    input A, B, Cin; 
    output Cout, S; 
    
    wire w1; 
    wire w2; 
    wire w3; 
    
    //half_adder G1(A, B, w1, w2);
    //half_adder G2(S, Cin, w1, w3);
    
    half_adder ha1(.A(A), .B(B), .S(w1), .C(w2)); 
    half_adder ha2(.A(w1), .B(Cin), .S(S), .C(w3)); 
    or G3(Cout, w3, w2);  
endmodule
