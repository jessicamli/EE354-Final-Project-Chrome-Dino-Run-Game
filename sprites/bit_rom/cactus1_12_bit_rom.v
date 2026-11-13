module cactus1_rom
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
		if(({row_reg, col_reg}>=11'b00000000000) && ({row_reg, col_reg}<11'b00000001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00000001001) && ({row_reg, col_reg}<11'b00000001100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00000001100) && ({row_reg, col_reg}<11'b00000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00000101001) && ({row_reg, col_reg}<11'b00000101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00000101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00000101101) && ({row_reg, col_reg}<11'b00001000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001001000) && ({row_reg, col_reg}<11'b00001001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00001001101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001001110) && ({row_reg, col_reg}<11'b00001100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001101000) && ({row_reg, col_reg}<11'b00001101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00001101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001101110) && ({row_reg, col_reg}<11'b00010000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010001000) && ({row_reg, col_reg}<11'b00010001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010001110) && ({row_reg, col_reg}<11'b00010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010010001) && ({row_reg, col_reg}<11'b00010100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010101000) && ({row_reg, col_reg}<11'b00010101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00010101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00010110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010110010) && ({row_reg, col_reg}<11'b00011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011001000) && ({row_reg, col_reg}<11'b00011001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00011001101) && ({row_reg, col_reg}<11'b00011001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011001111) && ({row_reg, col_reg}<11'b00011010010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00011010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011100000) && ({row_reg, col_reg}<11'b00011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011101000) && ({row_reg, col_reg}<11'b00011101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00011101101) && ({row_reg, col_reg}<11'b00011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011101111) && ({row_reg, col_reg}<11'b00011110010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00011110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100000000) && ({row_reg, col_reg}<11'b00100000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100000101) && ({row_reg, col_reg}<11'b00100000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100001000) && ({row_reg, col_reg}<11'b00100001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00100001101) && ({row_reg, col_reg}<11'b00100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100001111) && ({row_reg, col_reg}<11'b00100010010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00100010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100100000) && ({row_reg, col_reg}<11'b00100100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00100100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100101000) && ({row_reg, col_reg}<11'b00100101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00100101101) && ({row_reg, col_reg}<11'b00100101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100101111) && ({row_reg, col_reg}<11'b00100110010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00100110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101000000) && ({row_reg, col_reg}<11'b00101000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101000011) && ({row_reg, col_reg}<11'b00101000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00101000110) && ({row_reg, col_reg}<11'b00101001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101001000) && ({row_reg, col_reg}<11'b00101001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00101001101) && ({row_reg, col_reg}<11'b00101001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101001111) && ({row_reg, col_reg}<11'b00101010010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00101010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101100000) && ({row_reg, col_reg}<11'b00101100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101100011) && ({row_reg, col_reg}<11'b00101100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00101100110) && ({row_reg, col_reg}<11'b00101101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101101000) && ({row_reg, col_reg}<11'b00101101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00101101101) && ({row_reg, col_reg}<11'b00101101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101101111) && ({row_reg, col_reg}<11'b00101110010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00101110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110000000) && ({row_reg, col_reg}<11'b00110000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110000011) && ({row_reg, col_reg}<11'b00110000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00110000110) && ({row_reg, col_reg}<11'b00110001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110001000) && ({row_reg, col_reg}<11'b00110001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00110001101) && ({row_reg, col_reg}<11'b00110001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110001111) && ({row_reg, col_reg}<11'b00110010010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00110010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110100000) && ({row_reg, col_reg}<11'b00110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110100011) && ({row_reg, col_reg}<11'b00110100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00110100110) && ({row_reg, col_reg}<11'b00110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110101000) && ({row_reg, col_reg}<11'b00110101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00110101101) && ({row_reg, col_reg}<11'b00110101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110101111) && ({row_reg, col_reg}<11'b00110110010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00110110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111000000) && ({row_reg, col_reg}<11'b00111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111000011) && ({row_reg, col_reg}<11'b00111000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00111000110) && ({row_reg, col_reg}<11'b00111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111001000) && ({row_reg, col_reg}<11'b00111001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00111001101) && ({row_reg, col_reg}<11'b00111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111001111) && ({row_reg, col_reg}<11'b00111010010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111100000) && ({row_reg, col_reg}<11'b00111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111100011) && ({row_reg, col_reg}<11'b00111100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00111100110) && ({row_reg, col_reg}<11'b00111101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111101000) && ({row_reg, col_reg}<11'b00111101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00111101101) && ({row_reg, col_reg}<11'b00111101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111101111) && ({row_reg, col_reg}<11'b00111110010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b00111110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000000000) && ({row_reg, col_reg}<11'b01000000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000000011) && ({row_reg, col_reg}<11'b01000000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01000000110) && ({row_reg, col_reg}<11'b01000001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000001000) && ({row_reg, col_reg}<11'b01000010010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b01000010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000100000) && ({row_reg, col_reg}<11'b01000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000100011) && ({row_reg, col_reg}<11'b01000100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01000100110) && ({row_reg, col_reg}<11'b01000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000101000) && ({row_reg, col_reg}<11'b01000110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01000110010) && ({row_reg, col_reg}<11'b01001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001000011) && ({row_reg, col_reg}<11'b01001000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01001000110) && ({row_reg, col_reg}<11'b01001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001001000) && ({row_reg, col_reg}<11'b01001010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01001010001) && ({row_reg, col_reg}<11'b01001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001100011) && ({row_reg, col_reg}<11'b01001100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01001100110) && ({row_reg, col_reg}<11'b01001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001101000) && ({row_reg, col_reg}<11'b01001101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01001101101) && ({row_reg, col_reg}<11'b01001110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01001110000) && ({row_reg, col_reg}<11'b01010000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010000011) && ({row_reg, col_reg}<11'b01010001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010001101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01010001110) && ({row_reg, col_reg}<11'b01010100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010100100) && ({row_reg, col_reg}<11'b01010101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01010101110) && ({row_reg, col_reg}<11'b01011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011000101) && ({row_reg, col_reg}<11'b01011001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011001101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01011001110) && ({row_reg, col_reg}<11'b01011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01011100101) && ({row_reg, col_reg}<11'b01011101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011101000) && ({row_reg, col_reg}<11'b01011101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01011101110) && ({row_reg, col_reg}<11'b01100000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100001000) && ({row_reg, col_reg}<11'b01100001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100001101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01100001110) && ({row_reg, col_reg}<11'b01100100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100101000) && ({row_reg, col_reg}<11'b01100101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01100101110) && ({row_reg, col_reg}<11'b01101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01101000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101001000) && ({row_reg, col_reg}<11'b01101001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01101001101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01101001110) && ({row_reg, col_reg}<11'b01101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01101100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101101000) && ({row_reg, col_reg}<11'b01101101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01101101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01101101110) && ({row_reg, col_reg}<11'b01110000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01110000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110001000) && ({row_reg, col_reg}<11'b01110001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01110001101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01110001110) && ({row_reg, col_reg}<11'b01110100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01110100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110101000) && ({row_reg, col_reg}<11'b01110101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01110101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01110101110) && ({row_reg, col_reg}<11'b01111000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01111000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111001000) && ({row_reg, col_reg}<11'b01111001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01111001101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01111001110) && ({row_reg, col_reg}<11'b01111100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01111100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111101000) && ({row_reg, col_reg}<11'b01111101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01111101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01111101110) && ({row_reg, col_reg}<11'b10000000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10000000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000001000) && ({row_reg, col_reg}<11'b10000001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10000001101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10000001110) && ({row_reg, col_reg}<11'b10000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10000100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000101000) && ({row_reg, col_reg}<11'b10000101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10000101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10000101110) && ({row_reg, col_reg}<11'b10001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b10001001000) && ({row_reg, col_reg}<11'b10001001101)) color_data = 12'b111111111111;


		if(({row_reg, col_reg}>=11'b10001001101) && ({row_reg, col_reg}<=11'b10001110010)) color_data = 12'b000000000000;
	end
endmodule