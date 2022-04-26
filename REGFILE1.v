// Date: 26 April 2022
// Textbook pg. 134

module REGFILE1 (
	input clk, we,
	input [7:0] Ddata,
	input [1:0] Daddr, Aaddr, Baddr,
	output [7:0] Adata, Bdata
);

	reg[7:0] RF[3:0]; // memory block - four 8-bit register set
	
	// synchronous write
	always @ (posedge clk)
	begin
		if(we) RF[Daddr] <= Ddata;
	end
	
	// asynchronous reads
	assign Adata = RF[Aaddr];
	assign Bdata = RF[Baddr];

endmodule