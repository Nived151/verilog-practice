`include "adder.v"
`timescale 1ns / 1ns

module adder_tb();
reg a;
reg b;
wire c;

adder uut(a,b,c);
initial begin
    $dumpfile("adder_tb.vcd");
    $dumpvars(0, adder_tb);
    a = 0;
    b = 0;
    #10

    a = 0;
    b = 1;
    #10

    a = 1;
    b = 0;
    #10

    a = 1;
    b = 1;
    #10

    $display("Test Complete");
end
endmodule