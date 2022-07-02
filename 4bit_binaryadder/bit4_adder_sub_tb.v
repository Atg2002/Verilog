`include "bit4_adder_sub.v"
module bit4_adder_sub_tb;
   reg M, a0,a1,a2,a3, b0,b1,b2,b3;
   wire C, S0,S1,S2,S3, V;

   bit4_adder_sub B1(M, a0,a1,a2,a3, b0,b1,b2,b3, C, S0,S1,S2,S3, V);
   initial begin
    $dumpfile("bit4_adder_sub_tb.vcd");
    $dumpvars(0, bit4_adder_sub_tb);
    M=0; a0=0;a1=0;a2=0;a3=0; b0=0;b1=0;b2=0;b3=0;
    #20;

    a0=1;a1=0;a2=1;a3=1; b0=0;b1=1;b2=0;b3=0;
    #20;

    a0=1;a1=1;a2=1;a3=1; b0=1;b1=0;b2=0;b3=0;
    #20;

    M=1; a0=1;a1=1;a2=1;a3=1; b0=1;b1=0;b2=0;b3=0; 
    #20;       
   end
endmodule