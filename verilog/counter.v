module counter (
    input wire CLK,
    input wire EN,
    output reg [3:0] Q
);

always @(posedge CLK)
    if (EN) begin
        if (Q == 4'b1111)
            Q <= 4'b0;
        else
            Q <= Q + 1;
    end
endmodule