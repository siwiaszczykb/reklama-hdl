module shiftreg (
    input wire CLK,
    input wire EN,
    input wire [6:0] D,
    output reg [6:0] Q
);

always @(posedge CLK) begin
   if (EN) begin
        Q <= D;
	end
end
endmodule