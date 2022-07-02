`include "Half_adder.v"

module Half_adder_tb;
    wire S,C;
    reg x,y;

    Half_adder uut(x,y,S,C);
    initial 
    begin
        $dumpfile("Half_adder.vcd");
        $dumpvars(0, Half_adder_tb);
        x =0; y=0;
        #20;
        y=1;
        #20;
        x=1;
        #20;
        y=0;
        #20;
    end
endmodule