
// Dataflow modelling of a full adder

module fulladder (cin, x, y, sum, cout) ;

	input cin, x,y;
	output sum, cout ;

	assign sum = ( x ^ y ^ cin ) ;
	assign cout = (x & y) | (cin & x) | (cin & y);
	
endmodule