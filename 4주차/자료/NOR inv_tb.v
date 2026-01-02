`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 15:00:54
// Design Name: 
// Module Name: inv_tb
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


module inv_tb;
reg aa, bb, cc, dd;
wire e, f, g;

inv u_inv (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(e),
.f(f),
.g(g));

initial begin
aa=1'b0;
bb=1'b0;
cc=1'b0;
dd=1'b0;

end
always begin
aa=#20 ~aa;
bb=#30 ~bb;
cc=#40 ~cc;
dd=#50 ~dd;
end

initial begin
#1000
$finish;
end


endmodule

