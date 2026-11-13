module restart_rom
	(
		input wire clk,
		input wire [4:0] row,
		input wire [5:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [4:0] row_reg;
	reg [5:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin

		if(({row_reg, col_reg}>=11'b00000000000) && ({row_reg, col_reg}<11'b00001000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00001000011) && ({row_reg, col_reg}<11'b00001100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00001100001) && ({row_reg, col_reg}<11'b00010000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00010000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00010000011) && ({row_reg, col_reg}<11'b00010100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00010100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b00010100010) && ({row_reg, col_reg}<11'b00011000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00011000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00011000010) && ({row_reg, col_reg}<11'b00011100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00011100010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==11'b00011100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00100000001) && ({row_reg, col_reg}<11'b00100100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b00100100011) && ({row_reg, col_reg}<11'b00101000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00101000001) && ({row_reg, col_reg}<11'b00101100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b00101100011) && ({row_reg, col_reg}<11'b00110000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00110000001) && ({row_reg, col_reg}<11'b00110100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b00110100011) && ({row_reg, col_reg}<11'b00111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111000001) && ({row_reg, col_reg}<11'b00111001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b00111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b00111001111) && ({row_reg, col_reg}<11'b00111100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b00111100011) && ({row_reg, col_reg}<11'b01000000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000000001) && ({row_reg, col_reg}<11'b01000001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01000001110) && ({row_reg, col_reg}<11'b01000010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01000010000) && ({row_reg, col_reg}<11'b01000100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01000100011) && ({row_reg, col_reg}<11'b01001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001000001) && ({row_reg, col_reg}<11'b01001001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01001001110) && ({row_reg, col_reg}<11'b01001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01001010001) && ({row_reg, col_reg}<11'b01001100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01001100011) && ({row_reg, col_reg}<11'b01010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010000001) && ({row_reg, col_reg}<11'b01010001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01010001010) && ({row_reg, col_reg}<11'b01010010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010010010) && ({row_reg, col_reg}<11'b01010010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01010010111) && ({row_reg, col_reg}<11'b01010011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01010011010) && ({row_reg, col_reg}<11'b01010100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01010100011) && ({row_reg, col_reg}<11'b01011000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011000001) && ({row_reg, col_reg}<11'b01011001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01011001001) && ({row_reg, col_reg}<11'b01011010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011010011) && ({row_reg, col_reg}<11'b01011010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01011010111) && ({row_reg, col_reg}<11'b01011011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01011011011) && ({row_reg, col_reg}<11'b01011100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01011100011) && ({row_reg, col_reg}<11'b01100000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100000001) && ({row_reg, col_reg}<11'b01100001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01100001000) && ({row_reg, col_reg}<11'b01100010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100010010) && ({row_reg, col_reg}<11'b01100010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01100010111) && ({row_reg, col_reg}<11'b01100011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01100011100) && ({row_reg, col_reg}<11'b01100100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01100100011) && ({row_reg, col_reg}<11'b01101000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101000001) && ({row_reg, col_reg}<11'b01101001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01101001000) && ({row_reg, col_reg}<11'b01101001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101001011) && ({row_reg, col_reg}<11'b01101001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01101001110) && ({row_reg, col_reg}<11'b01101010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101010001) && ({row_reg, col_reg}<11'b01101011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01101011001) && ({row_reg, col_reg}<11'b01101011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01101011100) && ({row_reg, col_reg}<11'b01101100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01101100011) && ({row_reg, col_reg}<11'b01110000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110000001) && ({row_reg, col_reg}<11'b01110001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01110001000) && ({row_reg, col_reg}<11'b01110001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110001011) && ({row_reg, col_reg}<11'b01110001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01110001110) && ({row_reg, col_reg}<11'b01110010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110010000) && ({row_reg, col_reg}<11'b01110011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01110011001) && ({row_reg, col_reg}<11'b01110011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01110011100) && ({row_reg, col_reg}<11'b01110100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01110100011) && ({row_reg, col_reg}<11'b01111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111000001) && ({row_reg, col_reg}<11'b01111001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01111001000) && ({row_reg, col_reg}<11'b01111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111001011) && ({row_reg, col_reg}<11'b01111001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b01111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111001111) && ({row_reg, col_reg}<11'b01111011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b01111011001) && ({row_reg, col_reg}<11'b01111011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b01111011100) && ({row_reg, col_reg}<11'b01111100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b01111100011) && ({row_reg, col_reg}<11'b10000000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000000001) && ({row_reg, col_reg}<11'b10000001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10000001000) && ({row_reg, col_reg}<11'b10000001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000001011) && ({row_reg, col_reg}<11'b10000011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10000011001) && ({row_reg, col_reg}<11'b10000011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10000011100) && ({row_reg, col_reg}<11'b10000100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b10000100011) && ({row_reg, col_reg}<11'b10001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10001000001) && ({row_reg, col_reg}<11'b10001001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10001001000) && ({row_reg, col_reg}<11'b10001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10001001011) && ({row_reg, col_reg}<11'b10001011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10001011001) && ({row_reg, col_reg}<11'b10001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10001011100) && ({row_reg, col_reg}<11'b10001100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b10001100011) && ({row_reg, col_reg}<11'b10010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10010000001) && ({row_reg, col_reg}<11'b10010001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10010001000) && ({row_reg, col_reg}<11'b10010001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10010001011) && ({row_reg, col_reg}<11'b10010011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10010011001) && ({row_reg, col_reg}<11'b10010011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10010011100) && ({row_reg, col_reg}<11'b10010100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b10010100011) && ({row_reg, col_reg}<11'b10011000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10011000001) && ({row_reg, col_reg}<11'b10011001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10011001000) && ({row_reg, col_reg}<11'b10011001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10011001011) && ({row_reg, col_reg}<11'b10011011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10011011001) && ({row_reg, col_reg}<11'b10011011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10011011100) && ({row_reg, col_reg}<11'b10011100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b10011100011) && ({row_reg, col_reg}<11'b10100000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10100000001) && ({row_reg, col_reg}<11'b10100001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10100001000) && ({row_reg, col_reg}<11'b10100001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10100001011) && ({row_reg, col_reg}<11'b10100011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10100011001) && ({row_reg, col_reg}<11'b10100011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10100011100) && ({row_reg, col_reg}<11'b10100100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b10100100011) && ({row_reg, col_reg}<11'b10101000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10101000001) && ({row_reg, col_reg}<11'b10101001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10101001000) && ({row_reg, col_reg}<11'b10101011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10101011100) && ({row_reg, col_reg}<11'b10101100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b10101100011) && ({row_reg, col_reg}<11'b10110000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10110000001) && ({row_reg, col_reg}<11'b10110001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10110001001) && ({row_reg, col_reg}<11'b10110011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10110011011) && ({row_reg, col_reg}<11'b10110100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b10110100011) && ({row_reg, col_reg}<11'b10111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10111000001) && ({row_reg, col_reg}<11'b10111001010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=11'b10111001010) && ({row_reg, col_reg}<11'b10111011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b10111011010) && ({row_reg, col_reg}<11'b10111100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b10111100011) && ({row_reg, col_reg}<11'b11000000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b11000000001) && ({row_reg, col_reg}<11'b11000100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b11000100011) && ({row_reg, col_reg}<11'b11001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b11001000001) && ({row_reg, col_reg}<11'b11001100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b11001100011) && ({row_reg, col_reg}<11'b11010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b11010000001) && ({row_reg, col_reg}<11'b11010100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b11010100011) && ({row_reg, col_reg}<11'b11011000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b11011000001) && ({row_reg, col_reg}<11'b11011100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b11011100011) && ({row_reg, col_reg}<11'b11100000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b11100000001) && ({row_reg, col_reg}<11'b11100100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=11'b11100100011) && ({row_reg, col_reg}<11'b11101000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b11101000001) && ({row_reg, col_reg}<11'b11101100011)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==11'b11101100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==11'b11110000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b11110000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b11110000010) && ({row_reg, col_reg}<11'b11110100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b11110100010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b11110100011) && ({row_reg, col_reg}<11'b11111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b11111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=11'b11111000011) && ({row_reg, col_reg}<11'b11111100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==11'b11111100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b11111100010) && ({row_reg, col_reg}<11'b100000000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b100000000011) && ({row_reg, col_reg}<11'b100000100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=11'b100000100001) && ({row_reg, col_reg}<=11'b100000100011)) color_data = 12'b000000000000;
	end
endmodule