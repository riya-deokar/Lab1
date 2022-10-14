`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 06:40:27 PM
// Design Name: 
// Module Name: alu_concatenator
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


module alu_concatenator(
    input[3:0] A,
    input[3:0] B,
    output[7:0] conc
    );
    assign conc = {A, B};
endmodule
