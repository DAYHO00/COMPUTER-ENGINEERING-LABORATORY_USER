`timescale 1ns / 1ps

module inv_tb;
    reg aa,bb,cc,dd;
    wire e,f,g;
    inv u_inv(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .f(f),.g(g), .e(e));
    initial aa=1'b0;
    initial bb=1'b0;
    initial cc=1'b0;
    initial dd=1'b0;
    
    always aa=#100 ~aa;
    always bb=#50 ~bb;
    always cc=#25 ~cc;
    always dd=#12 ~dd;
    
    initial begin
    #1000
    $finish;
    end
endmodule