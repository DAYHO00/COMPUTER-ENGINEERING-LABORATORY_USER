`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 15:48:54
// Design Name: 
// Module Name: bit1
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


module bit1(
    input a,b,
    output eq,neq,big,sma
    );
assign eq = ~(a^b);
assign neq = a^b;
assign big = a&(~b);
assign sma = (~a)&b;
endmodule
