module top (
    input wire clk,
    input wire reset,
    input wire [2:0] color_switch,
    input wire speed_switch,
    input wire pattern_switch,
    output wire [2:0] pwm_out
);

    wire [2:0] debounced_color_switch;
    wire debounced_speed_switch;
    wire debounced_pattern_switch;

    // Instantiate debounce circuits
    genvar i;
    generate for (i = 0; i < 3; i++) begin
        debounce debounce_color (
            .clk(clk),
            .reset(reset),
            .switch_in(color_switch[i]),
            .switch_out(debounced_color_switch[i])
        );
    end endgenerate

    debounce debounce_speed (
        .clk(clk),
        .reset(reset),
        .switch_in(speed_switch),
        .switch_out(debounced_speed_switch)
    );

    debounce debounce_pattern (
        .clk(clk),
        .reset(reset),
        .switch_in(pattern_switch),
        .switch_out(debounced_pattern_switch)
    );

    // Instantiate light_show_controller
    light_show_controller controller (
        .color_switch(debounced_color_switch),
        .speed_switch(debounced_speed_switch),
        .pattern_switch(debounced_pattern_switch),
        .pwm_out(pwm_out)
    );
endmodule
