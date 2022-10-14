`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 06:44:26 PM
// Design Name: 
// Module Name: alu_shifter
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


module alu_shifter(
    input[3:0] A,
    input[3:0] B,
    output[7:0] shift
    );
    assign shift = A << B;
endmodule