
// Structural modelling of a full adder using half adders

module FA (Cin, A, B, Sum, Cout) ;

	input Cin, A, B;
	output Sum, Cout ;
	wire s1, s2, s3;
	
	HA u1 (A, B, s1, s2);
	HA u2 (s1, Cin, Sum, s3);
	assign Cout = s2 | s3;
	
endmodule