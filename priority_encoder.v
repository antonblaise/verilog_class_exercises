
module priority_encoder (
	input a, b, c, d, w, x, y, z,
	output j
);

	assign j = (a == 1) ? w :
					(b == 1) ? x :
					(c == 1) ? y :
					(d == 1) ? z : 0;

endmodule