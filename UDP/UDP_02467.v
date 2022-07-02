primitive UDP_02467(D,A,B,C);
    output D;
    input A,B,C;
    table
        0 0 0 : 1;
        0 0 1 : 0;
        0 1 0 : 1;
        0 1 1 : 0;
        1 0 0 : 1;
        1 0 1 : 0;
        1 1 0 : 1;
        1 1 1 : 1;
    endtable
endprimitive

module Circuit_with_UDP02467(
e,f,a,b,c,d
);
    output e,f;
    input a,b,c,d;

    UDP_02467 (e,a,b,c);
    and (f,e,d);
endmodule