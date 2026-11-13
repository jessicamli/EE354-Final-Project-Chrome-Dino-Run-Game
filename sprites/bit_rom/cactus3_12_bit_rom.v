module cactus3_rom
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
		if(({row_reg, col_reg}>=11'b00000000000) && ({row_reg, col_reg}<11'b00000000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00000000111) && ({row_reg, col_reg}<11'b00000001010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00000001010) && ({row_reg, col_reg}<11'b00000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00000100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00000100111) && ({row_reg, col_reg}<11'b00000101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00000101010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00000101011) && ({row_reg, col_reg}<11'b00001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001000110) && ({row_reg, col_reg}<11'b00001001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00001001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001001100) && ({row_reg, col_reg}<11'b00001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001100011) && ({row_reg, col_reg}<11'b00001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00001100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00001100110) && ({row_reg, col_reg}<11'b00001101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00001101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001101100) && ({row_reg, col_reg}<11'b00010000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00010000010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010000110) && ({row_reg, col_reg}<11'b00010001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010001100) && ({row_reg, col_reg}<11'b00010001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010001110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010001111) && ({row_reg, col_reg}<11'b00010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010100001) && ({row_reg, col_reg}<11'b00010100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00010100100) && ({row_reg, col_reg}<11'b00010100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010100110) && ({row_reg, col_reg}<11'b00010101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b00010101110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010101111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010110000) && ({row_reg, col_reg}<11'b00011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011000001) && ({row_reg, col_reg}<11'b00011000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00011000100) && ({row_reg, col_reg}<11'b00011000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011000110) && ({row_reg, col_reg}<11'b00011001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00011001011) && ({row_reg, col_reg}<11'b00011001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011001101) && ({row_reg, col_reg}<11'b00011010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011100001) && ({row_reg, col_reg}<11'b00011100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00011100100) && ({row_reg, col_reg}<11'b00011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011100110) && ({row_reg, col_reg}<11'b00011101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00011101011) && ({row_reg, col_reg}<11'b00011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011101101) && ({row_reg, col_reg}<11'b00011110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100000001) && ({row_reg, col_reg}<11'b00100000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00100000100) && ({row_reg, col_reg}<11'b00100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100000110) && ({row_reg, col_reg}<11'b00100001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00100001011) && ({row_reg, col_reg}<11'b00100001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100001101) && ({row_reg, col_reg}<11'b00100010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00100010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100100001) && ({row_reg, col_reg}<11'b00100100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00100100100) && ({row_reg, col_reg}<11'b00100100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100100110) && ({row_reg, col_reg}<11'b00100101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00100101011) && ({row_reg, col_reg}<11'b00100101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100101101) && ({row_reg, col_reg}<11'b00100110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00100110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101000001) && ({row_reg, col_reg}<11'b00101000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00101000100) && ({row_reg, col_reg}<11'b00101000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101000110) && ({row_reg, col_reg}<11'b00101001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00101001011) && ({row_reg, col_reg}<11'b00101001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101001101) && ({row_reg, col_reg}<11'b00101010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00101010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101100001) && ({row_reg, col_reg}<11'b00101100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00101100100) && ({row_reg, col_reg}<11'b00101100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101100110) && ({row_reg, col_reg}<11'b00101101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00101101011) && ({row_reg, col_reg}<11'b00101101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101101101) && ({row_reg, col_reg}<11'b00101110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00101110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00101110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110000001) && ({row_reg, col_reg}<11'b00110000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00110000100) && ({row_reg, col_reg}<11'b00110000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110000110) && ({row_reg, col_reg}<11'b00110001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00110001011) && ({row_reg, col_reg}<11'b00110001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110001101) && ({row_reg, col_reg}<11'b00110010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110100001) && ({row_reg, col_reg}<11'b00110100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00110100100) && ({row_reg, col_reg}<11'b00110100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110100110) && ({row_reg, col_reg}<11'b00110101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00110101011) && ({row_reg, col_reg}<11'b00110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110101101) && ({row_reg, col_reg}<11'b00110110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00110110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111000001) && ({row_reg, col_reg}<11'b00111000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00111000100) && ({row_reg, col_reg}<11'b00111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111000110) && ({row_reg, col_reg}<11'b00111001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00111001011) && ({row_reg, col_reg}<11'b00111001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111001101) && ({row_reg, col_reg}<11'b00111010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00111010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111100001) && ({row_reg, col_reg}<11'b00111100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00111100100) && ({row_reg, col_reg}<11'b00111100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111100110) && ({row_reg, col_reg}<11'b00111101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b00111101011) && ({row_reg, col_reg}<11'b00111101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111101101) && ({row_reg, col_reg}<11'b00111110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00111110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000000001) && ({row_reg, col_reg}<11'b01000001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01000001011) && ({row_reg, col_reg}<11'b01000001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000001101) && ({row_reg, col_reg}<11'b01000010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b01000010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01000100000) && ({row_reg, col_reg}<11'b01000100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000100010) && ({row_reg, col_reg}<11'b01000101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01000101011) && ({row_reg, col_reg}<11'b01000101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000101101) && ({row_reg, col_reg}<11'b01000110000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01000110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01000110001) && ({row_reg, col_reg}<11'b01001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001000011) && ({row_reg, col_reg}<11'b01001010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01001010001) && ({row_reg, col_reg}<11'b01001100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01001100011) && ({row_reg, col_reg}<11'b01001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001100110) && ({row_reg, col_reg}<11'b01001101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01001101111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01001110000) && ({row_reg, col_reg}<11'b01010000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010000110) && ({row_reg, col_reg}<11'b01010001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01010001110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01010001111) && ({row_reg, col_reg}<11'b01010100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01010100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010100110) && ({row_reg, col_reg}<11'b01010101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01010101011) && ({row_reg, col_reg}<11'b01010101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01010101110) && ({row_reg, col_reg}<11'b01011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011000110) && ({row_reg, col_reg}<11'b01011001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01011001100) && ({row_reg, col_reg}<11'b01011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011100110) && ({row_reg, col_reg}<11'b01011101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01011101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01011101100) && ({row_reg, col_reg}<11'b01100000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100000110) && ({row_reg, col_reg}<11'b01100001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01100001100) && ({row_reg, col_reg}<11'b01100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100100110) && ({row_reg, col_reg}<11'b01100101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01100101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01100101100) && ({row_reg, col_reg}<11'b01101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01101000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101000110) && ({row_reg, col_reg}<11'b01101001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01101001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01101001100) && ({row_reg, col_reg}<11'b01101100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01101100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101100110) && ({row_reg, col_reg}<11'b01101101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01101101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01101101100) && ({row_reg, col_reg}<11'b01110000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01110000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110000110) && ({row_reg, col_reg}<11'b01110001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01110001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01110001100) && ({row_reg, col_reg}<11'b01110100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01110100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110100110) && ({row_reg, col_reg}<11'b01110101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01110101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01110101100) && ({row_reg, col_reg}<11'b01111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01111000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111000110) && ({row_reg, col_reg}<11'b01111001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01111001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01111001100) && ({row_reg, col_reg}<11'b01111100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01111100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111100110) && ({row_reg, col_reg}<11'b01111101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01111101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b01111101100) && ({row_reg, col_reg}<11'b10000000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10000000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000000110) && ({row_reg, col_reg}<11'b10000001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10000001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10000001100) && ({row_reg, col_reg}<11'b10000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b10000100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000100110) && ({row_reg, col_reg}<11'b10000101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b10000101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b10000101100) && ({row_reg, col_reg}<11'b10001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b10001000110) && ({row_reg, col_reg}<11'b10001001011)) color_data = 12'b111111111111;




		if(({row_reg, col_reg}>=11'b10001001011) && ({row_reg, col_reg}<=11'b10010110001)) color_data = 12'b000000000000;
	end
endmodule