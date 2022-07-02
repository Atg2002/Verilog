`include "UDP_02467.v"
module UDP_02467_tb;
    wire E,F;
    reg A,B,C,D;
    UDP_02467 uut(E,A,B,C);
    and (F,E,D);

    initial begin
        $dumpfile("UDP_02467_tb.vcd");
        $dumpvars(0, UDP_02467_tb);
        A=0;B=0;C=0;D=0;
        #20;

        A=1;
        #20;
    end
endmodule