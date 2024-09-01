`timescale 1ns/1ns
`include "D_FF.v"

module main;

// Inputs -> Registers
reg D, clk, reset;

// Outputs -> Wires
wire Q;

// init
D_FF dut(Q, D, clk, reset);

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

    reset = 1;
    D <= 0;
    #100;
    reset = 0;
    D <= 1;
    #100;
    D <= 0;
    #100;
    D <= 1;
end
endmodule