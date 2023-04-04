module light_show_controller (
    input wire [2:0] color_switch,
    input wire speed_switch,
    input wire pattern_switch,
    output wire [2:0] pwm_out
);

    reg [2:0] color;
    reg [31:0] speed_counter;
    reg [31:0] pattern_counter;
    reg [2:0] pattern;

    always @(posedge speed_switch) begin
        speed_counter <= speed_counter + 1;
    end

    always @(posedge pattern_switch) begin
        pattern_counter <= pattern_counter + 1;
        pattern <= pattern_counter[1:0]; // Select one of four patterns
    end

    always @(posedge color_switch) begin
        color <= color_switch;
    end

    always_comb begin
        case (pattern)
            2'b00: pwm_out = {color[0] & (speed_counter[20]), color[1] & (speed_counter[20]), color[2] & (speed_counter[20])};
            2'b01: pwm_out = {color[0] & (speed_counter[21]), color[1] & (speed_counter[21]), color[2] & (speed_counter[21])};
            2'b10: pwm_out = {color[0] & (speed_counter[22]), color[1] & (speed_counter[21]), color[2] & (speed_counter[20])};
            2'b11: pwm_out = {color[0] & (speed_counter[20]), color[1] & (speed_counter[22]), color[2] & (speed_counter[21])};
            default: pwm_out = 3'b000;
        endcase
    end
endmodule
