module dino1_rom
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




		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000100011110) && ({row_reg, col_reg}<12'b000100110010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000100110010) && ({row_reg, col_reg}<12'b000101011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000101011100) && ({row_reg, col_reg}<12'b000101100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000101100000) && ({row_reg, col_reg}<12'b000101110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000101110000) && ({row_reg, col_reg}<12'b000101110010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000101110010) && ({row_reg, col_reg}<12'b000110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110011100) && ({row_reg, col_reg}<12'b000110100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110100000) && ({row_reg, col_reg}<12'b000110110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000110110000) && ({row_reg, col_reg}<12'b000110110010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000110110010) && ({row_reg, col_reg}<12'b000111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000111011100) && ({row_reg, col_reg}<12'b000111011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111011110) && ({row_reg, col_reg}<12'b000111110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000111110010) && ({row_reg, col_reg}<12'b000111110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000111110100) && ({row_reg, col_reg}<12'b001000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000011100) && ({row_reg, col_reg}<12'b001000011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000011110) && ({row_reg, col_reg}<12'b001000100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000100010) && ({row_reg, col_reg}<12'b001000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000100100) && ({row_reg, col_reg}<12'b001000110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000110010) && ({row_reg, col_reg}<12'b001000110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001000110100) && ({row_reg, col_reg}<12'b001001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001011100) && ({row_reg, col_reg}<12'b001001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001011110) && ({row_reg, col_reg}<12'b001001100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001100010) && ({row_reg, col_reg}<12'b001001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001100100) && ({row_reg, col_reg}<12'b001001110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001110010) && ({row_reg, col_reg}<12'b001001110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001001110100) && ({row_reg, col_reg}<12'b001010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010011100) && ({row_reg, col_reg}<12'b001010011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010011110) && ({row_reg, col_reg}<12'b001010110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001010110010) && ({row_reg, col_reg}<12'b001010110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001010110100) && ({row_reg, col_reg}<12'b001011011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011011100) && ({row_reg, col_reg}<12'b001011011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011011110) && ({row_reg, col_reg}<12'b001011110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001011110010) && ({row_reg, col_reg}<12'b001011110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001011110100) && ({row_reg, col_reg}<12'b001100011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011100) && ({row_reg, col_reg}<12'b001100011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001100011110) && ({row_reg, col_reg}<12'b001100110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001100110010) && ({row_reg, col_reg}<12'b001100110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001100110100) && ({row_reg, col_reg}<12'b001101011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101011100) && ({row_reg, col_reg}<12'b001101011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101011110) && ({row_reg, col_reg}<12'b001101110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001101110010) && ({row_reg, col_reg}<12'b001101110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101110100) && ({row_reg, col_reg}<12'b001101110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b001101110111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001110000000) && ({row_reg, col_reg}<12'b001110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110011100) && ({row_reg, col_reg}<12'b001110011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110011110) && ({row_reg, col_reg}<12'b001110110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001110110010) && ({row_reg, col_reg}<12'b001110110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110110100) && ({row_reg, col_reg}<12'b001110110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=12'b001110110110) && ({row_reg, col_reg}<12'b001111000000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001111000000) && ({row_reg, col_reg}<12'b001111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111011100) && ({row_reg, col_reg}<12'b001111011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111011110) && ({row_reg, col_reg}<12'b001111110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001111110010) && ({row_reg, col_reg}<12'b001111110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001111110100) && ({row_reg, col_reg}<12'b010000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000011100) && ({row_reg, col_reg}<12'b010000011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000011110) && ({row_reg, col_reg}<12'b010000101000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000101000) && ({row_reg, col_reg}<12'b010000110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010000110100) && ({row_reg, col_reg}<12'b010001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001011100) && ({row_reg, col_reg}<12'b010001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010001011110) && ({row_reg, col_reg}<12'b010001101000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010001101000) && ({row_reg, col_reg}<12'b010001110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010001110100) && ({row_reg, col_reg}<12'b010010001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010001010) && ({row_reg, col_reg}<12'b010010001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010001110) && ({row_reg, col_reg}<12'b010010011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010011010) && ({row_reg, col_reg}<12'b010010011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010011110) && ({row_reg, col_reg}<12'b010010101110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010010101110) && ({row_reg, col_reg}<12'b010010110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010010110000) && ({row_reg, col_reg}<12'b010011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011001010) && ({row_reg, col_reg}<12'b010011001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011001110) && ({row_reg, col_reg}<12'b010011011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011011010) && ({row_reg, col_reg}<12'b010011011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011011110) && ({row_reg, col_reg}<12'b010011101110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010011101110) && ({row_reg, col_reg}<12'b010011110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010011110000) && ({row_reg, col_reg}<12'b010100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100001000) && ({row_reg, col_reg}<12'b010100001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100001010) && ({row_reg, col_reg}<12'b010100001100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100001100) && ({row_reg, col_reg}<12'b010100001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100001110) && ({row_reg, col_reg}<12'b010100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100010111) && ({row_reg, col_reg}<12'b010100011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100011100) && ({row_reg, col_reg}<12'b010100100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100100110) && ({row_reg, col_reg}<12'b010100110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010100110000) && ({row_reg, col_reg}<12'b010101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101001000) && ({row_reg, col_reg}<12'b010101001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101001010) && ({row_reg, col_reg}<12'b010101001100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101001100) && ({row_reg, col_reg}<12'b010101001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101001110) && ({row_reg, col_reg}<12'b010101010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101010111) && ({row_reg, col_reg}<12'b010101011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101011100) && ({row_reg, col_reg}<12'b010101100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101100110) && ({row_reg, col_reg}<12'b010101110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010101110000) && ({row_reg, col_reg}<12'b010110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110001000) && ({row_reg, col_reg}<12'b010110001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110001010) && ({row_reg, col_reg}<12'b010110001100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110001100) && ({row_reg, col_reg}<12'b010110001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110001110) && ({row_reg, col_reg}<12'b010110010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110010100) && ({row_reg, col_reg}<12'b010110011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110011001) && ({row_reg, col_reg}<12'b010110100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110100110) && ({row_reg, col_reg}<12'b010110101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010110101100) && ({row_reg, col_reg}<12'b010111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111001000) && ({row_reg, col_reg}<12'b010111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111001010) && ({row_reg, col_reg}<12'b010111001100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111001100) && ({row_reg, col_reg}<12'b010111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111001110) && ({row_reg, col_reg}<12'b010111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111010100) && ({row_reg, col_reg}<12'b010111011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111011001) && ({row_reg, col_reg}<12'b010111100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111100110) && ({row_reg, col_reg}<12'b010111101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010111101100) && ({row_reg, col_reg}<12'b011000001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000001000) && ({row_reg, col_reg}<12'b011000001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000001010) && ({row_reg, col_reg}<12'b011000001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000001110) && ({row_reg, col_reg}<12'b011000010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000010110) && ({row_reg, col_reg}<12'b011000101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000101010) && ({row_reg, col_reg}<12'b011000101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011000101100) && ({row_reg, col_reg}<12'b011001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001001000) && ({row_reg, col_reg}<12'b011001001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001001010) && ({row_reg, col_reg}<12'b011001001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001001110) && ({row_reg, col_reg}<12'b011001010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001010110) && ({row_reg, col_reg}<12'b011001101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001101010) && ({row_reg, col_reg}<12'b011001101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011001101100) && ({row_reg, col_reg}<12'b011010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010001000) && ({row_reg, col_reg}<12'b011010001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010001010) && ({row_reg, col_reg}<12'b011010010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010010000) && ({row_reg, col_reg}<12'b011010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010010100) && ({row_reg, col_reg}<12'b011010100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010100110) && ({row_reg, col_reg}<12'b011010101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010101000) && ({row_reg, col_reg}<12'b011010101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010101010) && ({row_reg, col_reg}<12'b011010101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011010101100) && ({row_reg, col_reg}<12'b011011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011001000) && ({row_reg, col_reg}<12'b011011001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011001010) && ({row_reg, col_reg}<12'b011011010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011011010000) && ({row_reg, col_reg}<12'b011011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011010100) && ({row_reg, col_reg}<12'b011011100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011011100110) && ({row_reg, col_reg}<12'b011011101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011101000) && ({row_reg, col_reg}<12'b011011101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011011101010) && ({row_reg, col_reg}<12'b011011101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011011101100) && ({row_reg, col_reg}<12'b011100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100001000) && ({row_reg, col_reg}<12'b011100001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011100001010) && ({row_reg, col_reg}<12'b011100100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100100110) && ({row_reg, col_reg}<12'b011100101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011100101100) && ({row_reg, col_reg}<12'b011101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101001000) && ({row_reg, col_reg}<12'b011101001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011101001010) && ({row_reg, col_reg}<12'b011101100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011101100110) && ({row_reg, col_reg}<12'b011101101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011101101100) && ({row_reg, col_reg}<12'b011110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011110001000) && ({row_reg, col_reg}<12'b011110001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011110001010) && ({row_reg, col_reg}<12'b011110100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011110100110) && ({row_reg, col_reg}<12'b011110101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011110101000) && ({row_reg, col_reg}<12'b011111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011111001000) && ({row_reg, col_reg}<12'b011111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011111001010) && ({row_reg, col_reg}<12'b011111100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011111100110) && ({row_reg, col_reg}<12'b011111101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011111101000) && ({row_reg, col_reg}<12'b100000001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000001010) && ({row_reg, col_reg}<12'b100000001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100000001100) && ({row_reg, col_reg}<12'b100000100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000100110) && ({row_reg, col_reg}<12'b100000101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100000101000) && ({row_reg, col_reg}<12'b100001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100001001010) && ({row_reg, col_reg}<12'b100001001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100001001100) && ({row_reg, col_reg}<12'b100001100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100001100100) && ({row_reg, col_reg}<12'b100001100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100001100110) && ({row_reg, col_reg}<12'b100010001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100010001100) && ({row_reg, col_reg}<12'b100010001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100010001110) && ({row_reg, col_reg}<12'b100010100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100010100100) && ({row_reg, col_reg}<12'b100010100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100010100110) && ({row_reg, col_reg}<12'b100011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100011001100) && ({row_reg, col_reg}<12'b100011001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100011001110) && ({row_reg, col_reg}<12'b100011100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100011100100) && ({row_reg, col_reg}<12'b100011100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100011100110) && ({row_reg, col_reg}<12'b100100001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100001110) && ({row_reg, col_reg}<12'b100100010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100100010000) && ({row_reg, col_reg}<12'b100100100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100100010) && ({row_reg, col_reg}<12'b100100100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100100100110) && ({row_reg, col_reg}<12'b100101001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100101001110) && ({row_reg, col_reg}<12'b100101010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100101010000) && ({row_reg, col_reg}<12'b100101100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100101100010) && ({row_reg, col_reg}<12'b100101100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100101100110) && ({row_reg, col_reg}<12'b100110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100110010000) && ({row_reg, col_reg}<12'b100110010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100110010010) && ({row_reg, col_reg}<12'b100110100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100110100000) && ({row_reg, col_reg}<12'b100110100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100110100100) && ({row_reg, col_reg}<12'b100111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100111010000) && ({row_reg, col_reg}<12'b100111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100111010010) && ({row_reg, col_reg}<12'b100111100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100111100000) && ({row_reg, col_reg}<12'b100111100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100111100100) && ({row_reg, col_reg}<12'b101000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101000010000) && ({row_reg, col_reg}<12'b101000010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101000010100) && ({row_reg, col_reg}<12'b101000011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101000011010) && ({row_reg, col_reg}<12'b101000011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101000011100) && ({row_reg, col_reg}<12'b101000100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101000100000) && ({row_reg, col_reg}<12'b101000100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101000100100) && ({row_reg, col_reg}<12'b101001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101001001000) && ({row_reg, col_reg}<12'b101001010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101001010000) && ({row_reg, col_reg}<12'b101001010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101001010100) && ({row_reg, col_reg}<12'b101001011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101001011010) && ({row_reg, col_reg}<12'b101001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101001011100) && ({row_reg, col_reg}<12'b101001100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101001100000) && ({row_reg, col_reg}<12'b101001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101001100100) && ({row_reg, col_reg}<12'b101001110100)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b101001110100) && ({row_reg, col_reg}<12'b101010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101010010010) && ({row_reg, col_reg}<12'b101010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101010010100) && ({row_reg, col_reg}<12'b101010011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101010011000) && ({row_reg, col_reg}<12'b101010011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101010011010) && ({row_reg, col_reg}<12'b101010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101010011100) && ({row_reg, col_reg}<12'b101010011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101010011110) && ({row_reg, col_reg}<12'b101010100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101010100000) && ({row_reg, col_reg}<12'b101010100010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101010100010) && ({row_reg, col_reg}<12'b101011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101011010010) && ({row_reg, col_reg}<12'b101011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101011010100) && ({row_reg, col_reg}<12'b101011011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101011011000) && ({row_reg, col_reg}<12'b101011011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101011011010) && ({row_reg, col_reg}<12'b101011011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101011011100) && ({row_reg, col_reg}<12'b101011011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101011011110) && ({row_reg, col_reg}<12'b101011100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101011100000) && ({row_reg, col_reg}<12'b101011100010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101011100010) && ({row_reg, col_reg}<12'b101100010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101100010010) && ({row_reg, col_reg}<12'b101100010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101100010100) && ({row_reg, col_reg}<12'b101100010110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101100010110) && ({row_reg, col_reg}<12'b101100011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101100011000) && ({row_reg, col_reg}<12'b101100011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101100011100) && ({row_reg, col_reg}<12'b101100011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101100011110) && ({row_reg, col_reg}<12'b101100100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101100100000) && ({row_reg, col_reg}<12'b101100100010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101100100010) && ({row_reg, col_reg}<12'b101101001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101101001110) && ({row_reg, col_reg}<12'b101101010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101101010010) && ({row_reg, col_reg}<12'b101101010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101101010100) && ({row_reg, col_reg}<12'b101101010110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101101010110) && ({row_reg, col_reg}<12'b101101011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101101011000) && ({row_reg, col_reg}<12'b101101011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101101011100) && ({row_reg, col_reg}<12'b101101011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101101011110) && ({row_reg, col_reg}<12'b101101100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101101100000) && ({row_reg, col_reg}<12'b101101100010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101101100010) && ({row_reg, col_reg}<12'b101110010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101110010010) && ({row_reg, col_reg}<12'b101110010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101110010100) && ({row_reg, col_reg}<12'b101110011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101110011000) && ({row_reg, col_reg}<12'b101110011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101110011010) && ({row_reg, col_reg}<12'b101110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101110011100) && ({row_reg, col_reg}<12'b101110011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101110011110) && ({row_reg, col_reg}<12'b101110100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101110100010) && ({row_reg, col_reg}<12'b101110100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101110100100) && ({row_reg, col_reg}<12'b101111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101111010010) && ({row_reg, col_reg}<12'b101111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101111010100) && ({row_reg, col_reg}<12'b101111011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101111011000) && ({row_reg, col_reg}<12'b101111011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101111011010) && ({row_reg, col_reg}<12'b101111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101111011100) && ({row_reg, col_reg}<12'b101111011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101111011110) && ({row_reg, col_reg}<12'b101111100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101111100010) && ({row_reg, col_reg}<12'b101111100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101111100100) && ({row_reg, col_reg}<12'b101111110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101111110001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b101111110010) && ({row_reg, col_reg}<12'b110000001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b110000001000) && ({row_reg, col_reg}<12'b110000001100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b110000001100) && ({row_reg, col_reg}<12'b110000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b110000010010) && ({row_reg, col_reg}<12'b110000011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b110000011010) && ({row_reg, col_reg}<12'b110000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b110000011100) && ({row_reg, col_reg}<12'b110000100100)) color_data = 12'b111111111111;



		if(({row_reg, col_reg}>=12'b110000100100) && ({row_reg, col_reg}<=12'b110010110111)) color_data = 12'b000000000000;
	end
endmodule