// Implementation of an 8-bit shift register
module shift_reg(clk, areset, load, ena, data, q); 
    input clk, areset, load, ena;
    input [7:0] data;
    output reg [7:0] q;

    always @(posedge clk or posedge areset) begin
        if (areset) begin
            q <= 8'b0;
        end
        else begin
            if (load) 
                q <= data; // Load Data
            else if (ena)
                q <= q >> 1; // Rightwards bit shift
        end
    end
endmodule
