module prescaler (
    input wire clk,
    output reg clk1Hz
);

reg [25:0] sysClkCounter = 0;
parameter sysCLK = 50000000 - 1;

always @(posedge clk) begin
    if (sysClkCounter == sysCLK) begin
        clk1Hz <= 1'b1;
        sysClkCounter <= 0;
    end 
    else begin
        clk1Hz <= 1'b0;
        sysClkCounter <= sysClkCounter + 1;
    end
end

endmodule