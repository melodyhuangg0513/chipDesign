module debounce (
    input wire clk,
    input wire reset,
    input wire switch_in,
    output reg switch_out
);

    reg [15:0] counter;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 16'h0000;
            switch_out <= 1'b0;
        end else if (switch_in != switch_out) begin
            counter <= counter + 1;
            if (counter == 16'hFFFF) begin
                switch_out <= switch_in;
            end
        end else begin
            counter <= 16'h0000;
        end
    end
endmodule
