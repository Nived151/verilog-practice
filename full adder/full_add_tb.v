`include "fulladd.v"
module tb_fulladd;  
    // 1. Declare testbench variables  
   reg [3:0] a;  
   reg [3:0] b;  
   reg c_in;  
   wire [3:0] sum;  
   integer i;  
  
    // 2. Instantiate the design and connect to testbench variables  

    assign {c_out, sum} = a + b + c_in;  
  
    // 3. Provide stimulus to test the design  
   initial begin  
      a <= 0;  
      b <= 0;  
      c_in <= 0;  
  
      $monitor ("a=0x%0h b=0x%0h c_in=0x%0h c_out=0x%0h sum=0x%0h", a, b, c_in, c_out, sum);  
  
        // Use a for loop to apply random values to the input  
      for (i = 0; i < 5; i = i+1) begin  

          $dumpfile("fadder_tb.vcd");
          $dumpvars(0, tb_fulladd);

         #10 a <= $random;  
            b <= $random;  
            c_in <= $random;  
      end  
   end  
endmodule 