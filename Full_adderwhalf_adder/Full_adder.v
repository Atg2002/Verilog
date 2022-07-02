module Half_adder(x,y,S,C);
    input x,y;
    output S,C;

    xor (S,x,y);
    and (C,x,y);
endmodule

module Full_adder(x,y,z,S,C);
    input x,y,z;
    output S,C;
    wire w1s,w1c,w2;

    Half_adder H1(x,y,w1s,w1c);
    Half_adder H2(w1s, z, S,w2 );
    or (C, w1c,w2);
endmodule