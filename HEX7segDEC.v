
// Hexadecimal number to 7-segment LED decoder for DE10-Lite FPGA board (MAX10 FPGA - 10M50DAF484C7G)

module HEX7segDEC (
	input [3:0] SW, // represent 4-bit binary number as input

	output reg [7:0] HEX5,
	output reg [9:0] LEDR
);
	
	// Hexadecimal numbers on 7-segment LED display
	parameter zero=8'b0011_1111, one=8'b0000_0110, two=8'b0101_1011, three=8'b0100_1111, four=8'b0110_0110,
					five=8'b0110_1101, six=8'b0111_1101, seven=8'b0000_0111, eight=8'b0111_1111, nine=8'b0110_1111,
					A=8'b0111_0111, B=8'b0111_1100, C=8'b0011_1001, D=8'b0101_1110, E=8'b0111_1001,
					F=8'b0111_0001;
	
	always@(SW)
	begin
	
		LEDR = SW;

		case(SW)
			// For DE10-Lite board - HEX LEDs are active low & in reversed order
			0: HEX5 = ~zero;
			1:	HEX5 = ~one;
			2: HEX5 = ~two;
			3:	HEX5 = ~three;
			4: HEX5 = ~four;
			5: HEX5 = ~five;
			6: HEX5 = ~six;
			7: HEX5 = ~seven;
			8: HEX5 = ~eight;
			9: HEX5 = ~nine;
			10: HEX5 = ~A;
			11: HEX5 = ~B;
			12: HEX5 = ~C;
			13: HEX5 = ~D;
			14: HEX5 = ~E;
			15: HEX5 = ~F;
			default: HEX5 = ~8'b1000_0000;
		endcase
	end
endmodule