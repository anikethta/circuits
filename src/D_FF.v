// Implementation of a D-Flip Flop 
module D_FF(Q, D, clk, reset);

input D, clk, reset; // Data input, clock signal, reset
output reg Q; // output Q

always @(posedge reset or negedge clk) begin
if (reset == 1'b1) 
    Q <= 1'b0;
else
    Q <= D;
end

endmodule