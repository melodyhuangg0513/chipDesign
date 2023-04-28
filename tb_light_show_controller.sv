`timescale 1ns / 1ps

module tb_light_show_controller();
    reg [2:0] color_switch;
    reg speed_switch;
    reg pattern_switch;
    wire [2:0] pwm_out;

    light_show_controller top (
        .color_switch(color_switch),
        .speed_switch(speed_switch),
        .pattern_switch(pattern_switch),
        .pwm_out(pwm_out)
    );

    initial begin
        // Initialize the switch inputs
        color_switch = 3'b000;
        speed_switch = 1'b0;
        pattern_switch = 1'b0;

        // Test the color switches
        #10 color_switch = 3'b001; // Red
        #10 color_switch = 3'b010; // Green
        #10 color_switch = 3'b100; // Blue
        #10 color_switch = 3'b011; // Yellow
        #10 color_switch = 3'b101; // Magenta
        #10 color_switch = 3'b110; // Cyan
        #10 color_switch = 3'b111; // White
        #10 color_switch = 3'b000; // Off

        // Test the speed switch
        repeat (10) begin
            #10 speed_switch = ~speed_switch;
        end

        // Test the pattern switch
        repeat (4) begin
            #10 pattern_switch = ~pattern_switch;
        end

        // Finish the simulation
        #10 $finish;
    end
endmodule
