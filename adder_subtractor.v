`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 05:11:36 PM
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor(
    input [3:0]A,
    input [3:0]B,
    input M,
    output C,
    output V,
    output [3:0]S
    wire[3:0] w, 
    wire w0
    );
    
    xor G1(w[0], M, B[0]);
    xor G2(w[1], M, B[1]);
    xor G3(w[2], M, B[2]);
    xor G4(w[3], M, B[3]);
    
    four_adder F1(.Cin(M), .A(A), .B(w), .C3(C), .S(S), .w3(w0));
    xor G5(V, w0, C);
endmodule
