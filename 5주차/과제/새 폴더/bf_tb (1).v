`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 15:17:28
// Design Name: 
// Module Name: bf_tb
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


module bf_tb;
    reg aa,bb,cc;
    wire x;
bf u_bf(
    .a(aa), .b(bb), .c(cc), .x(x)
    );
initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
end
always begin
aa=#20 ~aa;
bb=#30 ~bb;
cc=#40 ~cc;
end
initial begin 
#1000
$finish;
end
endmodule
