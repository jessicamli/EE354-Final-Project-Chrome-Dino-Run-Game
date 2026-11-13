module hi_text_rom
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


		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000010000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000010000011) && ({row_reg, col_reg}<12'b000010001010)) color_data = 12'b001101100110;
		if(({row_reg, col_reg}>=12'b000010001010) && ({row_reg, col_reg}<12'b000010010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000010010111) && ({row_reg, col_reg}<12'b000010011111)) color_data = 12'b001101100110;
		if(({row_reg, col_reg}>=12'b000010011111) && ({row_reg, col_reg}<12'b000010100101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000010100101) && ({row_reg, col_reg}<12'b000010111101)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b000010111101) && ({row_reg, col_reg}<12'b000011000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000011000010) && ({row_reg, col_reg}<12'b000011001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b000011001010)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}>=12'b000011001011) && ({row_reg, col_reg}<12'b000011010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000011010110)) color_data = 12'b001101100110;
		if(({row_reg, col_reg}>=12'b000011010111) && ({row_reg, col_reg}<12'b000011011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b000011011110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}>=12'b000011011111) && ({row_reg, col_reg}<12'b000011100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000011100100)) color_data = 12'b001101010110;
		if(({row_reg, col_reg}>=12'b000011100101) && ({row_reg, col_reg}<12'b000011111110)) color_data = 12'b010001010101;

		if(({row_reg, col_reg}>=12'b000011111110) && ({row_reg, col_reg}<12'b000100000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000100000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000100000011) && ({row_reg, col_reg}<12'b000100001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000100001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000100001011) && ({row_reg, col_reg}<12'b000100010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000100010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b000100010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000100011000) && ({row_reg, col_reg}<12'b000100011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000100011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000100011111) && ({row_reg, col_reg}<12'b000100100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000100100100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000100100101) && ({row_reg, col_reg}<12'b000100111101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000100111101)) color_data = 12'b010001010101;

		if(({row_reg, col_reg}>=12'b000100111110) && ({row_reg, col_reg}<12'b000101000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000101000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000101000011) && ({row_reg, col_reg}<12'b000101001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000101001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000101001011) && ({row_reg, col_reg}<12'b000101010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000101010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b000101010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000101011000) && ({row_reg, col_reg}<12'b000101011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000101011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000101011111) && ({row_reg, col_reg}<12'b000101100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000101100100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000101100101) && ({row_reg, col_reg}<12'b000101111101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000101111101)) color_data = 12'b010001010101;

		if(({row_reg, col_reg}>=12'b000101111110) && ({row_reg, col_reg}<12'b000110000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000110000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000110000011) && ({row_reg, col_reg}<12'b000110001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000110001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000110001011) && ({row_reg, col_reg}<12'b000110010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000110010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b000110010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000110011000) && ({row_reg, col_reg}<12'b000110011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000110011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000110011111) && ({row_reg, col_reg}<12'b000110100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000110100100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000110100101) && ({row_reg, col_reg}<12'b000110111101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000110111101)) color_data = 12'b010001010101;

		if(({row_reg, col_reg}>=12'b000110111110) && ({row_reg, col_reg}<12'b000111000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000111000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000111000011) && ({row_reg, col_reg}<12'b000111001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000111001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000111001011) && ({row_reg, col_reg}<12'b000111010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000111010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b000111010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000111011000) && ({row_reg, col_reg}<12'b000111011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000111011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000111011111) && ({row_reg, col_reg}<12'b000111100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000111100100) && ({row_reg, col_reg}<12'b000111101101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b000111101101) && ({row_reg, col_reg}<12'b000111110110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000111110110) && ({row_reg, col_reg}<12'b000111111101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b000111111101)) color_data = 12'b001101010101;

		if(({row_reg, col_reg}>=12'b000111111110) && ({row_reg, col_reg}<12'b001000000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001000000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001000000011) && ({row_reg, col_reg}<12'b001000001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001000001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001000001011) && ({row_reg, col_reg}<12'b001000010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001000010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b001000010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001000011000) && ({row_reg, col_reg}<12'b001000011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001000011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001000011111) && ({row_reg, col_reg}<12'b001000100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001000100100) && ({row_reg, col_reg}<12'b001000101100)) color_data = 12'b001101100110;
		if(({row_reg, col_reg}==12'b001000101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001000101101) && ({row_reg, col_reg}<12'b001000110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001000110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001000110110) && ({row_reg, col_reg}<12'b001000111110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b001000111110) && ({row_reg, col_reg}<12'b001001000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001001000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001001000011) && ({row_reg, col_reg}<12'b001001001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001001001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001001001011) && ({row_reg, col_reg}<12'b001001010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001001010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b001001010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001001011000) && ({row_reg, col_reg}<12'b001001011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001001011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001001011111) && ({row_reg, col_reg}<12'b001001101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001001101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001001101101) && ({row_reg, col_reg}<12'b001001110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001001110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b001001110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b001001110111) && ({row_reg, col_reg}<12'b001010000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001010000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001010000011) && ({row_reg, col_reg}<12'b001010001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001010001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001010001011) && ({row_reg, col_reg}<12'b001010010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001010010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b001010010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001010011000) && ({row_reg, col_reg}<12'b001010011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001010011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001010011111) && ({row_reg, col_reg}<12'b001010101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001010101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001010101101) && ({row_reg, col_reg}<12'b001010110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001010110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b001010110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b001010110111) && ({row_reg, col_reg}<12'b001011000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001011000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001011000011) && ({row_reg, col_reg}<12'b001011001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001011001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001011001011) && ({row_reg, col_reg}<12'b001011010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001011010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b001011010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001011011000) && ({row_reg, col_reg}<12'b001011011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001011011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001011101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001011101101) && ({row_reg, col_reg}<12'b001011110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001011110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b001011110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b001011110111) && ({row_reg, col_reg}<12'b001100000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001100000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001100000011) && ({row_reg, col_reg}<12'b001100001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001100001011) && ({row_reg, col_reg}<12'b001100010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001100010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b001100010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001100011000) && ({row_reg, col_reg}<12'b001100011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001100011111) && ({row_reg, col_reg}<12'b001100101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001100101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001100101101) && ({row_reg, col_reg}<12'b001100110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b001100110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b001100110111) && ({row_reg, col_reg}<12'b001101000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001101000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001101000011) && ({row_reg, col_reg}<12'b001101001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001101001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001101001011) && ({row_reg, col_reg}<12'b001101010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001101010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b001101010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001101011000) && ({row_reg, col_reg}<12'b001101011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001101011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001101011111) && ({row_reg, col_reg}<12'b001101101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001101101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001101101101) && ({row_reg, col_reg}<12'b001101110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001101110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b001101110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b001101110111) && ({row_reg, col_reg}<12'b001110000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001110000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001110000011) && ({row_reg, col_reg}<12'b001110001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001110001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001110001011) && ({row_reg, col_reg}<12'b001110010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001110010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b001110010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001110011000) && ({row_reg, col_reg}<12'b001110011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001110011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001110011111) && ({row_reg, col_reg}<12'b001110101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001110101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001110101101) && ({row_reg, col_reg}<12'b001110110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001110110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b001110110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b001110110111) && ({row_reg, col_reg}<12'b001111000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001111000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001111000011) && ({row_reg, col_reg}<12'b001111001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001111001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001111001011) && ({row_reg, col_reg}<12'b001111010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001111010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b001111010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001111011000) && ({row_reg, col_reg}<12'b001111011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001111011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001111011111) && ({row_reg, col_reg}<12'b001111101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001111101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b001111101101) && ({row_reg, col_reg}<12'b001111110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001111110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b001111110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b001111110111) && ({row_reg, col_reg}<12'b010000000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010000000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010000000011) && ({row_reg, col_reg}<12'b010000001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010000001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010000001011) && ({row_reg, col_reg}<12'b010000010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010000010110)) color_data = 12'b001101010110;
		if(({row_reg, col_reg}==12'b010000010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010000011000) && ({row_reg, col_reg}<12'b010000011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010000011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010000011111) && ({row_reg, col_reg}<12'b010000101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010000101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010000101101) && ({row_reg, col_reg}<12'b010000110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010000110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b010000110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b010000110111) && ({row_reg, col_reg}<12'b010001000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010001000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010001000011) && ({row_reg, col_reg}<12'b010001001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010001001010) && ({row_reg, col_reg}<12'b010001010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010001010111) && ({row_reg, col_reg}<12'b010001011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010001011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010001011111) && ({row_reg, col_reg}<12'b010001101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010001101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010001101101) && ({row_reg, col_reg}<12'b010001110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010001110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b010001110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b010001110111) && ({row_reg, col_reg}<12'b010010000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010010000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010010000011) && ({row_reg, col_reg}<12'b010010011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010010011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010010011111) && ({row_reg, col_reg}<12'b010010101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010010101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010010101101) && ({row_reg, col_reg}<12'b010010110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010010110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b010010110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b010010110111) && ({row_reg, col_reg}<12'b010011000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010011000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010011000011) && ({row_reg, col_reg}<12'b010011011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010011011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010011011111) && ({row_reg, col_reg}<12'b010011101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010011101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010011101101) && ({row_reg, col_reg}<12'b010011110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010011110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b010011110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b010011110111) && ({row_reg, col_reg}<12'b010100000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010100000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010100000011) && ({row_reg, col_reg}<12'b010100011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010100011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010100011111) && ({row_reg, col_reg}<12'b010100101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010100101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010100101101) && ({row_reg, col_reg}<12'b010100110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010100110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b010100110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b010100110111) && ({row_reg, col_reg}<12'b010101000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010101000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010101000011) && ({row_reg, col_reg}<12'b010101001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101001010) && ({row_reg, col_reg}<12'b010101010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010101010111) && ({row_reg, col_reg}<12'b010101011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010101011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010101011111) && ({row_reg, col_reg}<12'b010101101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010101101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010101101101) && ({row_reg, col_reg}<12'b010101110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010101110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b010101110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b010101110111) && ({row_reg, col_reg}<12'b010110000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010110000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010110000011) && ({row_reg, col_reg}<12'b010110001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010110001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010110001011) && ({row_reg, col_reg}<12'b010110010110)) color_data = 12'b001101100110;
		if(({row_reg, col_reg}==12'b010110010110)) color_data = 12'b001101010110;
		if(({row_reg, col_reg}==12'b010110010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010110011000) && ({row_reg, col_reg}<12'b010110011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010110011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010110011111) && ({row_reg, col_reg}<12'b010110101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010110101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010110101101) && ({row_reg, col_reg}<12'b010110110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010110110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b010110110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b010110110111) && ({row_reg, col_reg}<12'b010111000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010111000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010111000011) && ({row_reg, col_reg}<12'b010111001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010111001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010111001011) && ({row_reg, col_reg}<12'b010111010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010111010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b010111010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010111011000) && ({row_reg, col_reg}<12'b010111011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010111011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010111011111) && ({row_reg, col_reg}<12'b010111101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010111101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b010111101101) && ({row_reg, col_reg}<12'b010111110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010111110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b010111110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b010111110111) && ({row_reg, col_reg}<12'b011000000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011000000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011000000011) && ({row_reg, col_reg}<12'b011000001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011000001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011000001011) && ({row_reg, col_reg}<12'b011000010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011000010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b011000010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011000011000) && ({row_reg, col_reg}<12'b011000011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011000011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011000011111) && ({row_reg, col_reg}<12'b011000101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011000101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011000101101) && ({row_reg, col_reg}<12'b011000110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011000110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b011000110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b011000110111) && ({row_reg, col_reg}<12'b011001000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011001000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011001000011) && ({row_reg, col_reg}<12'b011001001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011001001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011001001011) && ({row_reg, col_reg}<12'b011001010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011001010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b011001010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011001011000) && ({row_reg, col_reg}<12'b011001011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011001011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011001011111) && ({row_reg, col_reg}<12'b011001101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011001101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011001101101) && ({row_reg, col_reg}<12'b011001110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011001110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b011001110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b011001110111) && ({row_reg, col_reg}<12'b011010000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011010000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011010000011) && ({row_reg, col_reg}<12'b011010001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011010001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011010001011) && ({row_reg, col_reg}<12'b011010010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011010010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b011010010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011010011000) && ({row_reg, col_reg}<12'b011010011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011010011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011010011111) && ({row_reg, col_reg}<12'b011010101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011010101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011010101101) && ({row_reg, col_reg}<12'b011010110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011010110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b011010110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b011010110111) && ({row_reg, col_reg}<12'b011011000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011011000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011011000011) && ({row_reg, col_reg}<12'b011011001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011011001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011011001011) && ({row_reg, col_reg}<12'b011011010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011011010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b011011010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011011011000) && ({row_reg, col_reg}<12'b011011011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011011011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011011011111) && ({row_reg, col_reg}<12'b011011101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011011101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011011101101) && ({row_reg, col_reg}<12'b011011110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011011110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b011011110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b011011110111) && ({row_reg, col_reg}<12'b011100000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011100000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011100000011) && ({row_reg, col_reg}<12'b011100001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011100001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011100001011) && ({row_reg, col_reg}<12'b011100010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011100010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b011100010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011100011000) && ({row_reg, col_reg}<12'b011100011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011100011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011100011111) && ({row_reg, col_reg}<12'b011100101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011100101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011100101101) && ({row_reg, col_reg}<12'b011100110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011100110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b011100110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b011100110111) && ({row_reg, col_reg}<12'b011101000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011101000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011101000011) && ({row_reg, col_reg}<12'b011101001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011101001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011101001011) && ({row_reg, col_reg}<12'b011101010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011101010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b011101010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011101011000) && ({row_reg, col_reg}<12'b011101011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011101011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011101011111) && ({row_reg, col_reg}<12'b011101101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011101101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011101101101) && ({row_reg, col_reg}<12'b011101110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011101110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b011101110110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b011101110111) && ({row_reg, col_reg}<12'b011110000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011110000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011110000011) && ({row_reg, col_reg}<12'b011110001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011110001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011110001011) && ({row_reg, col_reg}<12'b011110010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011110010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b011110010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011110011000) && ({row_reg, col_reg}<12'b011110011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011110011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011110011111) && ({row_reg, col_reg}<12'b011110100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011110100100) && ({row_reg, col_reg}<12'b011110101100)) color_data = 12'b001101100110;
		if(({row_reg, col_reg}==12'b011110101100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011110101101) && ({row_reg, col_reg}<12'b011110110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011110110101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011110110110) && ({row_reg, col_reg}<12'b011110111110)) color_data = 12'b001101100110;

		if(({row_reg, col_reg}>=12'b011110111110) && ({row_reg, col_reg}<12'b011111000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011111000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011111000011) && ({row_reg, col_reg}<12'b011111001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011111001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011111001011) && ({row_reg, col_reg}<12'b011111010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011111010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b011111010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011111011000) && ({row_reg, col_reg}<12'b011111011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011111011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011111011111) && ({row_reg, col_reg}<12'b011111100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011111100100) && ({row_reg, col_reg}<12'b011111101101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b011111101101) && ({row_reg, col_reg}<12'b011111110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011111110101) && ({row_reg, col_reg}<12'b011111111101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b011111111101)) color_data = 12'b001101010101;

		if(({row_reg, col_reg}>=12'b011111111110) && ({row_reg, col_reg}<12'b100000000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100000000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100000000011) && ({row_reg, col_reg}<12'b100000001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100000001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100000001011) && ({row_reg, col_reg}<12'b100000010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100000010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b100000010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100000011000) && ({row_reg, col_reg}<12'b100000011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100000011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100000011111) && ({row_reg, col_reg}<12'b100000100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100000100100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100000100101) && ({row_reg, col_reg}<12'b100000111101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100000111101)) color_data = 12'b010001010101;

		if(({row_reg, col_reg}>=12'b100000111110) && ({row_reg, col_reg}<12'b100001000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100001000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100001000011) && ({row_reg, col_reg}<12'b100001001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100001001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100001001011) && ({row_reg, col_reg}<12'b100001010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100001010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b100001010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100001011000) && ({row_reg, col_reg}<12'b100001011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100001011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100001011111) && ({row_reg, col_reg}<12'b100001100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100001100100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100001100101) && ({row_reg, col_reg}<12'b100001111101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100001111101)) color_data = 12'b010001010101;

		if(({row_reg, col_reg}>=12'b100001111110) && ({row_reg, col_reg}<12'b100010000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100010000010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100010000011) && ({row_reg, col_reg}<12'b100010001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100010001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100010001011) && ({row_reg, col_reg}<12'b100010010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100010010110)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}==12'b100010010111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100010011000) && ({row_reg, col_reg}<12'b100010011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100010011110)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100010011111) && ({row_reg, col_reg}<12'b100010100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100010100100)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100010100101) && ({row_reg, col_reg}<12'b100010111101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100010111101)) color_data = 12'b010001010101;

		if(({row_reg, col_reg}>=12'b100010111110) && ({row_reg, col_reg}<12'b100011000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100011000010)) color_data = 12'b001101010110;
		if(({row_reg, col_reg}>=12'b100011000011) && ({row_reg, col_reg}<12'b100011001010)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b100011001010)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}>=12'b100011001011) && ({row_reg, col_reg}<12'b100011010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100011010110)) color_data = 12'b001101100110;
		if(({row_reg, col_reg}>=12'b100011010111) && ({row_reg, col_reg}<12'b100011011111)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}>=12'b100011011111) && ({row_reg, col_reg}<12'b100011100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100011100100)) color_data = 12'b001101010101;
		if(({row_reg, col_reg}>=12'b100011100101) && ({row_reg, col_reg}<12'b100011111101)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==12'b100011111101)) color_data = 12'b001101010110;





		if(({row_reg, col_reg}>=12'b100011111110) && ({row_reg, col_reg}<=12'b1001111000000)) color_data = 12'b010001110100;
	end
endmodule