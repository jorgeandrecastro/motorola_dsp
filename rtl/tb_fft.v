module tb_fft;
    reg clk = 0;
    reg [7:0] mem [0:63];
    wire [7:0] sum, diff;
    integer i;

    // Connexion du nouveau module
    fft_core uut (.clk(clk), .a(mem[i]), .b(mem[i+1]), .sum(sum), .diff(diff));

    always #5 clk = ~clk;

    initial begin
        $readmemh("input_signal.hex", mem);
        $display("--- Analyse Spectrale Eagle ---");
        for (i = 0; i < 16; i = i + 2) begin
            @(posedge clk);
            $display("In1: %d | In2: %d | Somme: %d | Diff: %d", mem[i], mem[i+1], sum, diff);
        end
        $finish;
    end
endmodule
