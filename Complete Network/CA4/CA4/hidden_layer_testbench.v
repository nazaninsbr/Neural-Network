`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:20:35 01/26/2018
// Design Name:   hidden_layer
// Module Name:   D:/University/Term 7/CAD/CAs/CA4/CA4/hidden_layer_testbench.v
// Project Name:  CA3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hidden_layer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hidden_layer_testbench;

	// Inputs
	reg [61:0] input_vec;
	reg clk;
	reg rst;
	reg start;

	// Outputs
	wire [19:0] output_val;
	wire done;
	
	// Instantiate the Unit Under Test (UUT)
	hidden_layer uut (
		.input_vec(input_vec), 
		.clk(clk), 
		.rst(rst), 
		.start(start), 
		.output_val(output_val), 
		.done(done)
	);

	initial begin
		// Initialize Inputs
		input_vec = 0;
		clk = 0;
		rst = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

