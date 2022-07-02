`include "bit4_adder_sub.v"

module BCD_adder (
    a3,a2,a1,a0, b3,b2,b1,b0 , Cin, S8,S4,S2,S1, Cout
);
    input a3,a2,a1,a0, b3,b2,b1,b0, Cin;
    output S8,S4,S2,S1, Cout;
    wire Z8,Z4,Z2,Z1, K, V,C2;

    bit4_adder_sub B1( Cin, a0,a1,a2,a3, b0,b1,b2,b3, K, Z1,Z2,Z4,Z8, V);
    assign Cout = K || (Z8 && Z4) || (Z8 && Z2);
    bit4_adder_sub B2( 1'b0, Z1,Z2,Z4,Z8, 1'b0,Cout,Cout,1'b0, C2, S1,S2,S4,S8, V);
endmodule