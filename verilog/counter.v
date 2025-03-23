module counter (
    input wire CLK,
    output reg [3:0]Q
);

always @(posedge CLK)
    if (Q == 4'b1111)
        Q <= 4'b0;
    else
        Q <= Q + 1;
endmodule