`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:49:31 07/31/2020
// Design Name:   sumador_medio
// Module Name:   C:/Users/Roman Gasparini/Documents/xilink/projectsVhdl/sumador4b/prubeatestbencha.v
// Project Name:  sumador4b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sumador_medio
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module prubeatestbencha;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Cout;
	wire suma;

	// Instantiate the Unit Under Test (UUT)
	sumador_medio uut (
		.A(A), 
		.B(B), 
		.Cout(Cout), 
		.suma(suma)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

