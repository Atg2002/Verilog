module Full_adder(x,y,z,S,C);
    input x,y,z;
    output S,C;
    wire w1;

    xor (w1,x,y);
    xor (S,z,w1);

    assign C = (x&&y) || (x&&z) ||(y&&z);
endmodule