
// Behavioral modelling of a 2-input OR gate

module OR2_v1 (x, y, z);

	input x, y;
	output z ;
	reg z;
	
	always @ (x or y)
	begin
		if ((x == 0) && (y == 0)) 
			z = 0;
		else 
			z = 1;
	end

endmodule