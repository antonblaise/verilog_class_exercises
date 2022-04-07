
module dec2to4_v1 (
	input [1:0] a , 
	input en ,
	output reg [0:3] z ) ;
	
	always @ (a, en)
	begin
		if (en == 0)
			z = 4'b0000;
		else
			case (a)
				0: z = 4'b1000;
				1: z = 4'b0100;
				2: z = 4'b0010;
				3: z = 4'b0001;
			endcase
	end
endmodule