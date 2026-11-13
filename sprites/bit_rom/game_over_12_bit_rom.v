module game_over_rom
	(
		input wire clk,
		input wire [3:0] row,
		input wire [7:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [3:0] row_reg;
	reg [7:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin

		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000100000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000100000011) && ({row_reg, col_reg}<12'b000100001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000100001011) && ({row_reg, col_reg}<12'b000100011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000100011011) && ({row_reg, col_reg}<12'b000100100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000100100000) && ({row_reg, col_reg}<12'b000100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000100110000) && ({row_reg, col_reg}<12'b000100110011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000100110011) && ({row_reg, col_reg}<12'b000100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000100111000) && ({row_reg, col_reg}<12'b000100111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000100111011) && ({row_reg, col_reg}<12'b000101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000101001000) && ({row_reg, col_reg}<12'b000101010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000101010011) && ({row_reg, col_reg}<12'b000101101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000101101110) && ({row_reg, col_reg}<12'b000101110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000101110101) && ({row_reg, col_reg}<12'b000110000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110000100) && ({row_reg, col_reg}<12'b000110000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000110000111) && ({row_reg, col_reg}<12'b000110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110001100) && ({row_reg, col_reg}<12'b000110001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000110001111) && ({row_reg, col_reg}<12'b000110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110011100) && ({row_reg, col_reg}<12'b000110100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000110100111) && ({row_reg, col_reg}<12'b000110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110110100) && ({row_reg, col_reg}<12'b000110111101)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b000110111101) && ({row_reg, col_reg}<12'b001000000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000000011) && ({row_reg, col_reg}<12'b001000001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000001011) && ({row_reg, col_reg}<12'b001000011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000011011) && ({row_reg, col_reg}<12'b001000100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000100000) && ({row_reg, col_reg}<12'b001000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000110000) && ({row_reg, col_reg}<12'b001000110011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000110011) && ({row_reg, col_reg}<12'b001000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000111000) && ({row_reg, col_reg}<12'b001000111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000111011) && ({row_reg, col_reg}<12'b001001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001001000) && ({row_reg, col_reg}<12'b001001010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001010011) && ({row_reg, col_reg}<12'b001001101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001101110) && ({row_reg, col_reg}<12'b001001110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001110101) && ({row_reg, col_reg}<12'b001010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010000100) && ({row_reg, col_reg}<12'b001010000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001010000111) && ({row_reg, col_reg}<12'b001010001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010001100) && ({row_reg, col_reg}<12'b001010001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001010001111) && ({row_reg, col_reg}<12'b001010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010011100) && ({row_reg, col_reg}<12'b001010100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001010100111) && ({row_reg, col_reg}<12'b001010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010110100) && ({row_reg, col_reg}<12'b001010111101)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001010111101) && ({row_reg, col_reg}<12'b001100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100000010) && ({row_reg, col_reg}<12'b001100000101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001100000101) && ({row_reg, col_reg}<12'b001100011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011010) && ({row_reg, col_reg}<12'b001100011101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011110) && ({row_reg, col_reg}<12'b001100100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001100100001) && ({row_reg, col_reg}<12'b001100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100110000) && ({row_reg, col_reg}<12'b001100110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100110110) && ({row_reg, col_reg}<12'b001100111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001100111011) && ({row_reg, col_reg}<12'b001101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101001000) && ({row_reg, col_reg}<12'b001101001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001101001011) && ({row_reg, col_reg}<12'b001101101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101101100) && ({row_reg, col_reg}<12'b001101101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001101101111) && ({row_reg, col_reg}<12'b001101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101110100) && ({row_reg, col_reg}<12'b001101110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001101110111) && ({row_reg, col_reg}<12'b001110000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110000100) && ({row_reg, col_reg}<12'b001110000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001110000111) && ({row_reg, col_reg}<12'b001110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110001100) && ({row_reg, col_reg}<12'b001110001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001110001111) && ({row_reg, col_reg}<12'b001110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110011100) && ({row_reg, col_reg}<12'b001110011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001110011111) && ({row_reg, col_reg}<12'b001110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110110100) && ({row_reg, col_reg}<12'b001110110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001110110111) && ({row_reg, col_reg}<12'b001110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110111100) && ({row_reg, col_reg}<12'b001110111111)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==12'b001110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000000000) && ({row_reg, col_reg}<12'b010000000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000000011) && ({row_reg, col_reg}<12'b010000011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000011000) && ({row_reg, col_reg}<12'b010000011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000011011) && ({row_reg, col_reg}<12'b010000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000100000) && ({row_reg, col_reg}<12'b010000100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000100011) && ({row_reg, col_reg}<12'b010000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000110000) && ({row_reg, col_reg}<12'b010000111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000111011) && ({row_reg, col_reg}<12'b010001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001001000) && ({row_reg, col_reg}<12'b010001001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010001001011) && ({row_reg, col_reg}<12'b010001101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001101100) && ({row_reg, col_reg}<12'b010001101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010001101111) && ({row_reg, col_reg}<12'b010001110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001110100) && ({row_reg, col_reg}<12'b010001110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010001110111) && ({row_reg, col_reg}<12'b010010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010000100) && ({row_reg, col_reg}<12'b010010000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010010000111) && ({row_reg, col_reg}<12'b010010001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010001100) && ({row_reg, col_reg}<12'b010010001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010010001111) && ({row_reg, col_reg}<12'b010010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010011100) && ({row_reg, col_reg}<12'b010010011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010010011111) && ({row_reg, col_reg}<12'b010010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010110100) && ({row_reg, col_reg}<12'b010010110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010010110111) && ({row_reg, col_reg}<12'b010010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010111100) && ({row_reg, col_reg}<12'b010010111111)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==12'b010010111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100000000) && ({row_reg, col_reg}<12'b010100000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100000011) && ({row_reg, col_reg}<12'b010100011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100011000) && ({row_reg, col_reg}<12'b010100011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100011011) && ({row_reg, col_reg}<12'b010100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100100000) && ({row_reg, col_reg}<12'b010100100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100100011) && ({row_reg, col_reg}<12'b010100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100110000) && ({row_reg, col_reg}<12'b010100111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100111011) && ({row_reg, col_reg}<12'b010101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101001000) && ({row_reg, col_reg}<12'b010101001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101001011) && ({row_reg, col_reg}<12'b010101101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101101100) && ({row_reg, col_reg}<12'b010101101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101101111) && ({row_reg, col_reg}<12'b010101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101110100) && ({row_reg, col_reg}<12'b010101110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101110111) && ({row_reg, col_reg}<12'b010110000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110000100) && ({row_reg, col_reg}<12'b010110000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110000111) && ({row_reg, col_reg}<12'b010110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110001100) && ({row_reg, col_reg}<12'b010110001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110001111) && ({row_reg, col_reg}<12'b010110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110011100) && ({row_reg, col_reg}<12'b010110011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110011111) && ({row_reg, col_reg}<12'b010110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110110100) && ({row_reg, col_reg}<12'b010110110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110110111) && ({row_reg, col_reg}<12'b010110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110111100) && ({row_reg, col_reg}<12'b010110111111)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==12'b010110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000000000) && ({row_reg, col_reg}<12'b011000000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000000011) && ({row_reg, col_reg}<12'b011000000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000000110) && ({row_reg, col_reg}<12'b011000001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000001011) && ({row_reg, col_reg}<12'b011000011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000011000) && ({row_reg, col_reg}<12'b011000011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000011011) && ({row_reg, col_reg}<12'b011000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000100000) && ({row_reg, col_reg}<12'b011000100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000100011) && ({row_reg, col_reg}<12'b011000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000110000) && ({row_reg, col_reg}<12'b011000111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000111011) && ({row_reg, col_reg}<12'b011001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001001000) && ({row_reg, col_reg}<12'b011001010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001010001) && ({row_reg, col_reg}<12'b011001101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001101100) && ({row_reg, col_reg}<12'b011001101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001101111) && ({row_reg, col_reg}<12'b011001110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001110100) && ({row_reg, col_reg}<12'b011001110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001110111) && ({row_reg, col_reg}<12'b011010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010000100) && ({row_reg, col_reg}<12'b011010001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011010001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010001010) && ({row_reg, col_reg}<12'b011010001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010001111) && ({row_reg, col_reg}<12'b011010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010011100) && ({row_reg, col_reg}<12'b011010100101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010100101) && ({row_reg, col_reg}<12'b011010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010110100) && ({row_reg, col_reg}<12'b011010110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010110111) && ({row_reg, col_reg}<12'b011010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010111010) && ({row_reg, col_reg}<12'b011010111111)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==12'b011010111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100000000) && ({row_reg, col_reg}<12'b011100000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100000011) && ({row_reg, col_reg}<12'b011100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100001000) && ({row_reg, col_reg}<12'b011100001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100001011) && ({row_reg, col_reg}<12'b011100011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100011000) && ({row_reg, col_reg}<12'b011100100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100100011) && ({row_reg, col_reg}<12'b011100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100110000) && ({row_reg, col_reg}<12'b011100110011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100110011) && ({row_reg, col_reg}<12'b011100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011100110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100110110) && ({row_reg, col_reg}<12'b011100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100111000) && ({row_reg, col_reg}<12'b011100111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100111011) && ({row_reg, col_reg}<12'b011101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101001000) && ({row_reg, col_reg}<12'b011101001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011101001011) && ({row_reg, col_reg}<12'b011101101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101101100) && ({row_reg, col_reg}<12'b011101101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011101101111) && ({row_reg, col_reg}<12'b011101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101110100) && ({row_reg, col_reg}<12'b011101110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011101110111) && ({row_reg, col_reg}<12'b011110000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011110000110) && ({row_reg, col_reg}<12'b011110001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011110001101) && ({row_reg, col_reg}<12'b011110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011110011100) && ({row_reg, col_reg}<12'b011110011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011110011111) && ({row_reg, col_reg}<12'b011110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011110110100) && ({row_reg, col_reg}<12'b011110111100)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b011110111100) && ({row_reg, col_reg}<12'b100000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000000000) && ({row_reg, col_reg}<12'b100000000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000000011) && ({row_reg, col_reg}<12'b100000001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000001000) && ({row_reg, col_reg}<12'b100000001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000001011) && ({row_reg, col_reg}<12'b100000011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000011000) && ({row_reg, col_reg}<12'b100000100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000100011) && ({row_reg, col_reg}<12'b100000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000110000) && ({row_reg, col_reg}<12'b100000110011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000110011) && ({row_reg, col_reg}<12'b100000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100000110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000110110) && ({row_reg, col_reg}<12'b100000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000111000) && ({row_reg, col_reg}<12'b100000111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000111011) && ({row_reg, col_reg}<12'b100001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100001001000) && ({row_reg, col_reg}<12'b100001001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100001001011) && ({row_reg, col_reg}<12'b100001101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100001101100) && ({row_reg, col_reg}<12'b100001101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100001101111) && ({row_reg, col_reg}<12'b100001110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100001110100) && ({row_reg, col_reg}<12'b100001110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100001110111) && ({row_reg, col_reg}<12'b100010000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100010000110) && ({row_reg, col_reg}<12'b100010001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100010001101) && ({row_reg, col_reg}<12'b100010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100010011100) && ({row_reg, col_reg}<12'b100010011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100010011111) && ({row_reg, col_reg}<12'b100010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100010110100) && ({row_reg, col_reg}<12'b100010111100)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b100010111100) && ({row_reg, col_reg}<12'b100100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100000010) && ({row_reg, col_reg}<12'b100100000101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100000101) && ({row_reg, col_reg}<12'b100100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100001000) && ({row_reg, col_reg}<12'b100100001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100001011) && ({row_reg, col_reg}<12'b100100011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100011000) && ({row_reg, col_reg}<12'b100100011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100011011) && ({row_reg, col_reg}<12'b100100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100100000) && ({row_reg, col_reg}<12'b100100100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100100011) && ({row_reg, col_reg}<12'b100100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100110000) && ({row_reg, col_reg}<12'b100100110011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100110011) && ({row_reg, col_reg}<12'b100100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100111000) && ({row_reg, col_reg}<12'b100100111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100111011) && ({row_reg, col_reg}<12'b100101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100101001000) && ({row_reg, col_reg}<12'b100101001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100101001011) && ({row_reg, col_reg}<12'b100101101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100101101100) && ({row_reg, col_reg}<12'b100101101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100101101111) && ({row_reg, col_reg}<12'b100101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100101110100) && ({row_reg, col_reg}<12'b100101110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100101110111) && ({row_reg, col_reg}<12'b100110000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100110000111) && ({row_reg, col_reg}<12'b100110001100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100110001100) && ({row_reg, col_reg}<12'b100110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100110011100) && ({row_reg, col_reg}<12'b100110011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100110011111) && ({row_reg, col_reg}<12'b100110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100110110100) && ({row_reg, col_reg}<12'b100110110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100110110111) && ({row_reg, col_reg}<12'b100110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100110111001) && ({row_reg, col_reg}<12'b100110111101)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b100110111101) && ({row_reg, col_reg}<12'b101000000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101000000011) && ({row_reg, col_reg}<12'b101000001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101000001011) && ({row_reg, col_reg}<12'b101000011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101000011000) && ({row_reg, col_reg}<12'b101000011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101000011011) && ({row_reg, col_reg}<12'b101000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101000100000) && ({row_reg, col_reg}<12'b101000100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101000100011) && ({row_reg, col_reg}<12'b101000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101000110000) && ({row_reg, col_reg}<12'b101000110011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101000110011) && ({row_reg, col_reg}<12'b101000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101000111000) && ({row_reg, col_reg}<12'b101000111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101000111011) && ({row_reg, col_reg}<12'b101001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101001001000) && ({row_reg, col_reg}<12'b101001010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101001010011) && ({row_reg, col_reg}<12'b101001101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101001101110) && ({row_reg, col_reg}<12'b101001110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101001110101) && ({row_reg, col_reg}<12'b101010001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101010001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101010001010) && ({row_reg, col_reg}<12'b101010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101010011100) && ({row_reg, col_reg}<12'b101010100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101010100111) && ({row_reg, col_reg}<12'b101010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101010110100) && ({row_reg, col_reg}<12'b101010110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101010110111) && ({row_reg, col_reg}<12'b101010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101010111010) && ({row_reg, col_reg}<12'b101010111111)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b101010111111) && ({row_reg, col_reg}<12'b101100000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101100000011) && ({row_reg, col_reg}<12'b101100001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101100001011) && ({row_reg, col_reg}<12'b101100011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101100011000) && ({row_reg, col_reg}<12'b101100011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101100011011) && ({row_reg, col_reg}<12'b101100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101100100000) && ({row_reg, col_reg}<12'b101100100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101100100011) && ({row_reg, col_reg}<12'b101100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101100110000) && ({row_reg, col_reg}<12'b101100110011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101100110011) && ({row_reg, col_reg}<12'b101100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101100111000) && ({row_reg, col_reg}<12'b101100111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101100111011) && ({row_reg, col_reg}<12'b101101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101101001000) && ({row_reg, col_reg}<12'b101101010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101101010011) && ({row_reg, col_reg}<12'b101101101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101101101110) && ({row_reg, col_reg}<12'b101101110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101101110101) && ({row_reg, col_reg}<12'b101110001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101110001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101110001010) && ({row_reg, col_reg}<12'b101110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101110011100) && ({row_reg, col_reg}<12'b101110100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101110100111) && ({row_reg, col_reg}<12'b101110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101110110100) && ({row_reg, col_reg}<12'b101110110111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101110110111) && ({row_reg, col_reg}<12'b101110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101110111010) && ({row_reg, col_reg}<12'b101110111111)) color_data = 12'b010101010101;



		if(({row_reg, col_reg}>=12'b101110111111) && ({row_reg, col_reg}<=12'b110110111111)) color_data = 12'b000000000000;
	end
endmodule