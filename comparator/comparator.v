module comparator(a0,a1,a2, b0,b1,b2, Equal, A_more, B_more);
    input a0,a1,a2, b0,b1,b2;
    output Equal, A_more, B_more;
    wire x2,x1,x0;

    xnor (x0,a0,b0);
    xnor (x1,a1,b1);
    xnor (x2,a2,b2);
    
    and (Equal,x0,x1,x2);
    assign A_more = (a2 && (!b2)) || (x2 && (a1 && (!b1)) ) || (x2 && x1 && (a0 && (!b0)) );
    assign B_more = (b2 && (!a2)) || (x2 && (b1 && (!a1)) ) || (x2 && x1 && (b0 && (!a0)) );
endmodule