`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 15:53:21
// Design Name: 
// Module Name: bit1_tb
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


module bit1_tb;
reg aa,bb;
wire eq,neq,big,sma;

bit1 u_bit1(
.a(aa), .b(bb), .eq(eq), .neq(neq), .big(big), .sma(sma)
    );
initial begin
    aa=1'b0;
    bb=1'b0;
end
always begin
    aa=#20 ~aa;
    bb=#30 ~bb;
end
initial begin
    #1000
    $finish;
end
endmodule
