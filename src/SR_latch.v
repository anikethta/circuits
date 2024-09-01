// Implementation of a SR Latch
module SR_latch(R, S, Q, Qbar);

input R, S;
output Q, Qbar;

nand(Q, R, Qbar);
nand(Qbar, S, Q);

endmodule;