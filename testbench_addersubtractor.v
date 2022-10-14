`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 05:35:47 PM
// Design Name: 
// Module Name: testbench_addersubtractor
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


module testbench_addersubtractor(
    );
       
    reg M;
    reg [3:0] A, B; 
    wire C;
    wire [3:0] S;
    wire V;
    
    adder_subtractor as(.M(M), .A(A), .B(B), .C(C), .S(S), .V(V));
    
    initial begin
    M = 0;
    A = 0;
    B = 0;
    end
    
    always begin
    #10 {A,B,M} = {A,B,M} + 1'b1;
    if(A==4'b1111 && B==4'b1111 && M == 1) #10 $stop;
    end
endmodule
