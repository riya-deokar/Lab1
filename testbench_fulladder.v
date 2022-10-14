`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2022 05:09:37 PM
// Design Name: 
// Module Name: testbench_fulladder
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


module testbench_fulladder(
    );
    
    reg A, B, Cin; 
    wire S, Cout;
    
    full_adder fa(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
    
    initial begin
    A = 0; 
    B = 0; 
    Cin = 0;
    
    #100 $finish;
    end
    
    always begin
    #10 {A,B,Cin} = {A,B,Cin} + 1'b1;
    end
endmodule
