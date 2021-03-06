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
initial begin
	// start out by setting our buttons to "not-pushed"
	sim_LEFT_pushbutton = 1'b0;
	sim_RIGHT_pushbutton = 1'b0;
	
	// start out with our inputs both being 0s.
	sim_A = 4'b0;
	sim_B = 4'b0;

	// wait five simulations timesteps to allow these changes to happen
	#5;

	// our first test: try ANDing
	sim_LEFT_pushbutton = 1'b1;
	sim_A = 4'b1100;
	sim_B = 4'b1010;

	// again, wait five timesteps to allow these changes to occur
	#5;

	// print out the current values to Modelsim command line
	$display("Output is %b, we expected %b", sim_result, (4'b1100 & 4'b1010));

	// our second test: try ADDING
	sim_LEFT_pushbutton = 1'b0;
	sim_RIGHT_pushbutton = 1'b1;
	sim_A = 4'b1100;
	sim_B = 4'b1010;

	// again, wait five timesteps to allow these changes to occur
	#5;

	// print out the current values to Modelsim command line
	$display("Output is %b, we expected %b", sim_result, (4'b1100 + 4'b1010));

	// try changing the inputs, note that we're still adding!
	sim_A = 4'b0001;
	sim_B = 4'b0011;
	#5;

	// displaying the output after changing our inputs A and B w/ADD
	$display("Output is %b, we expected %b", sim_result, (4'b0001 + 4'b0011));

	// Lets go back to ANDing
	sim_LEFT_pushbutton = 1'b1;
	sim_RIGHT_pushbutton = 1'b0;
	#5;

	//displaying the output after changing to AND operation
	$display("Output is %b, we expected %b", sim_result, (4'b0001 & 4'b0011));

	// lets change the inputs and ADD them and then AND them
	sim_A = 4'b1010;
	sim_B = 4'b0110;
	#5;
	
	//displaying the output after changing to AND operation
	$display("Output is %b, we expected %b", sim_result, (4'b1010 & 4'b0110));

	// lets add them now
	sim_LEFT_pushbutton = 1'b0;
	sim_RIGHT_pushbutton = 1'b0;
	#5;

	//displaying the output after changing to AND operation
	$display("Output is %b, we expected %b", sim_result, (4'b1010 + 4'b0110));

	$stop;
end
endmodule
