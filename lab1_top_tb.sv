// file name: lab1_top_tb
// creator: M.Faran Bhatti, 05-22-2022
// description: test module for top level module lab1_top

// testbench module declaration
module lab1_top_tb();

// testbench signals to connect to device under test (DUT)
reg sim_LEFT_pushbutton;
reg sim_RIGHT_pushbutton;
reg [3:0] sim_A;
reg [3:0] sim_B;

wire [3:0] sim_result;

// instantiating the lab1_top module
lab1_top DUT (
	.not_LEFT_pushbutton(~sim_LEFT_pushbutton),
	.not_RIGHT_pushbutton(~sim_RIGHT_pushbutton),
	.A(sim_A),
	.B(sim_B),
	.result(sim_result)
	);

// initial test script

endmodule
