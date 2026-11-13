module dino_duck1_rom
	(
		input wire clk,
		input wire [5:0] row,
		input wire [5:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [5:0] row_reg;
	reg [5:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin




		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000100000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000100000001) && ({row_reg, col_reg}<12'b000100000111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000100000111) && ({row_reg, col_reg}<12'b000101000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000101000001) && ({row_reg, col_reg}<12'b000101000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000101000111) && ({row_reg, col_reg}<12'b000101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000101100110) && ({row_reg, col_reg}<12'b000101111010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000101111010) && ({row_reg, col_reg}<12'b000110000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110000001) && ({row_reg, col_reg}<12'b000110000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110000011) && ({row_reg, col_reg}<12'b000110000101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000110000101) && ({row_reg, col_reg}<12'b000110001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110001011) && ({row_reg, col_reg}<12'b000110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110001111) && ({row_reg, col_reg}<12'b000110100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110100100) && ({row_reg, col_reg}<12'b000110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110100110) && ({row_reg, col_reg}<12'b000110111010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000110111010) && ({row_reg, col_reg}<12'b000111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000111000001) && ({row_reg, col_reg}<12'b000111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111000011) && ({row_reg, col_reg}<12'b000111000101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000111000101) && ({row_reg, col_reg}<12'b000111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111001011) && ({row_reg, col_reg}<12'b000111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000111001111) && ({row_reg, col_reg}<12'b000111101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111101000) && ({row_reg, col_reg}<12'b000111111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b000111111000) && ({row_reg, col_reg}<12'b001000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000000001) && ({row_reg, col_reg}<12'b001000000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000000011) && ({row_reg, col_reg}<12'b001000001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000001001) && ({row_reg, col_reg}<12'b001000010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000010001) && ({row_reg, col_reg}<12'b001000100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000100010) && ({row_reg, col_reg}<12'b001000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000101000) && ({row_reg, col_reg}<12'b001000111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001000111000) && ({row_reg, col_reg}<12'b001001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001000001) && ({row_reg, col_reg}<12'b001001000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001000011) && ({row_reg, col_reg}<12'b001001001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001001001) && ({row_reg, col_reg}<12'b001001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001010001) && ({row_reg, col_reg}<12'b001001100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001100010) && ({row_reg, col_reg}<12'b001001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001100110) && ({row_reg, col_reg}<12'b001001111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001001111010) && ({row_reg, col_reg}<12'b001010000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010000001) && ({row_reg, col_reg}<12'b001010000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010000011) && ({row_reg, col_reg}<12'b001010101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001010101010) && ({row_reg, col_reg}<12'b001010101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010101100) && ({row_reg, col_reg}<12'b001010111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001010111010) && ({row_reg, col_reg}<12'b001011000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011000001) && ({row_reg, col_reg}<12'b001011000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011000011) && ({row_reg, col_reg}<12'b001011101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001011101010) && ({row_reg, col_reg}<12'b001011101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011101100) && ({row_reg, col_reg}<12'b001011111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001011111010) && ({row_reg, col_reg}<12'b001100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100000001) && ({row_reg, col_reg}<12'b001100000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001100000101) && ({row_reg, col_reg}<12'b001100111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001100111010) && ({row_reg, col_reg}<12'b001101000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101000001) && ({row_reg, col_reg}<12'b001101000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101000101) && ({row_reg, col_reg}<12'b001101111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001101111010) && ({row_reg, col_reg}<12'b001110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110000000) && ({row_reg, col_reg}<12'b001110000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110000011) && ({row_reg, col_reg}<12'b001110000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110000111) && ({row_reg, col_reg}<12'b001110111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001110111010) && ({row_reg, col_reg}<12'b001111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111000000) && ({row_reg, col_reg}<12'b001111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111000011) && ({row_reg, col_reg}<12'b001111000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111000111) && ({row_reg, col_reg}<12'b001111111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001111111010) && ({row_reg, col_reg}<12'b010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000000000) && ({row_reg, col_reg}<12'b010000000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000000101) && ({row_reg, col_reg}<12'b010000001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000001001) && ({row_reg, col_reg}<12'b010000111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b010000111010) && ({row_reg, col_reg}<12'b010001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010001000000) && ({row_reg, col_reg}<12'b010001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001000101) && ({row_reg, col_reg}<12'b010001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010001001001) && ({row_reg, col_reg}<12'b010001111010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b010001111010) && ({row_reg, col_reg}<12'b010010000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010000000) && ({row_reg, col_reg}<12'b010010000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010000111) && ({row_reg, col_reg}<12'b010010001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010001011) && ({row_reg, col_reg}<12'b010010110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b010010110000) && ({row_reg, col_reg}<12'b010011000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011000000) && ({row_reg, col_reg}<12'b010011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011000111) && ({row_reg, col_reg}<12'b010011001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011001011) && ({row_reg, col_reg}<12'b010011110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b010011110000) && ({row_reg, col_reg}<12'b010100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100000000) && ({row_reg, col_reg}<12'b010100001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100001001) && ({row_reg, col_reg}<12'b010100001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100001101) && ({row_reg, col_reg}<12'b010100100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100100100) && ({row_reg, col_reg}<12'b010100101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100101000) && ({row_reg, col_reg}<12'b010100110110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100110110) && ({row_reg, col_reg}<12'b010100111010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010100111010) && ({row_reg, col_reg}<12'b010101001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101001001) && ({row_reg, col_reg}<12'b010101001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101001101) && ({row_reg, col_reg}<12'b010101100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101100100) && ({row_reg, col_reg}<12'b010101101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101101000) && ({row_reg, col_reg}<12'b010101110110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101110110) && ({row_reg, col_reg}<12'b010101111010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010101111010) && ({row_reg, col_reg}<12'b010110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110001100) && ({row_reg, col_reg}<12'b010110001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110001111) && ({row_reg, col_reg}<12'b010110100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110100100) && ({row_reg, col_reg}<12'b010110100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110100110) && ({row_reg, col_reg}<12'b010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110101000) && ({row_reg, col_reg}<12'b010110111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010110111000) && ({row_reg, col_reg}<12'b010111001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111001100) && ({row_reg, col_reg}<12'b010111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111001111) && ({row_reg, col_reg}<12'b010111011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111011011) && ({row_reg, col_reg}<12'b010111100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111100000) && ({row_reg, col_reg}<12'b010111100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111100010) && ({row_reg, col_reg}<12'b010111100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111100110) && ({row_reg, col_reg}<12'b010111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111101000) && ({row_reg, col_reg}<12'b010111111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010111111000) && ({row_reg, col_reg}<12'b011000001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000001100) && ({row_reg, col_reg}<12'b011000001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000001110) && ({row_reg, col_reg}<12'b011000010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000010000) && ({row_reg, col_reg}<12'b011000010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000010100) && ({row_reg, col_reg}<12'b011000011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000011010) && ({row_reg, col_reg}<12'b011000100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000100000) && ({row_reg, col_reg}<12'b011000100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000100010) && ({row_reg, col_reg}<12'b011000100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011000100110) && ({row_reg, col_reg}<12'b011001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001001010) && ({row_reg, col_reg}<12'b011001001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001001110) && ({row_reg, col_reg}<12'b011001010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001010000) && ({row_reg, col_reg}<12'b011001010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001010100) && ({row_reg, col_reg}<12'b011001011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001011010) && ({row_reg, col_reg}<12'b011001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001011100) && ({row_reg, col_reg}<12'b011001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001011110) && ({row_reg, col_reg}<12'b011001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001100000) && ({row_reg, col_reg}<12'b011001100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001100100) && ({row_reg, col_reg}<12'b011001101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011001101000) && ({row_reg, col_reg}<12'b011010001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010001010) && ({row_reg, col_reg}<12'b011010001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010001110) && ({row_reg, col_reg}<12'b011010010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010010010) && ({row_reg, col_reg}<12'b011010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010010100) && ({row_reg, col_reg}<12'b011010011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010011000) && ({row_reg, col_reg}<12'b011010011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010011010) && ({row_reg, col_reg}<12'b011010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010011110) && ({row_reg, col_reg}<12'b011010100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010100000) && ({row_reg, col_reg}<12'b011010100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010100100) && ({row_reg, col_reg}<12'b011010101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011010101000) && ({row_reg, col_reg}<12'b011011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011001100) && ({row_reg, col_reg}<12'b011011001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011001110) && ({row_reg, col_reg}<12'b011011010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011011010010) && ({row_reg, col_reg}<12'b011011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011010100) && ({row_reg, col_reg}<12'b011011011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011011011000) && ({row_reg, col_reg}<12'b011011011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011011010) && ({row_reg, col_reg}<12'b011011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011011110) && ({row_reg, col_reg}<12'b011011100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011011100110) && ({row_reg, col_reg}<12'b011100001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100001100) && ({row_reg, col_reg}<12'b011100010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011100010100) && ({row_reg, col_reg}<12'b011100010110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100010110) && ({row_reg, col_reg}<12'b011100011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011100011000) && ({row_reg, col_reg}<12'b011100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100011110) && ({row_reg, col_reg}<12'b011100100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011100100110) && ({row_reg, col_reg}<12'b011101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101001100) && ({row_reg, col_reg}<12'b011101010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011101010100) && ({row_reg, col_reg}<12'b011101010110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011101010110) && ({row_reg, col_reg}<12'b011101011000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011101011000) && ({row_reg, col_reg}<12'b011110010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011110010010) && ({row_reg, col_reg}<12'b011110010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011110010100) && ({row_reg, col_reg}<12'b011110011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011110011000) && ({row_reg, col_reg}<12'b011110011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011110011010) && ({row_reg, col_reg}<12'b011111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011111010010) && ({row_reg, col_reg}<12'b011111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011111010100) && ({row_reg, col_reg}<12'b011111011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011111011000) && ({row_reg, col_reg}<12'b011111011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011111011010) && ({row_reg, col_reg}<12'b100000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000010010) && ({row_reg, col_reg}<12'b100000011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100000011010) && ({row_reg, col_reg}<12'b100001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100001010010) && ({row_reg, col_reg}<12'b100001011010)) color_data = 12'b111111111111;




		if(({row_reg, col_reg}>=12'b100001011010) && ({row_reg, col_reg}<=12'b100100111011)) color_data = 12'b000000000000;
	end
endmodule