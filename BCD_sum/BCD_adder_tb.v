`include "BCD_adder.v"

module BCD_adder_tb;
    reg a3,a2,a1,a0, b3,b2,b1,b0 , Cin;
    wire S8,S4,S2,S1, Cout;
    BCD_adder Ba1(a3,a2,a1,a0, b3,b2,b1,b0 , Cin, S8,S4,S2,S1, Cout);

    initial begin
        $dumpfile("BCD_adder_tb.vcd");
        $dumpvars(0, BCD_adder_tb);

        a3=0;a2=0;a1=0;a0=0; b3=0;b2=0;b1=0;b0=0; Cin=0;
        #20;

        a3=0;a2=0;a1=1;a0=1; b3=0;b2=0;b1=1;b0=1; Cin=0;
        #20;

    end
endmodule