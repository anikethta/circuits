// Implementation of a Toggle Flip-Flop
`include "D_FF.v"

module T_FF(Q, clk, reset);

output Q;
input clk, reset;
wire D;

D_FF dff0(Q, D, clk, reset);
not n1(D, Q);

endmodule