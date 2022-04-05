
// Dataflow modelling of a 2-4 decoder

module decoder_2_4 (a1, a2, en, z0, z1, z2, z3);

	input a1, a2, en;
	output z0, z1, z2, z3;
	
	assign z0 = (~a1) & (~a2) & en;
	assign z1 = (~a1) & a2 & en;
	assign z2 = a1 & (~a2) & en;
	assign z3 = a1 & a2 & en;
	
endmodule