`include "comparator.v"

module comparator_tb;
    reg a0,a1,a2, b0,b1,b2;
    wire Equal, A_more, B_more;

    comparator C1(a0,a1,a2, b0,b1,b2, Equal, A_more, B_more);
    initial begin
        $dumpfile("comparator_tb.vcd");
        $dumpvars(0,comparator_tb);
        a0=0;a1=0;a2=0; b0=0;b1=0;b2=0;
        #20;
        
        a2=0;a1=1;a0=1; b2=1;b1=0;b0=1;
        #20;
        a2=0;a1=1;a0=1; b2=0;b1=1;b0=0;
        #20;
    end
endmodule