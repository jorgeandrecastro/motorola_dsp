module fft_core(
    input clk,
    input signed [7:0] a, // Échantillon 1
    input signed [7:0] b, // Échantillon 2
    output reg signed [7:0] sum, // A + B
    output reg signed [7:0] diff // A - B
);
    always @(posedge clk) begin
        sum  <= a + b;
        diff <= a - b;
    end
endmodule
