`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 03:57:20 PM
// Design Name: 
// Module Name: testbench_alu
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


module testbench_alu();
    reg[1:0] S; // select lines
    reg[3:0] a, b; // input
    wire[7:0] Y;

    alu_module al(a, b, S, Y) ;
    initial begin
        a=0;
        b=0;
        S=0;
    end
    always begin
        #10 {a, b, S} = {a, b, S} + 1'b1;
        if(a == 4'b1111 && b==4'b1111 && S==2'b11)
            #10 $stop;
        end
endmodule
