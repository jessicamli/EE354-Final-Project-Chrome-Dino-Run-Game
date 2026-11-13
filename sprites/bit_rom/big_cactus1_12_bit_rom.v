module big_cactus1_rom
	(
		input wire clk,
		input wire [5:0] row,
		input wire [4:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [5:0] row_reg;
	reg [4:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin

		if(({row_reg, col_reg}>=11'b00000000000) && ({row_reg, col_reg}<11'b00000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00000101010) && ({row_reg, col_reg}<11'b00000101111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00000101111) && ({row_reg, col_reg}<11'b00001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001001010) && ({row_reg, col_reg}<11'b00001001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00001001111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001010000) && ({row_reg, col_reg}<11'b00001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001101001) && ({row_reg, col_reg}<11'b00001110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00001110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001110001) && ({row_reg, col_reg}<11'b00010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010001001) && ({row_reg, col_reg}<11'b00010010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010010001) && ({row_reg, col_reg}<11'b00010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010101001) && ({row_reg, col_reg}<11'b00010110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010110001) && ({row_reg, col_reg}<11'b00011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011001001) && ({row_reg, col_reg}<11'b00011010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00011010001) && ({row_reg, col_reg}<11'b00011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011101001) && ({row_reg, col_reg}<11'b00011110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00011110001) && ({row_reg, col_reg}<11'b00100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100001001) && ({row_reg, col_reg}<11'b00100010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00100010001) && ({row_reg, col_reg}<11'b00100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100101001) && ({row_reg, col_reg}<11'b00100110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00100110001) && ({row_reg, col_reg}<11'b00101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101001001) && ({row_reg, col_reg}<11'b00101010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00101010001) && ({row_reg, col_reg}<11'b00101101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101101001) && ({row_reg, col_reg}<11'b00101110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101110001) && ({row_reg, col_reg}<11'b00101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00101110100) && ({row_reg, col_reg}<11'b00101110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00101110111) && ({row_reg, col_reg}<11'b00110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110001001) && ({row_reg, col_reg}<11'b00110010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110010001) && ({row_reg, col_reg}<11'b00110010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110010100) && ({row_reg, col_reg}<11'b00110010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110010111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00110011000) && ({row_reg, col_reg}<11'b00110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00110100010) && ({row_reg, col_reg}<11'b00110100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110100101) && ({row_reg, col_reg}<11'b00110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110101001) && ({row_reg, col_reg}<11'b00110110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110110011) && ({row_reg, col_reg}<11'b00110111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111000010) && ({row_reg, col_reg}<11'b00111000101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111000110) && ({row_reg, col_reg}<11'b00111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111001001) && ({row_reg, col_reg}<11'b00111010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111010011) && ({row_reg, col_reg}<11'b00111011000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b00111011000) && ({row_reg, col_reg}<11'b00111100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111100001) && ({row_reg, col_reg}<11'b00111100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111101001) && ({row_reg, col_reg}<11'b00111110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111110011) && ({row_reg, col_reg}<11'b00111111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b00111111000) && ({row_reg, col_reg}<11'b01000000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000000001) && ({row_reg, col_reg}<11'b01000000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000001001) && ({row_reg, col_reg}<11'b01000010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000010011) && ({row_reg, col_reg}<11'b01000011000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01000011000) && ({row_reg, col_reg}<11'b01000100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000100001) && ({row_reg, col_reg}<11'b01000100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000101001) && ({row_reg, col_reg}<11'b01000110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000110011) && ({row_reg, col_reg}<11'b01000111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01000111000) && ({row_reg, col_reg}<11'b01001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001000001) && ({row_reg, col_reg}<11'b01001000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001001001) && ({row_reg, col_reg}<11'b01001010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001010011) && ({row_reg, col_reg}<11'b01001011000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01001011000) && ({row_reg, col_reg}<11'b01001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001100001) && ({row_reg, col_reg}<11'b01001100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001101001) && ({row_reg, col_reg}<11'b01001110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001110011) && ({row_reg, col_reg}<11'b01001111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01001111000) && ({row_reg, col_reg}<11'b01010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010000001) && ({row_reg, col_reg}<11'b01010000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01010000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010001001) && ({row_reg, col_reg}<11'b01010010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01010010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010010011) && ({row_reg, col_reg}<11'b01010011000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01010011000) && ({row_reg, col_reg}<11'b01010100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010100001) && ({row_reg, col_reg}<11'b01010100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01010100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010101001) && ({row_reg, col_reg}<11'b01010110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010110011) && ({row_reg, col_reg}<11'b01010111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01010111000) && ({row_reg, col_reg}<11'b01011000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011000001) && ({row_reg, col_reg}<11'b01011000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011001001) && ({row_reg, col_reg}<11'b01011010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011010011) && ({row_reg, col_reg}<11'b01011011000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01011011000) && ({row_reg, col_reg}<11'b01011100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011100001) && ({row_reg, col_reg}<11'b01011100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011101001) && ({row_reg, col_reg}<11'b01011110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011110011) && ({row_reg, col_reg}<11'b01011111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01011111000) && ({row_reg, col_reg}<11'b01100000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100000001) && ({row_reg, col_reg}<11'b01100000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01100000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100001001) && ({row_reg, col_reg}<11'b01100010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01100010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100010011) && ({row_reg, col_reg}<11'b01100011000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01100011000) && ({row_reg, col_reg}<11'b01100100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100100001) && ({row_reg, col_reg}<11'b01100100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01100100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100101001) && ({row_reg, col_reg}<11'b01100110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100110011) && ({row_reg, col_reg}<11'b01100111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01100111000) && ({row_reg, col_reg}<11'b01101000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101000001) && ({row_reg, col_reg}<11'b01101000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01101000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01101001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101001001) && ({row_reg, col_reg}<11'b01101010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01101010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01101010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01101010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101010011) && ({row_reg, col_reg}<11'b01101011000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01101011000) && ({row_reg, col_reg}<11'b01101100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101100001) && ({row_reg, col_reg}<11'b01101100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01101100110) && ({row_reg, col_reg}<11'b01101101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101101001) && ({row_reg, col_reg}<11'b01101110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01101110000) && ({row_reg, col_reg}<11'b01101110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101110011) && ({row_reg, col_reg}<11'b01101111000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01101111000) && ({row_reg, col_reg}<11'b01110000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110000001) && ({row_reg, col_reg}<11'b01110010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01110010111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b01110011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01110100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110100001) && ({row_reg, col_reg}<11'b01110110110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01110110110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01110110111) && ({row_reg, col_reg}<11'b01111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111000010) && ({row_reg, col_reg}<11'b01111010101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01111010101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01111010110) && ({row_reg, col_reg}<11'b01111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01111100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111100011) && ({row_reg, col_reg}<11'b01111110100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01111110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01111110101) && ({row_reg, col_reg}<11'b10000000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10000000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000000100) && ({row_reg, col_reg}<11'b10000010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10000010000) && ({row_reg, col_reg}<11'b10000010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10000010100) && ({row_reg, col_reg}<11'b10000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b10000100100) && ({row_reg, col_reg}<11'b10000101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000101001) && ({row_reg, col_reg}<11'b10000110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10000110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10000110001) && ({row_reg, col_reg}<11'b10001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10001001001) && ({row_reg, col_reg}<11'b10001010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10001010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10001010001) && ({row_reg, col_reg}<11'b10001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10001101001) && ({row_reg, col_reg}<11'b10001110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10001110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10001110001) && ({row_reg, col_reg}<11'b10010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10010001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10010001001) && ({row_reg, col_reg}<11'b10010010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10010010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10010010001) && ({row_reg, col_reg}<11'b10010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10010101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10010101001) && ({row_reg, col_reg}<11'b10010110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10010110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10010110001) && ({row_reg, col_reg}<11'b10011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10011001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10011001001) && ({row_reg, col_reg}<11'b10011010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10011010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10011010001) && ({row_reg, col_reg}<11'b10011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10011101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10011101001) && ({row_reg, col_reg}<11'b10011110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10011110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10011110001) && ({row_reg, col_reg}<11'b10100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10100001001) && ({row_reg, col_reg}<11'b10100010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10100010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10100010001) && ({row_reg, col_reg}<11'b10100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10100101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10100101001) && ({row_reg, col_reg}<11'b10100110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10100110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10100110001) && ({row_reg, col_reg}<11'b10101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10101001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10101001001) && ({row_reg, col_reg}<11'b10101010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10101010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10101010001) && ({row_reg, col_reg}<11'b10101101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10101101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10101101001) && ({row_reg, col_reg}<11'b10101110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10101110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10101110001) && ({row_reg, col_reg}<11'b10110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10110001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10110001001) && ({row_reg, col_reg}<11'b10110010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10110010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10110010001) && ({row_reg, col_reg}<11'b10110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10110101001) && ({row_reg, col_reg}<11'b10110110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10110110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10110110001) && ({row_reg, col_reg}<11'b10110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10110110011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10110110100) && ({row_reg, col_reg}<11'b10111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10111000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b10111000111) && ({row_reg, col_reg}<11'b10111001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10111001001) && ({row_reg, col_reg}<11'b10111010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10111010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10111010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10111010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10111010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10111010101) && ({row_reg, col_reg}<11'b10111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10111100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10111100101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10111100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10111100111) && ({row_reg, col_reg}<11'b10111110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10111110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10111110001) && ({row_reg, col_reg}<11'b10111110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10111110011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10111110100) && ({row_reg, col_reg}<11'b11000000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b11000000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b11000000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b11000000111) && ({row_reg, col_reg}<11'b11000010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b11000010001) && ({row_reg, col_reg}<11'b11000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b11000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b11000110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b11000110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b11000110010) && ({row_reg, col_reg}<11'b11001010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b11001010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b11001010001) && ({row_reg, col_reg}<=11'b11001011000)) color_data = 12'b000000000000;
	end
endmodule