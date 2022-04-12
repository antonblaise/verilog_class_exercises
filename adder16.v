
module p_adder #(parameter N=8) (
	input [N-1:0] A, B,
	input Cin,
	output [N-1:0] S,
	output Cout
	);
	
	assign {Cout, S} = A + B + Cin;
endmodule

module adder16 (
	input [15:0] A, B,
	input Cin,
	output [15:0] S,
	output Cout
	);
	
	p_adder #(.N(16)) addunit (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
endmodule