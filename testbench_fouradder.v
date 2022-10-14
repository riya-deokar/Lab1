`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 04:39:32 PM
// Design Name: 
// Module Name: testbench_fouradder
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


module testbench_fouradder(
    );
    reg Cin; 
    reg[3:0] A, B; 
    wire Cout; 
    wire[3:0] S; 
    wire V; 
    
    four_adder fa(.Cin(Cin), .A(A), .B(B), .Cout(Cout), .S(S), .V(V));
    
    initial 
    begin
    Cin = 0;
    A = 0; 
    B = 0; 
    end 
    
    always begin 
    #10 {A, B} = {A, B} + 1'b1; 
    end     
endmodule
