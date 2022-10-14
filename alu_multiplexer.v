`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 01:27:38 PM
// Design Name: 
// Module Name: alu_multiplexer
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


module alu_multiplexer(
    input[3:0] a, b, 
    input[1:0] S, 
    output reg[7:0] Y
    );
    
    always@(*)
        case(S)
            2'b00: Y = alu_concatenator(.A(a), .B(b), .conc(Y));
            2'b01: Y = alu_adder(.A(a), .B(b), .sum(Y));
            2'b10: Y = alu_shift(.A(a), .B(b), .shift(Y));
            2'b11: Y = alu_multiplier(.A(a), .B(b), .mult(Y));
        endcase 
endmodule
