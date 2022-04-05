
// Behavioral modelling of a 2-4 decoder

module decoder_2_4_B (
	input [1:0] a, 
	input en,
	output reg [3:0] z
	);
	
	always@(a, en)
	begin
		if (en)
			case(a)
				0: z = 1;
				1: z = 2;
				2: z = 4;
				3: z = 8;
				default: z = 0;
			endcase
		else
			z = 0;
	end
	
endmodule