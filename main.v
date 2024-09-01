`timescale 1ms/1ms
`include "src/T_FF.v"

module main;

// Inputs -> Registers
reg D, clk, reset;

// Outputs -> Wires
wire Q;

// init
T_FF dut(Q, clk, reset);

// starts the clock pulse
initial begin 
    clk = 0;
    forever begin
        #10;
        clk = ~clk;
    end
end

initial begin
    $dumpfile("main.vcd");
    $dumpvars(0, main);

    reset = 0;
    #100;
    reset = 1;
    #200;
    reset = 0;
    #100;
    reset = 1;
    #50;
    reset = 0;
end
endmodule