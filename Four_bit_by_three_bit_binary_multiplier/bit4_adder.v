module Full_adder(x,y,z,S,C);
    input x,y,z;
    output S,C;
    wire w1;

    xor (w1,x,y);
    xor (S,z,w1);

    assign C = (x&&y) || (x&&z) ||(y&&z);
endmodule

module bit4_adder(M, a0,a1,a2,a3, b0,b1,b2,b3, C, S0,S1,S2,S3, V);
    input M, a0,a1,a2,a3, b0,b1,b2,b3;
    output C, S0,S1,S2,S3, V;
    wire w0,w1,w2,w3;
    wire C1,C2,C3;

    xor (w0,b0,M);
    xor (w1,b1,M);
    xor (w2,b2,M);
    xor (w3,b2,M);  

    Full_adder F0(a0,w0,M,S0,C1);
    Full_adder F1(a1,w1,C1,S1,C2);
    Full_adder F2(a2,w2,C2,S2,C3);
    Full_adder F3(a3,w3,C3,S3,C);
    xor(V, C, C3);
endmodule