
// Behavioral modelling of a full adder

module FA_B (Cin, A, B, Sum, Cout);

	input Cin, A, B;
	output Sum, Cout;
	wire s1, s2, s3;

	HA u1 ( .a(A), .s(s1), .b(B), .c(s2) );
	HA u2 ( .s(Sum), .c(s3), .a(s1), .b(Cin) );
	assign Cout = s2 | s3;
	
endmodule