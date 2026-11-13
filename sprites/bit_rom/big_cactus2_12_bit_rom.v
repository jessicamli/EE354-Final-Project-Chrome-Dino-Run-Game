module big_cactus2_rom
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
		if(({row_reg, col_reg}>=11'b00000000000) && ({row_reg, col_reg}<11'b00000001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00000001011) && ({row_reg, col_reg}<11'b00000010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00000010000) && ({row_reg, col_reg}<11'b00000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00000101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00000101011) && ({row_reg, col_reg}<11'b00000110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00000110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00000110001) && ({row_reg, col_reg}<11'b00001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001001010) && ({row_reg, col_reg}<11'b00001010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00001010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001010010) && ({row_reg, col_reg}<11'b00001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001101010) && ({row_reg, col_reg}<11'b00001110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00001110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001110010) && ({row_reg, col_reg}<11'b00010001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010001010) && ({row_reg, col_reg}<11'b00010010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010010010) && ({row_reg, col_reg}<11'b00010100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00010100011) && ({row_reg, col_reg}<11'b00010100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010100110) && ({row_reg, col_reg}<11'b00010101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010101010) && ({row_reg, col_reg}<11'b00010110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010110010) && ({row_reg, col_reg}<11'b00011000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011000011) && ({row_reg, col_reg}<11'b00011000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011000111) && ({row_reg, col_reg}<11'b00011001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011001010) && ({row_reg, col_reg}<11'b00011010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00011010010) && ({row_reg, col_reg}<11'b00011100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011100010) && ({row_reg, col_reg}<11'b00011100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011101010) && ({row_reg, col_reg}<11'b00011110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00011110010) && ({row_reg, col_reg}<11'b00100000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100000010) && ({row_reg, col_reg}<11'b00100000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100001010) && ({row_reg, col_reg}<11'b00100010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00100010010) && ({row_reg, col_reg}<11'b00100100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100100010) && ({row_reg, col_reg}<11'b00100100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100101010) && ({row_reg, col_reg}<11'b00100110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00100110010) && ({row_reg, col_reg}<11'b00101000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101000010) && ({row_reg, col_reg}<11'b00101000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101001010) && ({row_reg, col_reg}<11'b00101010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101010010) && ({row_reg, col_reg}<11'b00101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00101010101) && ({row_reg, col_reg}<11'b00101011000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00101011000) && ({row_reg, col_reg}<11'b00101100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101100010) && ({row_reg, col_reg}<11'b00101100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00101101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101101010) && ({row_reg, col_reg}<11'b00101110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101110010) && ({row_reg, col_reg}<11'b00101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101110101) && ({row_reg, col_reg}<11'b00101111000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00101111001) && ({row_reg, col_reg}<11'b00110000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110000010) && ({row_reg, col_reg}<11'b00110000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110001010) && ({row_reg, col_reg}<11'b00110010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00110010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110010100) && ({row_reg, col_reg}<11'b00110011001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00110011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110100010) && ({row_reg, col_reg}<11'b00110100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110101010) && ({row_reg, col_reg}<11'b00110110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110110100) && ({row_reg, col_reg}<11'b00110111001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00110111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111000010) && ({row_reg, col_reg}<11'b00111000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111001010) && ({row_reg, col_reg}<11'b00111010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111010100) && ({row_reg, col_reg}<11'b00111011001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00111011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111100010) && ({row_reg, col_reg}<11'b00111100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111101010) && ({row_reg, col_reg}<11'b00111110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00111110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111110100) && ({row_reg, col_reg}<11'b00111111001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00111111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000000010) && ({row_reg, col_reg}<11'b01000000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000001010) && ({row_reg, col_reg}<11'b01000010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000010100) && ({row_reg, col_reg}<11'b01000011001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01000011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000100010) && ({row_reg, col_reg}<11'b01000100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000101010) && ({row_reg, col_reg}<11'b01000110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000110100) && ({row_reg, col_reg}<11'b01000111001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01000111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001000010) && ({row_reg, col_reg}<11'b01001000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001001010) && ({row_reg, col_reg}<11'b01001010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001010100) && ({row_reg, col_reg}<11'b01001011001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01001011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001100010) && ({row_reg, col_reg}<11'b01001100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001101010) && ({row_reg, col_reg}<11'b01001110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01001110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001110100) && ({row_reg, col_reg}<11'b01001111001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01001111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010000010) && ({row_reg, col_reg}<11'b01010000111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01010000111) && ({row_reg, col_reg}<11'b01010001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010001010) && ({row_reg, col_reg}<11'b01010010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010010100) && ({row_reg, col_reg}<11'b01010011001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01010011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010100010) && ({row_reg, col_reg}<11'b01010110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01010110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010110100) && ({row_reg, col_reg}<11'b01010111001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01010111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011000000) && ({row_reg, col_reg}<11'b01011000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011000011) && ({row_reg, col_reg}<11'b01011010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011010100) && ({row_reg, col_reg}<11'b01011011001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01011011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011100000) && ({row_reg, col_reg}<11'b01011100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011100100) && ({row_reg, col_reg}<11'b01011110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01011110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011110100) && ({row_reg, col_reg}<11'b01011111001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100000000) && ({row_reg, col_reg}<11'b01100000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100000101) && ({row_reg, col_reg}<11'b01100010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01100010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100010100) && ({row_reg, col_reg}<11'b01100011001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01100011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100100000) && ({row_reg, col_reg}<11'b01100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100100110) && ({row_reg, col_reg}<11'b01100110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b01100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100110100) && ({row_reg, col_reg}<11'b01100111001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01100111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101000000) && ({row_reg, col_reg}<11'b01101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01101000110) && ({row_reg, col_reg}<11'b01101001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101001010) && ({row_reg, col_reg}<11'b01101010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01101010001) && ({row_reg, col_reg}<11'b01101010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101010100) && ({row_reg, col_reg}<11'b01101011001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01101011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101100000) && ({row_reg, col_reg}<11'b01101101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01101101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101101010) && ({row_reg, col_reg}<11'b01101111000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01101111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01101111001) && ({row_reg, col_reg}<11'b01110001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01110001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110001010) && ({row_reg, col_reg}<11'b01110010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01110010111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01110011000) && ({row_reg, col_reg}<11'b01110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01110101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110101010) && ({row_reg, col_reg}<11'b01110110110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01110110110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01110110111) && ({row_reg, col_reg}<11'b01111001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01111001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111001010) && ({row_reg, col_reg}<11'b01111010101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01111010101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01111010110) && ({row_reg, col_reg}<11'b01111101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01111101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111101010) && ({row_reg, col_reg}<11'b01111110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01111110001) && ({row_reg, col_reg}<11'b01111110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01111110101) && ({row_reg, col_reg}<11'b10000001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10000001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000001010) && ({row_reg, col_reg}<11'b10000010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10000010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10000010010) && ({row_reg, col_reg}<11'b10000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10000101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000101010) && ({row_reg, col_reg}<11'b10000110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10000110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10000110010) && ({row_reg, col_reg}<11'b10001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10001001010) && ({row_reg, col_reg}<11'b10001010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10001010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10001010010) && ({row_reg, col_reg}<11'b10001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10001101010) && ({row_reg, col_reg}<11'b10001110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10001110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10001110010) && ({row_reg, col_reg}<11'b10010001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10010001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10010001010) && ({row_reg, col_reg}<11'b10010010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10010010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10010010010) && ({row_reg, col_reg}<11'b10010101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10010101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10010101010) && ({row_reg, col_reg}<11'b10010110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10010110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10010110010) && ({row_reg, col_reg}<11'b10011001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10011001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10011001010) && ({row_reg, col_reg}<11'b10011010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10011010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10011010010) && ({row_reg, col_reg}<11'b10011101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10011101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10011101010) && ({row_reg, col_reg}<11'b10011110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10011110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10011110010) && ({row_reg, col_reg}<11'b10100001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10100001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10100001010) && ({row_reg, col_reg}<11'b10100010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10100010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10100010010) && ({row_reg, col_reg}<11'b10100101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10100101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10100101010) && ({row_reg, col_reg}<11'b10100110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10100110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10100110010) && ({row_reg, col_reg}<11'b10101001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10101001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10101001010) && ({row_reg, col_reg}<11'b10101010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10101010001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10101010010) && ({row_reg, col_reg}<11'b10101101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10101101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10101101010) && ({row_reg, col_reg}<11'b10101110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10101110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10101110010) && ({row_reg, col_reg}<11'b10110001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10110001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10110001010) && ({row_reg, col_reg}<11'b10110010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10110010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10110010010) && ({row_reg, col_reg}<11'b10110010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10110010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10110010101) && ({row_reg, col_reg}<11'b10110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10110100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10110100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b10110101000) && ({row_reg, col_reg}<11'b10110101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10110101010) && ({row_reg, col_reg}<11'b10110110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10110110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10110110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10110110100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10110110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10110110110) && ({row_reg, col_reg}<11'b10111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10111000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10111000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10111000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10111001000) && ({row_reg, col_reg}<11'b10111010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10111010010) && ({row_reg, col_reg}<11'b10111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10111010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10111010101) && ({row_reg, col_reg}<11'b10111100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10111100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b10111100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b10111101000) && ({row_reg, col_reg}<11'b10111110010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10111110010) && ({row_reg, col_reg}<11'b11000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b11000010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b11000010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b11000010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b11000010011) && ({row_reg, col_reg}<11'b11000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b11000110001)) color_data = 12'b111111111111;


		if(({row_reg, col_reg}>=11'b11000110010) && ({row_reg, col_reg}<=11'b11001011001)) color_data = 12'b000000000000;
	end
endmodule