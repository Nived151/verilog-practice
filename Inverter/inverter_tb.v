`timescale 1ns / 1ns
`include "inverter.v"
module inverter_tb();
reg a;
wire y;

inverter uut(a,y);

initial begin

	$dumpfile("inverter_tb.vcd");
    $dumpvars(0, inverter_tb);

	a=0;
	#10;

	a=1;
	#10;

	$display("Test Complete");

end	
endmodule