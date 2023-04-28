interface top_if(input logic clk);
    logic reset;
    logic [2:0] color_switch;
    logic speed_switch;
    logic pattern_switch;
    logic [2:0] pwm_out;

    // Clocking block for the interface
    clocking cb @(posedge clk);
        input reset;
        input color_switch;
        input speed_switch;
        input pattern_switch;
        output pwm_out;
    endclocking
endinterface
