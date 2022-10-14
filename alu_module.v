`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 03:34:04 PM
// Design Name: 
// Module Name: alu_module
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


module alu_module #
    (
    parameter INPUT_WIDTH = 4,
    parameter OUTPUT_WIDTH = 8, 
    parameter SELECT_WIDTH = 2
    )
    (
    input wire [INPUT_WIDTH-1:0] A,
    input wire [INPUT_WIDTH-1:0] B,
    input wire [SELECT_WIDTH-1:0] S,
    output wire [OUTPUT_WIDTH-1:0] Y
    ); 
    
    wire[7:0] j, k, l, m; 
    
    alu_adder a1(A, B, j); 
    alu_multiplier a2(A, B, k); 
    alu_shifter a3(A, B, l); 
    alu_concatenator a4(A, B, m); 
    
    alu_multiplexer m1(j, k, l, m, S, Y); 
endmodule