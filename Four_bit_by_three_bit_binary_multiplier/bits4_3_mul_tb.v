`include "bit4_3_mul.v"

module bits4_3_mul_tb;

    reg a0,a1,a2, b0,b1,b2,b3;
    wire c0,c1,c2,c3,c4,c5,c6;

    bit4_3_mul M1(a0,a1,a2, b0,b1,b2,b3, c0,c1,c2,c3,c4,c5,c6 );

    initial begin
        $dumpfile("bits4_3_mul_tb.vcd");
        $dumpvars(0, bits4_3_mul_tb);

        a0=0;a1=0;a2=0; b0=0;b1=0;b2=0;b3=0;
        #20;
        a0=0;a1=1;a2=1; b0=1;b1=1;b2=0;b3=0;
        #20;
    end
    
endmodule