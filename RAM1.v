// Date: 26 April 2022
// Textbook pg. 135-136

module RAM1 (
	input [9:0] addr, // 10 bits wide of address because 2^10 = 1024 (1kB)
	input [7:0] datain,
	input clk, we,
	output [7:0] dataout
);

	reg [7:0] M[0:1023]; // 1kB memory block
	
	// synchronous write
	always@(posedge clk)
	begin
		if(we == 0)
			M[addr] <= datain;
	end
	
	// asynchronous read
	assign dataout = M[addr]

endmodule
