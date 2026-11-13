module dino2_rom
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

		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000001010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000001010110) && ({row_reg, col_reg}<12'b000001101010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000001101010) && ({row_reg, col_reg}<12'b000010010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000010010110) && ({row_reg, col_reg}<12'b000010101010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000010101010) && ({row_reg, col_reg}<12'b000011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000011010100) && ({row_reg, col_reg}<12'b000011011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000011011000) && ({row_reg, col_reg}<12'b000011101000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000011101000) && ({row_reg, col_reg}<12'b000011101010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000011101010) && ({row_reg, col_reg}<12'b000100010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000100010100) && ({row_reg, col_reg}<12'b000100011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000100011000) && ({row_reg, col_reg}<12'b000100101000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000100101000) && ({row_reg, col_reg}<12'b000100101010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000100101010) && ({row_reg, col_reg}<12'b000101010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000101010100) && ({row_reg, col_reg}<12'b000101010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000101010110) && ({row_reg, col_reg}<12'b000101101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b000101101010) && ({row_reg, col_reg}<12'b000110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110000000) && ({row_reg, col_reg}<12'b000110010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110010100) && ({row_reg, col_reg}<12'b000110010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110010110) && ({row_reg, col_reg}<12'b000110011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000110011010) && ({row_reg, col_reg}<12'b000110011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110011100) && ({row_reg, col_reg}<12'b000110101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b000110101010) && ({row_reg, col_reg}<12'b000111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111000000) && ({row_reg, col_reg}<12'b000111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000111010100) && ({row_reg, col_reg}<12'b000111010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111010110) && ({row_reg, col_reg}<12'b000111011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000111011010) && ({row_reg, col_reg}<12'b000111011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111011100) && ({row_reg, col_reg}<12'b000111101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b000111101010) && ({row_reg, col_reg}<12'b001000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000000000) && ({row_reg, col_reg}<12'b001000010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000010100) && ({row_reg, col_reg}<12'b001000010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000010110) && ({row_reg, col_reg}<12'b001000101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001000101010) && ({row_reg, col_reg}<12'b001001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001000000) && ({row_reg, col_reg}<12'b001001010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001010100) && ({row_reg, col_reg}<12'b001001010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001010110) && ({row_reg, col_reg}<12'b001001101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001001101010) && ({row_reg, col_reg}<12'b001010000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010000000) && ({row_reg, col_reg}<12'b001010010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010010100) && ({row_reg, col_reg}<12'b001010010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010010110) && ({row_reg, col_reg}<12'b001010101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001010101010) && ({row_reg, col_reg}<12'b001011000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011000000) && ({row_reg, col_reg}<12'b001011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011010100) && ({row_reg, col_reg}<12'b001011010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011010110) && ({row_reg, col_reg}<12'b001011101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001011101010) && ({row_reg, col_reg}<12'b001100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001100000000) && ({row_reg, col_reg}<12'b001100010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100010100) && ({row_reg, col_reg}<12'b001100010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001100010110) && ({row_reg, col_reg}<12'b001100101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001100101010) && ({row_reg, col_reg}<12'b001101000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101000000) && ({row_reg, col_reg}<12'b001101010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101010100) && ({row_reg, col_reg}<12'b001101010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101010110) && ({row_reg, col_reg}<12'b001101101010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001101101010) && ({row_reg, col_reg}<12'b001110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110000000) && ({row_reg, col_reg}<12'b001110010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110010100) && ({row_reg, col_reg}<12'b001110010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110010110) && ({row_reg, col_reg}<12'b001110100000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111000000) && ({row_reg, col_reg}<12'b001111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111010100) && ({row_reg, col_reg}<12'b001111010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111010110) && ({row_reg, col_reg}<12'b001111100000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001111100000) && ({row_reg, col_reg}<12'b010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000000000) && ({row_reg, col_reg}<12'b010000000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000000010) && ({row_reg, col_reg}<12'b010000000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000000110) && ({row_reg, col_reg}<12'b010000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000010010) && ({row_reg, col_reg}<12'b010000010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000010110) && ({row_reg, col_reg}<12'b010000100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000100110) && ({row_reg, col_reg}<12'b010000101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010000101000) && ({row_reg, col_reg}<12'b010001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001000010) && ({row_reg, col_reg}<12'b010001000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010001000110) && ({row_reg, col_reg}<12'b010001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001010010) && ({row_reg, col_reg}<12'b010001010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010001010110) && ({row_reg, col_reg}<12'b010001100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010001100110) && ({row_reg, col_reg}<12'b010001101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010001101000) && ({row_reg, col_reg}<12'b010010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010000000) && ({row_reg, col_reg}<12'b010010000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010000010) && ({row_reg, col_reg}<12'b010010000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010010000100) && ({row_reg, col_reg}<12'b010010000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010000110) && ({row_reg, col_reg}<12'b010010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010001111) && ({row_reg, col_reg}<12'b010010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010010100) && ({row_reg, col_reg}<12'b010010011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010010011110) && ({row_reg, col_reg}<12'b010010101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010010101000) && ({row_reg, col_reg}<12'b010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011000000) && ({row_reg, col_reg}<12'b010011000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011000010) && ({row_reg, col_reg}<12'b010011000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010011000100) && ({row_reg, col_reg}<12'b010011000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011000110) && ({row_reg, col_reg}<12'b010011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011001111) && ({row_reg, col_reg}<12'b010011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011010100) && ({row_reg, col_reg}<12'b010011011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010011011110) && ({row_reg, col_reg}<12'b010011101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010011101000) && ({row_reg, col_reg}<12'b010100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100000000) && ({row_reg, col_reg}<12'b010100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100000010) && ({row_reg, col_reg}<12'b010100000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100000100) && ({row_reg, col_reg}<12'b010100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100000110) && ({row_reg, col_reg}<12'b010100001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100001100) && ({row_reg, col_reg}<12'b010100010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100010001) && ({row_reg, col_reg}<12'b010100011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100011110) && ({row_reg, col_reg}<12'b010100100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010100100100) && ({row_reg, col_reg}<12'b010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101000000) && ({row_reg, col_reg}<12'b010101000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101000010) && ({row_reg, col_reg}<12'b010101000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101000100) && ({row_reg, col_reg}<12'b010101000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101000110) && ({row_reg, col_reg}<12'b010101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101001100) && ({row_reg, col_reg}<12'b010101010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101010001) && ({row_reg, col_reg}<12'b010101011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101011110) && ({row_reg, col_reg}<12'b010101100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010101100100) && ({row_reg, col_reg}<12'b010110000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110000000) && ({row_reg, col_reg}<12'b010110000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110000010) && ({row_reg, col_reg}<12'b010110000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110000110) && ({row_reg, col_reg}<12'b010110001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110001110) && ({row_reg, col_reg}<12'b010110100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110100010) && ({row_reg, col_reg}<12'b010110100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010110100100) && ({row_reg, col_reg}<12'b010111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111000000) && ({row_reg, col_reg}<12'b010111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111000010) && ({row_reg, col_reg}<12'b010111000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111000110) && ({row_reg, col_reg}<12'b010111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111001110) && ({row_reg, col_reg}<12'b010111100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111100010) && ({row_reg, col_reg}<12'b010111100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010111100100) && ({row_reg, col_reg}<12'b011000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000000000) && ({row_reg, col_reg}<12'b011000000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000000010) && ({row_reg, col_reg}<12'b011000001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000001000) && ({row_reg, col_reg}<12'b011000001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000001100) && ({row_reg, col_reg}<12'b011000011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000011110) && ({row_reg, col_reg}<12'b011000100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000100000) && ({row_reg, col_reg}<12'b011000100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000100010) && ({row_reg, col_reg}<12'b011000100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011000100100) && ({row_reg, col_reg}<12'b011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001000000) && ({row_reg, col_reg}<12'b011001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001000010) && ({row_reg, col_reg}<12'b011001001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001001000) && ({row_reg, col_reg}<12'b011001001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001001100) && ({row_reg, col_reg}<12'b011001011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001011110) && ({row_reg, col_reg}<12'b011001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001100000) && ({row_reg, col_reg}<12'b011001100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001100010) && ({row_reg, col_reg}<12'b011001100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011001100100) && ({row_reg, col_reg}<12'b011010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010000000) && ({row_reg, col_reg}<12'b011010000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010000010) && ({row_reg, col_reg}<12'b011010011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010011110) && ({row_reg, col_reg}<12'b011010100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011010100100) && ({row_reg, col_reg}<12'b011011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011000000) && ({row_reg, col_reg}<12'b011011000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011000010) && ({row_reg, col_reg}<12'b011011011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011011011110) && ({row_reg, col_reg}<12'b011011100100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011011100100) && ({row_reg, col_reg}<12'b011100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100000000) && ({row_reg, col_reg}<12'b011100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011100000010) && ({row_reg, col_reg}<12'b011100011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100011110) && ({row_reg, col_reg}<12'b011100100000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011100100000) && ({row_reg, col_reg}<12'b011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101000000) && ({row_reg, col_reg}<12'b011101000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011101000010) && ({row_reg, col_reg}<12'b011101011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011101011110) && ({row_reg, col_reg}<12'b011101100000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011101100000) && ({row_reg, col_reg}<12'b011110000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011110000010) && ({row_reg, col_reg}<12'b011110000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011110000100) && ({row_reg, col_reg}<12'b011110011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011110011110) && ({row_reg, col_reg}<12'b011110100000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011110100000) && ({row_reg, col_reg}<12'b011111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011111000010) && ({row_reg, col_reg}<12'b011111000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011111000100) && ({row_reg, col_reg}<12'b011111011100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011111011100) && ({row_reg, col_reg}<12'b011111011110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011111011110) && ({row_reg, col_reg}<12'b100000000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000000100) && ({row_reg, col_reg}<12'b100000000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100000000110) && ({row_reg, col_reg}<12'b100000011100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000011100) && ({row_reg, col_reg}<12'b100000011110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100000011110) && ({row_reg, col_reg}<12'b100001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100001000100) && ({row_reg, col_reg}<12'b100001000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100001000110) && ({row_reg, col_reg}<12'b100001011100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100001011100) && ({row_reg, col_reg}<12'b100001011110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100001011110) && ({row_reg, col_reg}<12'b100010000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100010000110) && ({row_reg, col_reg}<12'b100010001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100010001000) && ({row_reg, col_reg}<12'b100010011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100010011010) && ({row_reg, col_reg}<12'b100010011110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100010011110) && ({row_reg, col_reg}<12'b100011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100011000110) && ({row_reg, col_reg}<12'b100011001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100011001000) && ({row_reg, col_reg}<12'b100011011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100011011010) && ({row_reg, col_reg}<12'b100011011110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100011011110) && ({row_reg, col_reg}<12'b100100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100001000) && ({row_reg, col_reg}<12'b100100001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100100001010) && ({row_reg, col_reg}<12'b100100011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100011000) && ({row_reg, col_reg}<12'b100100011100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100100011100) && ({row_reg, col_reg}<12'b100101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100101001000) && ({row_reg, col_reg}<12'b100101001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100101001010) && ({row_reg, col_reg}<12'b100101011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100101011000) && ({row_reg, col_reg}<12'b100101011100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100101011100) && ({row_reg, col_reg}<12'b100110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100110001000) && ({row_reg, col_reg}<12'b100110001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100110001100) && ({row_reg, col_reg}<12'b100110010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100110010010) && ({row_reg, col_reg}<12'b100110010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100110010110) && ({row_reg, col_reg}<12'b100110011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100110011011) && ({row_reg, col_reg}<12'b100110011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100110011111) && ({row_reg, col_reg}<12'b100111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100111001000) && ({row_reg, col_reg}<12'b100111001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100111001100) && ({row_reg, col_reg}<12'b100111010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100111010010) && ({row_reg, col_reg}<12'b100111010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100111010110) && ({row_reg, col_reg}<12'b100111011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100111011011) && ({row_reg, col_reg}<12'b100111011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100111011111) && ({row_reg, col_reg}<12'b101000001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101000001010) && ({row_reg, col_reg}<12'b101000001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101000001100) && ({row_reg, col_reg}<12'b101000010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101000010000) && ({row_reg, col_reg}<12'b101000010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101000010010) && ({row_reg, col_reg}<12'b101000010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101000010100) && ({row_reg, col_reg}<12'b101000011101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101000011101) && ({row_reg, col_reg}<12'b101001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101001001010) && ({row_reg, col_reg}<12'b101001001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101001001100) && ({row_reg, col_reg}<12'b101001010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101001010000) && ({row_reg, col_reg}<12'b101001010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101001010010) && ({row_reg, col_reg}<12'b101001010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101001010100) && ({row_reg, col_reg}<12'b101001011101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101001011101) && ({row_reg, col_reg}<12'b101010001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101010001010) && ({row_reg, col_reg}<12'b101010001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101010001100) && ({row_reg, col_reg}<12'b101010001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101010001110) && ({row_reg, col_reg}<12'b101010010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101010010000) && ({row_reg, col_reg}<12'b101011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101011001010) && ({row_reg, col_reg}<12'b101011001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101011001100) && ({row_reg, col_reg}<12'b101011001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101011001110) && ({row_reg, col_reg}<12'b101011010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101011010000) && ({row_reg, col_reg}<12'b101100001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101100001010) && ({row_reg, col_reg}<12'b101100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101100001100) && ({row_reg, col_reg}<12'b101100010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101100010000) && ({row_reg, col_reg}<12'b101100010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101100010010) && ({row_reg, col_reg}<12'b101101001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101101001010) && ({row_reg, col_reg}<12'b101101001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b101101001100) && ({row_reg, col_reg}<12'b101101010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101101010000) && ({row_reg, col_reg}<12'b101101010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101101010010) && ({row_reg, col_reg}<12'b101110001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101110001010) && ({row_reg, col_reg}<12'b101110010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101110010010) && ({row_reg, col_reg}<12'b101111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b101111001010) && ({row_reg, col_reg}<12'b101111010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101111010010) && ({row_reg, col_reg}<=12'b101111101011)) color_data = 12'b000000000000;
	end
endmodule