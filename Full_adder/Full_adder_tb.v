`include "Full_adder.v"

module Full_adder_tb;
    reg x,y,z;
    wire S,C;

    Full_adder uut(x,y,z,S,C);

    initial begin
        $dumpfile("Full_adder_tb.vcd");
        $dumpvars(0, Full_adder_tb);
        x =0;y=0; z=0;
        #20;
        x=1;
        #20;
        y=1;
        #20;
        z=1;
        #20;
    end
endmodule