`include "bit4_adder.v"

module bit4_3_mul( a0,a1,a2, b0,b1,b2,b3, c0,c1,c2,c3,c4,c5,c6 );
    input a0,a1,a2, b0,b1,b2,b3;
    output c0,c1,c2,c3,c4,c5,c6;
    wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,C1,V1,V2, S11,S12,S13,S14;
    assign w0 = a0 && b0;
    assign w1 = a0 && b1;
    assign w2 = a0 && b2;
    assign w3 = a0 && b3;
    assign w4 = a1 && b0;
    assign w5 = a1 && b1;
    assign w6 = a1 && b2;
    assign w7 = a1 && b3;
    assign w8 = a2 && b0;
    assign w9 = a2 && b1;
    assign w10 = a2 && b2;
    assign w11 = a2 && b3;

    assign c0 = w0;
    bit4_adder A1(1'b0, w1,w2,w3,1'b0, w4,w5,w6,w7, C1, S11,S12,S13,S14, V);
    assign c1 = S11;
    bit4_adder A2(1'b0, w8,w9,w10,w11, S12,S13,S14,C1, c6 ,c2,c3,c4,c5, V2);

endmodule