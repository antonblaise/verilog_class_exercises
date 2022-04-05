

// Behavioral modelling of a 3-8 decoder (active low enable & active low output)

module decoder_3_8_B (
	input [2:0] a, 
	input en,
	output reg [7:0] z
	);
	
	always@(a, en)
	begin
		if (~en)
			case(a)
				0: z = ~1;
				1: z = ~2;
				2: z = ~4;
				3: z = ~8;
				4: z = ~16;
				5: z = ~32;
				6: z = ~64;
				7: z = ~128;
				default: z = ~0;
			endcase
		else
			z = ~0;
	end
	
endmodule