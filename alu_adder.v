`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 06:05:32 PM
// Design Name: 
// Module Name: alu_adder
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


module alu_adder(
    input[3:0] A,
    input[3:0] B,
    output[7:0] sum
    );
    assign sum = A+B; 
endmodule
