`include "uvm_macros.svh"
import uvm_pkg::*;

// Declare the testbench components
class top_env extends uvm_env;
    // Declare instances of the agents, sequences, and scoreboard here
endclass

// Create the testbench top module
module tb;
    logic clk;
    logic reset;
    top_if top_if_inst(clk);

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Instantiate the DUT and connect it to the interface
    top top_inst(
        .clk(top_if_inst.clk),
        .reset(top_if_inst.reset),
        .color_switch(top_if_inst.color_switch),
        .speed_switch(top_if_inst.speed_switch),
        .pattern_switch(top_if_inst.pattern_switch),
        .pwm_out(top_if_inst.pwm_out)
    );

    // Instantiate the UVM testbench components and connect them to the interface
    top_env top_env_inst;

    initial begin
        uvm_config_db#(virtual top_if)::set(null, "*", "vif", top_if_inst);
        run_test();
    end
endmodule
