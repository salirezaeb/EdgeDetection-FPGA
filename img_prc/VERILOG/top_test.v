`timescale 1ns / 1ps

module top_test;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] T;
	reg read;

	// Outputs
	wire ready_out;
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.reset(reset), 
		.T(T), 
		.read(read), 
		.ready_out(ready_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		T = 63;
		read = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always
	begin
	#10;
	clk = ~clk;
	end
endmodule

