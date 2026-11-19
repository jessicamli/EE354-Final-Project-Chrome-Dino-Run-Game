module groundline_rom
	(
		input wire clk,
		input wire [8:0] row,
		input wire [9:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [8:0] row_reg;
	reg [9:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin



















































































































































		if(({row_reg, col_reg}>=19'b0000000000000000000) && ({row_reg, col_reg}<19'b0100100110100110001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100100110100110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0100100110100110010) && ({row_reg, col_reg}<19'b0100101000100110001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100101000100110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100101000100110010)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=19'b0100101000100110011) && ({row_reg, col_reg}<19'b0100101010100110001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100101010100110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100101010100110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100101010100110011)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=19'b0100101010100110100) && ({row_reg, col_reg}<19'b0100101100100110001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100101100100110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0100101100100110010) && ({row_reg, col_reg}<19'b0100101100100110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100101100100110100)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=19'b0100101100100110101) && ({row_reg, col_reg}<19'b0100101110100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100101110100110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100101110100110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100101110100110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100101110100110011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100101110100110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100101110100110101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0100101110100110110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0100101110100110111) && ({row_reg, col_reg}<19'b0100110000100110001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100110000100110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100110000100110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000100110011) && ({row_reg, col_reg}<19'b0100110000100110101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100110000100110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100110000100110110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0100110000100110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0100110000100111000) && ({row_reg, col_reg}<19'b0100110010100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100110010100110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100110010100110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0100110010100110010) && ({row_reg, col_reg}<19'b0100110010100110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110010100110100) && ({row_reg, col_reg}<19'b0100110010100110110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100110010100110110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0100110010100110111)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=19'b0100110010100111000) && ({row_reg, col_reg}<19'b0100110100100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100110100100110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100110100100110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100110100100110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100110100100110011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0100110100100110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100110100100110101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0100110100100110110) && ({row_reg, col_reg}<19'b0100110100100111000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0100110100100111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0100110100100111001) && ({row_reg, col_reg}<19'b0100110110100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100110110100110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100110110100110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100110110100110010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0100110110100110011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0100110110100110100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0100110110100110101) && ({row_reg, col_reg}<19'b0100110110100110111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0100110110100110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0100110110100111000) && ({row_reg, col_reg}<19'b0100111000100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0100111000100110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100111000100110001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0100111000100110010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100111000100110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100111000100110100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100111000100110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100111000100110110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0100111000100110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0100111000100111000) && ({row_reg, col_reg}<19'b0100111010100110001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0100111010100110001) && ({row_reg, col_reg}<19'b0100111010100110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100111010100110101)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0100111010100110110)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0100111010100110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0100111010100111000) && ({row_reg, col_reg}<19'b0100111100100110100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0100111100100110100) && ({row_reg, col_reg}<19'b0100111100100110111)) color_data = 12'b111111111111;













		if(({row_reg, col_reg}>=19'b0100111100100110111) && ({row_reg, col_reg}<19'b0101010110001100101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101010110001100101) && ({row_reg, col_reg}<19'b0101010110001101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010110001101111) && ({row_reg, col_reg}<19'b0101010110111110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101010110111110000) && ({row_reg, col_reg}<19'b0101010110111111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010110111111001) && ({row_reg, col_reg}<19'b0101010111000001101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101010111000001101) && ({row_reg, col_reg}<19'b0101010111000010111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101010111000010111) && ({row_reg, col_reg}<19'b0101011000001100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011000001100100) && ({row_reg, col_reg}<19'b0101011000001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011000001100110) && ({row_reg, col_reg}<19'b0101011000001101110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101011000001101110) && ({row_reg, col_reg}<19'b0101011000001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011000001110000) && ({row_reg, col_reg}<19'b0101011000111101110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011000111101110) && ({row_reg, col_reg}<19'b0101011000111110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011000111110001) && ({row_reg, col_reg}<19'b0101011000111111000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101011000111111000) && ({row_reg, col_reg}<19'b0101011000111111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011000111111010) && ({row_reg, col_reg}<19'b0101011001000001100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011001000001100) && ({row_reg, col_reg}<19'b0101011001000001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011001000001110) && ({row_reg, col_reg}<19'b0101011001000010101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101011001000010101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101011001000010110) && ({row_reg, col_reg}<19'b0101011001000011000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101011001000011000) && ({row_reg, col_reg}<19'b0101011010001100010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011010001100010) && ({row_reg, col_reg}<19'b0101011010001100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011010001100101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011010001100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101011010001100111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=19'b0101011010001101000) && ({row_reg, col_reg}<19'b0101011010001101011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101011010001101011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101011010001101100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011010001101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101011010001101110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101011010001101111) && ({row_reg, col_reg}<19'b0101011010001110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011010001110001) && ({row_reg, col_reg}<19'b0101011010111101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011010111101100) && ({row_reg, col_reg}<19'b0101011010111110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011010111110000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101011010111110001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101011010111110010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101011010111110011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101011010111110100) && ({row_reg, col_reg}<19'b0101011010111110110)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101011010111110110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011010111110111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101011010111111000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101011010111111001) && ({row_reg, col_reg}<19'b0101011010111111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011010111111011) && ({row_reg, col_reg}<19'b0101011011000001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011011000001010) && ({row_reg, col_reg}<19'b0101011011000001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011011000001101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101011011000001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101011011000001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=19'b0101011011000010000) && ({row_reg, col_reg}<19'b0101011011000010100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101011011000010100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101011011000010101)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101011011000010110) && ({row_reg, col_reg}<19'b0101011011000011001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101011011000011001) && ({row_reg, col_reg}<19'b0101011100001100001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011100001100001) && ({row_reg, col_reg}<19'b0101011100001100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011100001100011) && ({row_reg, col_reg}<19'b0101011100001100101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011100001100101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101011100001100110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011100001100111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101011100001101000) && ({row_reg, col_reg}<19'b0101011100001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011100001101101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011100001101110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101011100001101111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101011100001110000) && ({row_reg, col_reg}<19'b0101011100001110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011100001110010) && ({row_reg, col_reg}<19'b0101011100111101011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011100111101011) && ({row_reg, col_reg}<19'b0101011100111101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011100111101101) && ({row_reg, col_reg}<19'b0101011100111101111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011100111101111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101011100111110000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101011100111110001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101011100111110010) && ({row_reg, col_reg}<19'b0101011100111110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011100111110111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101011100111111000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101011100111111001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101011100111111010) && ({row_reg, col_reg}<19'b0101011100111111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011100111111101) && ({row_reg, col_reg}<19'b0101011101000001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011101000001000) && ({row_reg, col_reg}<19'b0101011101000001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011101000001010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101011101000001011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011101000001100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101011101000001101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101011101000001110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101011101000001111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101011101000010000) && ({row_reg, col_reg}<19'b0101011101000010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011101000010100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011101000010101)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101011101000010110) && ({row_reg, col_reg}<19'b0101011101000011000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101011101000011000) && ({row_reg, col_reg}<19'b0101011101000011011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101011101000011011) && ({row_reg, col_reg}<19'b0101011110000001110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110000001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110000001111) && ({row_reg, col_reg}<19'b0101011110000111000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110000111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110000111001) && ({row_reg, col_reg}<19'b0101011110000111110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110000111111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110001000001) && ({row_reg, col_reg}<19'b0101011110001000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110001000101) && ({row_reg, col_reg}<19'b0101011110001000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110001000111) && ({row_reg, col_reg}<19'b0101011110001011110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110001011110) && ({row_reg, col_reg}<19'b0101011110001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110001100001) && ({row_reg, col_reg}<19'b0101011110001100011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011110001100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101011110001100100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011110001100101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101011110001100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101011110001100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110001101000) && ({row_reg, col_reg}<19'b0101011110001101011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110001101011) && ({row_reg, col_reg}<19'b0101011110001101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110001101110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011110001101111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101011110001110000) && ({row_reg, col_reg}<19'b0101011110001110010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011110001110010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101011110001110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110001110100) && ({row_reg, col_reg}<19'b0101011110010000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110010000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110010000110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110010000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110010001000) && ({row_reg, col_reg}<19'b0101011110010010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110010010100) && ({row_reg, col_reg}<19'b0101011110010011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110010011001) && ({row_reg, col_reg}<19'b0101011110010100000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110010100000) && ({row_reg, col_reg}<19'b0101011110010100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110010100101) && ({row_reg, col_reg}<19'b0101011110010100111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110010100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110010101000) && ({row_reg, col_reg}<19'b0101011110011001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110011001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110011001001) && ({row_reg, col_reg}<19'b0101011110011001111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110011001111) && ({row_reg, col_reg}<19'b0101011110011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110011010001) && ({row_reg, col_reg}<19'b0101011110011010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110011010101) && ({row_reg, col_reg}<19'b0101011110011011011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110011011011) && ({row_reg, col_reg}<19'b0101011110011110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110011110010) && ({row_reg, col_reg}<19'b0101011110011110100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110011110100) && ({row_reg, col_reg}<19'b0101011110011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110011110111) && ({row_reg, col_reg}<19'b0101011110100100110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110100100110) && ({row_reg, col_reg}<19'b0101011110100110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110100110101) && ({row_reg, col_reg}<19'b0101011110101001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110101001000) && ({row_reg, col_reg}<19'b0101011110101001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110101001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110101001100) && ({row_reg, col_reg}<19'b0101011110101011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110101011100) && ({row_reg, col_reg}<19'b0101011110101100011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110101100011) && ({row_reg, col_reg}<19'b0101011110101101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110101101110) && ({row_reg, col_reg}<19'b0101011110101110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110101110000) && ({row_reg, col_reg}<19'b0101011110101110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110101110010) && ({row_reg, col_reg}<19'b0101011110101110100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110101110100) && ({row_reg, col_reg}<19'b0101011110101110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110101110110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110101110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110101111000) && ({row_reg, col_reg}<19'b0101011110101111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110101111010) && ({row_reg, col_reg}<19'b0101011110101111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110101111100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110101111101) && ({row_reg, col_reg}<19'b0101011110110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110110000000) && ({row_reg, col_reg}<19'b0101011110110010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011110110010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110110010101) && ({row_reg, col_reg}<19'b0101011110110010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110110010111) && ({row_reg, col_reg}<19'b0101011110110011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110110011001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110110011010) && ({row_reg, col_reg}<19'b0101011110110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110110110111) && ({row_reg, col_reg}<19'b0101011110110111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110110111010) && ({row_reg, col_reg}<19'b0101011110111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110111000001) && ({row_reg, col_reg}<19'b0101011110111001101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110111001101) && ({row_reg, col_reg}<19'b0101011110111101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110111101100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011110111101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101011110111101110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101011110111101111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101011110111110000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101011110111110001) && ({row_reg, col_reg}<19'b0101011110111110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110111110100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011110111110101) && ({row_reg, col_reg}<19'b0101011110111111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011110111111000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101011110111111001)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011110111111010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101011110111111011) && ({row_reg, col_reg}<19'b0101011110111111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110111111111) && ({row_reg, col_reg}<19'b0101011111000000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011111000000101) && ({row_reg, col_reg}<19'b0101011111000001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011111000001001) && ({row_reg, col_reg}<19'b0101011111000001011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101011111000001011) && ({row_reg, col_reg}<19'b0101011111000001101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011111000001101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101011111000001110) && ({row_reg, col_reg}<19'b0101011111000010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011111000010000) && ({row_reg, col_reg}<19'b0101011111000010011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011111000010011) && ({row_reg, col_reg}<19'b0101011111000010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011111000010101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011111000010110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101011111000010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101011111000011000) && ({row_reg, col_reg}<19'b0101011111000011010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101011111000011010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101011111000011011) && ({row_reg, col_reg}<19'b0101011111000011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011111000011111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011111000100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011111000100001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011111000100010) && ({row_reg, col_reg}<19'b0101011111000100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011111000100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011111000100101) && ({row_reg, col_reg}<19'b0101011111000100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011111000100111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011111000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101011111000101001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011111000101010) && ({row_reg, col_reg}<19'b0101011111001000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011111001000110) && ({row_reg, col_reg}<19'b0101011111001001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101011111001001000) && ({row_reg, col_reg}<19'b0101011111001110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011111001110011) && ({row_reg, col_reg}<19'b0101011111001110101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011111001110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011111001110110) && ({row_reg, col_reg}<19'b0101011111001111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011111001111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011111001111010) && ({row_reg, col_reg}<19'b0101011111001111101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011111001111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011111001111110) && ({row_reg, col_reg}<19'b0101011111010000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101011111010000010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101011111010000011) && ({row_reg, col_reg}<19'b0101100000000000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100000000000000) && ({row_reg, col_reg}<19'b0101100000001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100000001100001)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101100000001100010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100000001100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=19'b0101100000001100100) && ({row_reg, col_reg}<19'b0101100000001100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100000001100111) && ({row_reg, col_reg}<19'b0101100000001101100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100000001101100) && ({row_reg, col_reg}<19'b0101100000001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100000001110000) && ({row_reg, col_reg}<19'b0101100000001110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100000001110010)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101100000001110011) && ({row_reg, col_reg}<19'b0101100000010001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100000010001010) && ({row_reg, col_reg}<19'b0101100000010010010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100000010010010) && ({row_reg, col_reg}<19'b0101100000111101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100000111101100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100000111101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101100000111101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101100000111101111) && ({row_reg, col_reg}<19'b0101100000111110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100000111110010) && ({row_reg, col_reg}<19'b0101100000111110111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100000111110111) && ({row_reg, col_reg}<19'b0101100000111111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100000111111010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100000111111011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100000111111100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=19'b0101100000111111101) && ({row_reg, col_reg}<19'b0101100001000000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100001000000111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101100001000001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101100001000001001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100001000001010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=19'b0101100001000001011) && ({row_reg, col_reg}<19'b0101100001000001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100001000001111) && ({row_reg, col_reg}<19'b0101100001000010101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100001000010101) && ({row_reg, col_reg}<19'b0101100001000010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100001000010111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101100001000011000) && ({row_reg, col_reg}<19'b0101100001000011010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100001000011010)) color_data = 12'b101010101010;

		if(({row_reg, col_reg}>=19'b0101100001000011011) && ({row_reg, col_reg}<19'b0101100010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100010000000000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101100010000000001) && ({row_reg, col_reg}<19'b0101100010001100001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101100010001100001) && ({row_reg, col_reg}<19'b0101100010001100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101100010001100011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101100010001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100010001100101) && ({row_reg, col_reg}<19'b0101100010001101101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100010001101101) && ({row_reg, col_reg}<19'b0101100010001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100010001110000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101100010001110001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100010001110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=19'b0101100010001110011) && ({row_reg, col_reg}<19'b0101100010010001000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100010010001000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101100010010001001) && ({row_reg, col_reg}<19'b0101100010010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100010010010100) && ({row_reg, col_reg}<19'b0101100010011011001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100010011011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101100010011011010) && ({row_reg, col_reg}<19'b0101100010111101011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100010111101011)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101100010111101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101100010111101101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101100010111101110) && ({row_reg, col_reg}<19'b0101100010111110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100010111110000) && ({row_reg, col_reg}<19'b0101100010111111000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100010111111000) && ({row_reg, col_reg}<19'b0101100010111111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100010111111010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101100010111111011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100010111111100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100010111111101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100010111111110)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101100010111111111) && ({row_reg, col_reg}<19'b0101100011000001000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100011000001000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100011000001001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101100011000001010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101100011000001011) && ({row_reg, col_reg}<19'b0101100011000001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100011000001101) && ({row_reg, col_reg}<19'b0101100011000010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101100011000010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100011000010111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101100011000011000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101100011000011001) && ({row_reg, col_reg}<19'b0101100011000011011)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101100011000011011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101100011000011100) && ({row_reg, col_reg}<19'b0101100011000011110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100011000011110)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101100011000011111) && ({row_reg, col_reg}<19'b0101100011000100011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100011000100011)) color_data = 12'b100110011001;

		if(({row_reg, col_reg}>=19'b0101100011000100100) && ({row_reg, col_reg}<19'b0101100100000000000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101100100000000000) && ({row_reg, col_reg}<19'b0101100100000000010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101100100000000010) && ({row_reg, col_reg}<19'b0101100100001100010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100100001100010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101100100001100011) && ({row_reg, col_reg}<19'b0101100100001100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100100001100101) && ({row_reg, col_reg}<19'b0101100100001101110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100100001101110) && ({row_reg, col_reg}<19'b0101100100001110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100100001110010) && ({row_reg, col_reg}<19'b0101100100010000111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100100010000111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101100100010001000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101100100010001001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101100100010001010) && ({row_reg, col_reg}<19'b0101100100010010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100100010010010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101100100010010011)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==19'b0101100100010010100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=19'b0101100100010010101) && ({row_reg, col_reg}<19'b0101100100011001010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100100011001010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101100100011001011) && ({row_reg, col_reg}<19'b0101100100011110001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100100011110001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101100100011110010) && ({row_reg, col_reg}<19'b0101100100111101100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100100111101100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101100100111101101) && ({row_reg, col_reg}<19'b0101100100111101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100100111101111) && ({row_reg, col_reg}<19'b0101100100111111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100100111111001) && ({row_reg, col_reg}<19'b0101100100111111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100100111111100) && ({row_reg, col_reg}<19'b0101100101000001000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100101000001000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101100101000001001) && ({row_reg, col_reg}<19'b0101100101000001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100101000001011) && ({row_reg, col_reg}<19'b0101100101000010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100101000010111) && ({row_reg, col_reg}<19'b0101100101000011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100101000011001)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=19'b0101100101000011010) && ({row_reg, col_reg}<19'b0101100110000000000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100110000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110000000001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101100110000000010) && ({row_reg, col_reg}<19'b0101100110001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100110001100100) && ({row_reg, col_reg}<19'b0101100110001110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100110001110000) && ({row_reg, col_reg}<19'b0101100110010000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110010000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101100110010000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110010001000)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101100110010001001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=19'b0101100110010001010) && ({row_reg, col_reg}<19'b0101100110010010010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101100110010010010)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101100110010010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101100110010010100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101100110010010101) && ({row_reg, col_reg}<19'b0101100110010100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110010100001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101100110010100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100110010100011) && ({row_reg, col_reg}<19'b0101100110010100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101100110010100110) && ({row_reg, col_reg}<19'b0101100110011011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110011011101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101100110011011110) && ({row_reg, col_reg}<19'b0101100110101110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110101110011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101100110101110100) && ({row_reg, col_reg}<19'b0101100110110010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110110010101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101100110110010110) && ({row_reg, col_reg}<19'b0101100110110011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110110011001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101100110110011010) && ({row_reg, col_reg}<19'b0101100110111101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100110111101110) && ({row_reg, col_reg}<19'b0101100110111111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100110111111010) && ({row_reg, col_reg}<19'b0101100111000001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100111000001010) && ({row_reg, col_reg}<19'b0101100111000011001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101100111000011001) && ({row_reg, col_reg}<19'b0101100111000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100111000101000)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=19'b0101100111000101001) && ({row_reg, col_reg}<19'b0101101000000000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000000000101) && ({row_reg, col_reg}<19'b0101101000000000111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101000000000111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101000000001000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101000000001001) && ({row_reg, col_reg}<19'b0101101000000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101000000101000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101000000101001) && ({row_reg, col_reg}<19'b0101101000000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101000000111110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101000000111111) && ({row_reg, col_reg}<19'b0101101000001000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000001000111) && ({row_reg, col_reg}<19'b0101101000001010001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000001010001) && ({row_reg, col_reg}<19'b0101101000001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000001100010) && ({row_reg, col_reg}<19'b0101101000001110101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000001110101) && ({row_reg, col_reg}<19'b0101101000001111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000001111011) && ({row_reg, col_reg}<19'b0101101000001111111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101000001111111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101000010000000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101000010000001) && ({row_reg, col_reg}<19'b0101101000010001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000010001001) && ({row_reg, col_reg}<19'b0101101000010010000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101101000010010000)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101101000010010001) && ({row_reg, col_reg}<19'b0101101000010010011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101101000010010011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101101000010010100) && ({row_reg, col_reg}<19'b0101101000010110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000010110000) && ({row_reg, col_reg}<19'b0101101000011000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000011000101) && ({row_reg, col_reg}<19'b0101101000011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101000011010111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101000011011000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101101000011011001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101000011011010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101101000011011011) && ({row_reg, col_reg}<19'b0101101000011100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000011100011) && ({row_reg, col_reg}<19'b0101101000011101010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000011101010) && ({row_reg, col_reg}<19'b0101101000011110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101000011110110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101000011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000011111000) && ({row_reg, col_reg}<19'b0101101000011111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000011111010) && ({row_reg, col_reg}<19'b0101101000100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000100001111) && ({row_reg, col_reg}<19'b0101101000100011001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000100011001) && ({row_reg, col_reg}<19'b0101101000100111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000100111000) && ({row_reg, col_reg}<19'b0101101000101001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000101001001) && ({row_reg, col_reg}<19'b0101101000101010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000101010011) && ({row_reg, col_reg}<19'b0101101000101011000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000101011000) && ({row_reg, col_reg}<19'b0101101000101100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000101100100) && ({row_reg, col_reg}<19'b0101101000101110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000101110000) && ({row_reg, col_reg}<19'b0101101000101110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101000101110011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101000101110100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101101000101110101) && ({row_reg, col_reg}<19'b0101101000101111001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101000101111001) && ({row_reg, col_reg}<19'b0101101000110000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000110000100) && ({row_reg, col_reg}<19'b0101101000110010001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000110010001) && ({row_reg, col_reg}<19'b0101101000110100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000110100010) && ({row_reg, col_reg}<19'b0101101000110110110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000110110110) && ({row_reg, col_reg}<19'b0101101000111100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000111100101) && ({row_reg, col_reg}<19'b0101101000111111100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101000111111100) && ({row_reg, col_reg}<19'b0101101001000000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101001000000100) && ({row_reg, col_reg}<19'b0101101001000011011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101001000011011) && ({row_reg, col_reg}<19'b0101101001000011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101001000011111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101001000100000) && ({row_reg, col_reg}<19'b0101101001000100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101001000100100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101001000100101) && ({row_reg, col_reg}<19'b0101101001000100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101001000100111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101001000101000) && ({row_reg, col_reg}<19'b0101101001000101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101001000101110) && ({row_reg, col_reg}<19'b0101101001000110011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101001000110011) && ({row_reg, col_reg}<19'b0101101001001001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101001001001110) && ({row_reg, col_reg}<19'b0101101001001011001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101001001011001) && ({row_reg, col_reg}<19'b0101101001010000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101001010000100) && ({row_reg, col_reg}<19'b0101101001010000110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101001010000110)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=19'b0101101001010000111) && ({row_reg, col_reg}<19'b0101101010000000000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101010000000000) && ({row_reg, col_reg}<19'b0101101010000000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101010000000101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=19'b0101101010000000110) && ({row_reg, col_reg}<19'b0101101010000001000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101101010000001000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101010000001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010000001010) && ({row_reg, col_reg}<19'b0101101010000010011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010000010011) && ({row_reg, col_reg}<19'b0101101010000011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010000011010) && ({row_reg, col_reg}<19'b0101101010000100111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010000100111) && ({row_reg, col_reg}<19'b0101101010000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010000110101) && ({row_reg, col_reg}<19'b0101101010000111011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010000111011) && ({row_reg, col_reg}<19'b0101101010001000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010001000011) && ({row_reg, col_reg}<19'b0101101010001111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101010001111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101010001111011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101101010001111100) && ({row_reg, col_reg}<19'b0101101010010000000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101101010010000000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101101010010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010010000010) && ({row_reg, col_reg}<19'b0101101010010000111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010010000111) && ({row_reg, col_reg}<19'b0101101010010010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010010010101) && ({row_reg, col_reg}<19'b0101101010010011111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010010011111) && ({row_reg, col_reg}<19'b0101101010010100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010010100111) && ({row_reg, col_reg}<19'b0101101010010101001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101010010101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010010101010) && ({row_reg, col_reg}<19'b0101101010011001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010011001000) && ({row_reg, col_reg}<19'b0101101010011001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010011001100) && ({row_reg, col_reg}<19'b0101101010011010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101010011010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101010011010111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101101010011011000) && ({row_reg, col_reg}<19'b0101101010011011011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101101010011011011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101010011011100) && ({row_reg, col_reg}<19'b0101101010011011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010011011111) && ({row_reg, col_reg}<19'b0101101010011101110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010011101110) && ({row_reg, col_reg}<19'b0101101010011110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010011110010) && ({row_reg, col_reg}<19'b0101101010100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010100110000) && ({row_reg, col_reg}<19'b0101101010100110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010100110100) && ({row_reg, col_reg}<19'b0101101010101001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010101001011) && ({row_reg, col_reg}<19'b0101101010101010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010101010000) && ({row_reg, col_reg}<19'b0101101010101110010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101010101110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101010101110011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101101010101110100) && ({row_reg, col_reg}<19'b0101101010101111000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101101010101111000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101101010101111001) && ({row_reg, col_reg}<19'b0101101010110000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010110000001) && ({row_reg, col_reg}<19'b0101101010110010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010110010100) && ({row_reg, col_reg}<19'b0101101010110010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101010110010110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101010110010111) && ({row_reg, col_reg}<19'b0101101010110011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010110011011) && ({row_reg, col_reg}<19'b0101101010110111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010110111001) && ({row_reg, col_reg}<19'b0101101010110111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010110111101) && ({row_reg, col_reg}<19'b0101101010111011010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101010111011010) && ({row_reg, col_reg}<19'b0101101010111100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010111100001) && ({row_reg, col_reg}<19'b0101101011000011101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101011000011101) && ({row_reg, col_reg}<19'b0101101011000100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101011000100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101011000100111) && ({row_reg, col_reg}<19'b0101101011000101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101011000101010) && ({row_reg, col_reg}<19'b0101101011000111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101011000111001) && ({row_reg, col_reg}<19'b0101101011001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101011001001001) && ({row_reg, col_reg}<19'b0101101011001011111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101011001011111) && ({row_reg, col_reg}<19'b0101101011001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101011001101001) && ({row_reg, col_reg}<19'b0101101011001110101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101011001110101) && ({row_reg, col_reg}<19'b0101101011001111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101011001111011) && ({row_reg, col_reg}<19'b0101101011010000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101011010000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101011010000100) && ({row_reg, col_reg}<19'b0101101011010000110)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=19'b0101101011010000110) && ({row_reg, col_reg}<19'b0101101100000000000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=19'b0101101100000000000) && ({row_reg, col_reg}<19'b0101101100000000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100000000010) && ({row_reg, col_reg}<19'b0101101100000000100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100000000100) && ({row_reg, col_reg}<19'b0101101100000001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100000001001) && ({row_reg, col_reg}<19'b0101101100000010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100000010111) && ({row_reg, col_reg}<19'b0101101100000011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100000011001) && ({row_reg, col_reg}<19'b0101101100000101000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100000101000) && ({row_reg, col_reg}<19'b0101101100000101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100000101010)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101101100000101011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101101100000101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100000101101) && ({row_reg, col_reg}<19'b0101101100000110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100000110000) && ({row_reg, col_reg}<19'b0101101100000110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100000110100) && ({row_reg, col_reg}<19'b0101101100000111101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100000111101) && ({row_reg, col_reg}<19'b0101101100000111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100000111111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101101100001000000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101100001000001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101100001000010) && ({row_reg, col_reg}<19'b0101101100001101001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100001101001) && ({row_reg, col_reg}<19'b0101101100001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100001101101) && ({row_reg, col_reg}<19'b0101101100001111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100001111010) && ({row_reg, col_reg}<19'b0101101100001111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100001111100) && ({row_reg, col_reg}<19'b0101101100001111111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101101100001111111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101100010000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100010000001) && ({row_reg, col_reg}<19'b0101101100010001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100010001001) && ({row_reg, col_reg}<19'b0101101100010010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100010010010) && ({row_reg, col_reg}<19'b0101101100010011111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100010011111) && ({row_reg, col_reg}<19'b0101101100010100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100010100001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101101100010100010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101100010100011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101101100010100100) && ({row_reg, col_reg}<19'b0101101100010100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100010100110) && ({row_reg, col_reg}<19'b0101101100010101001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100010101001) && ({row_reg, col_reg}<19'b0101101100010101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100010101011) && ({row_reg, col_reg}<19'b0101101100011001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101100011001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100011001010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101101100011001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100011001100) && ({row_reg, col_reg}<19'b0101101100011010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100011010110) && ({row_reg, col_reg}<19'b0101101100011011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100011011000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101101100011011001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101100011011010) && ({row_reg, col_reg}<19'b0101101100011011100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101100011011100) && ({row_reg, col_reg}<19'b0101101100011100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100011100000) && ({row_reg, col_reg}<19'b0101101100011101110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100011101110) && ({row_reg, col_reg}<19'b0101101100011110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100011110000)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101101100011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100011110010) && ({row_reg, col_reg}<19'b0101101100100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100100110000) && ({row_reg, col_reg}<19'b0101101100100110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100100110100) && ({row_reg, col_reg}<19'b0101101100101001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101100101001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100101001100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101101100101001101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101100101001110)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101101100101001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100101010000) && ({row_reg, col_reg}<19'b0101101100101110011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101100101110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100101110100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101100101110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100101110110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101100101110111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101100101111000) && ({row_reg, col_reg}<19'b0101101100101111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100101111010) && ({row_reg, col_reg}<19'b0101101100101111101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101100101111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100101111110)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101100101111111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101100110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100110000001) && ({row_reg, col_reg}<19'b0101101100110010101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101100110010101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101100110010110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101101100110010111) && ({row_reg, col_reg}<19'b0101101100110011001)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101100110011001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101100110011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100110011011) && ({row_reg, col_reg}<19'b0101101100110111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101100110111001) && ({row_reg, col_reg}<19'b0101101100110111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100110111101) && ({row_reg, col_reg}<19'b0101101100111011010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101100111011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101100111011011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101101100111011100) && ({row_reg, col_reg}<19'b0101101100111011111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101100111011111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101100111100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101100111100001) && ({row_reg, col_reg}<19'b0101101101000011101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101101000011101) && ({row_reg, col_reg}<19'b0101101101000100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101101000100100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101101101000100101) && ({row_reg, col_reg}<19'b0101101101000100111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101101000100111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101101101000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101101000101001) && ({row_reg, col_reg}<19'b0101101101000111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101101000111001) && ({row_reg, col_reg}<19'b0101101101001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101101001000001) && ({row_reg, col_reg}<19'b0101101101001000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101101001000101) && ({row_reg, col_reg}<19'b0101101101001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101101001001000) && ({row_reg, col_reg}<19'b0101101101001011110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101101001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101101001011111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101101101001100000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101101101001100001) && ({row_reg, col_reg}<19'b0101101101001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101101001100100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101101101001100101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101101001100110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101101101001100111) && ({row_reg, col_reg}<19'b0101101101001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101101001101001) && ({row_reg, col_reg}<19'b0101101101001110101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101101001110101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101101001110110) && ({row_reg, col_reg}<19'b0101101101001111001)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101101001111001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101101101001111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101101001111011) && ({row_reg, col_reg}<19'b0101101101010000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101101010000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101101010000100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101101010000101) && ({row_reg, col_reg}<19'b0101101101010001000)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}==19'b0101101101010001000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101110000000000) && ({row_reg, col_reg}<19'b0101101110000000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110000000010) && ({row_reg, col_reg}<19'b0101101110000010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110000010111) && ({row_reg, col_reg}<19'b0101101110000011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110000011011) && ({row_reg, col_reg}<19'b0101101110000101000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110000101000) && ({row_reg, col_reg}<19'b0101101110000101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101110000101010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101110000101011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101101110000101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110000101101) && ({row_reg, col_reg}<19'b0101101110000101111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110000101111) && ({row_reg, col_reg}<19'b0101101110000110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110000110110) && ({row_reg, col_reg}<19'b0101101110000111101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110000111101) && ({row_reg, col_reg}<19'b0101101110001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101110001000000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101110001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110001000010) && ({row_reg, col_reg}<19'b0101101110001101000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110001101000) && ({row_reg, col_reg}<19'b0101101110001101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110001101110) && ({row_reg, col_reg}<19'b0101101110001111100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110001111100) && ({row_reg, col_reg}<19'b0101101110010000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110010000000) && ({row_reg, col_reg}<19'b0101101110010011100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110010011100) && ({row_reg, col_reg}<19'b0101101110010100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101110010100001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101110010100010) && ({row_reg, col_reg}<19'b0101101110010100100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101110010100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110010100101) && ({row_reg, col_reg}<19'b0101101110010101000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110010101000) && ({row_reg, col_reg}<19'b0101101110010101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110010101101) && ({row_reg, col_reg}<19'b0101101110011001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110011001001) && ({row_reg, col_reg}<19'b0101101110011001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110011001100) && ({row_reg, col_reg}<19'b0101101110011010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110011010111) && ({row_reg, col_reg}<19'b0101101110011011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101110011011101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101101110011011110)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101110011011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110011100000) && ({row_reg, col_reg}<19'b0101101110011101110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110011101110) && ({row_reg, col_reg}<19'b0101101110011110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110011110010) && ({row_reg, col_reg}<19'b0101101110100000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110100000011) && ({row_reg, col_reg}<19'b0101101110100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110100000110) && ({row_reg, col_reg}<19'b0101101110100001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110100001000) && ({row_reg, col_reg}<19'b0101101110100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110100001100) && ({row_reg, col_reg}<19'b0101101110100011100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110100011100) && ({row_reg, col_reg}<19'b0101101110100100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110100100001) && ({row_reg, col_reg}<19'b0101101110100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101110100110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101110100110001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101101110100110010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101110100110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110100110100) && ({row_reg, col_reg}<19'b0101101110101001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101110101001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101110101001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101110101001101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101101110101001110) && ({row_reg, col_reg}<19'b0101101110101010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110101010000) && ({row_reg, col_reg}<19'b0101101110101011110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110101011110) && ({row_reg, col_reg}<19'b0101101110101100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110101100001) && ({row_reg, col_reg}<19'b0101101110101110111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101110101110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110101111000) && ({row_reg, col_reg}<19'b0101101110101111101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110101111101) && ({row_reg, col_reg}<19'b0101101110110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110110000000) && ({row_reg, col_reg}<19'b0101101110110010101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101110110010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110110010110) && ({row_reg, col_reg}<19'b0101101110110011001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101110110011001) && ({row_reg, col_reg}<19'b0101101110110011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110110011011) && ({row_reg, col_reg}<19'b0101101110110111000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101110110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101110110111001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101110110111010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101101110110111011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101110110111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110110111101) && ({row_reg, col_reg}<19'b0101101110111000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110111000001) && ({row_reg, col_reg}<19'b0101101110111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110111000110) && ({row_reg, col_reg}<19'b0101101110111011011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101110111011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101110111011100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101110111011101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101110111011110)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101110111011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110111100000) && ({row_reg, col_reg}<19'b0101101110111111011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101110111111011) && ({row_reg, col_reg}<19'b0101101110111111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101110111111111) && ({row_reg, col_reg}<19'b0101101111000011101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101111000011101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101111000011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101111000011111) && ({row_reg, col_reg}<19'b0101101111000100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101111000100001) && ({row_reg, col_reg}<19'b0101101111000100011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101111000100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101111000100100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101101111000100101) && ({row_reg, col_reg}<19'b0101101111000100111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101101111000100111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101101111000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101111000101001) && ({row_reg, col_reg}<19'b0101101111000111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101111000111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101111000111010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101111000111011) && ({row_reg, col_reg}<19'b0101101111000111110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=19'b0101101111000111110) && ({row_reg, col_reg}<19'b0101101111001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101111001000001) && ({row_reg, col_reg}<19'b0101101111001000100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101111001000100) && ({row_reg, col_reg}<19'b0101101111001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101111001001000) && ({row_reg, col_reg}<19'b0101101111001011110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101111001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101111001011111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101111001100000) && ({row_reg, col_reg}<19'b0101101111001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101111001100100) && ({row_reg, col_reg}<19'b0101101111001100111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101111001100111) && ({row_reg, col_reg}<19'b0101101111001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101111001101001) && ({row_reg, col_reg}<19'b0101101111001110101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101101111001110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101101111001110110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101101111001110111) && ({row_reg, col_reg}<19'b0101101111001111001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101101111001111001) && ({row_reg, col_reg}<19'b0101101111001111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101111001111011) && ({row_reg, col_reg}<19'b0101101111010000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101101111010000000) && ({row_reg, col_reg}<19'b0101101111010000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101111010000010) && ({row_reg, col_reg}<19'b0101101111010000100)) color_data = 12'b010001110100;

		if(({row_reg, col_reg}>=19'b0101101111010000100) && ({row_reg, col_reg}<19'b0101110000000000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000000000010) && ({row_reg, col_reg}<19'b0101110000000010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000000010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000000010111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101110000000011000) && ({row_reg, col_reg}<19'b0101110000000011010)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110000000011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000000011011) && ({row_reg, col_reg}<19'b0101110000000101001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000000101001) && ({row_reg, col_reg}<19'b0101110000000101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000000101100) && ({row_reg, col_reg}<19'b0101110000000101111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000000110000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101110000000110001) && ({row_reg, col_reg}<19'b0101110000000110101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110000000110101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110000000110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000000110111) && ({row_reg, col_reg}<19'b0101110000000111111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000000111111) && ({row_reg, col_reg}<19'b0101110000001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000001000001) && ({row_reg, col_reg}<19'b0101110000001010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000001010111) && ({row_reg, col_reg}<19'b0101110000001011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000001011001) && ({row_reg, col_reg}<19'b0101110000001101000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000001101000) && ({row_reg, col_reg}<19'b0101110000001101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000001101010) && ({row_reg, col_reg}<19'b0101110000001101100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110000001101100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110000001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000001101110) && ({row_reg, col_reg}<19'b0101110000010011011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000010011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000010011100) && ({row_reg, col_reg}<19'b0101110000010011110)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110000010011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000010011111) && ({row_reg, col_reg}<19'b0101110000010100001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000010100001) && ({row_reg, col_reg}<19'b0101110000010100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000010100101) && ({row_reg, col_reg}<19'b0101110000010100111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000010100111) && ({row_reg, col_reg}<19'b0101110000010101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000010101001) && ({row_reg, col_reg}<19'b0101110000010101100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110000010101100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110000010101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000010101110) && ({row_reg, col_reg}<19'b0101110000011001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000011001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000011001011) && ({row_reg, col_reg}<19'b0101110000011011100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000011011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000011011101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110000011011110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110000011011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000011100000) && ({row_reg, col_reg}<19'b0101110000011101111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000011101111) && ({row_reg, col_reg}<19'b0101110000011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000011110001) && ({row_reg, col_reg}<19'b0101110000100000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000100000011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110000100000100)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=19'b0101110000100000101) && ({row_reg, col_reg}<19'b0101110000100001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000100001001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110000100001010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101110000100001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000100001100) && ({row_reg, col_reg}<19'b0101110000100011011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000100011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000100011100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101110000100011101) && ({row_reg, col_reg}<19'b0101110000100011111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110000100011111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101110000100100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000100100001) && ({row_reg, col_reg}<19'b0101110000100110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000100110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000100110001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110000100110010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110000100110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000100110100) && ({row_reg, col_reg}<19'b0101110000101001100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000101001100) && ({row_reg, col_reg}<19'b0101110000101001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000101001111) && ({row_reg, col_reg}<19'b0101110000101011101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000101011101) && ({row_reg, col_reg}<19'b0101110000101100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000101100010) && ({row_reg, col_reg}<19'b0101110000101111110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000101111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000101111111) && ({row_reg, col_reg}<19'b0101110000110010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000110010110) && ({row_reg, col_reg}<19'b0101110000110011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000110011001) && ({row_reg, col_reg}<19'b0101110000110111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000110111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000110111010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110000110111011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110000110111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000110111101) && ({row_reg, col_reg}<19'b0101110000111000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000111000000) && ({row_reg, col_reg}<19'b0101110000111000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000111000111) && ({row_reg, col_reg}<19'b0101110000111001111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000111001111) && ({row_reg, col_reg}<19'b0101110000111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000111010010) && ({row_reg, col_reg}<19'b0101110000111011011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110000111011011) && ({row_reg, col_reg}<19'b0101110000111100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110000111100000) && ({row_reg, col_reg}<19'b0101110000111111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110000111111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110000111111011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101110000111111100) && ({row_reg, col_reg}<19'b0101110000111111110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110000111111110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110000111111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110001000000000) && ({row_reg, col_reg}<19'b0101110001000011101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110001000011101) && ({row_reg, col_reg}<19'b0101110001000100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110001000100000) && ({row_reg, col_reg}<19'b0101110001000100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110001000100100) && ({row_reg, col_reg}<19'b0101110001000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110001000101000) && ({row_reg, col_reg}<19'b0101110001000111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110001000111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110001000111010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110001000111011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110001000111100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110001000111101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110001000111110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110001000111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110001001000000) && ({row_reg, col_reg}<19'b0101110001001000100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110001001000100) && ({row_reg, col_reg}<19'b0101110001001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110001001001001) && ({row_reg, col_reg}<19'b0101110001001011111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110001001011111) && ({row_reg, col_reg}<19'b0101110001001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110001001101000) && ({row_reg, col_reg}<19'b0101110001001110110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110001001110110) && ({row_reg, col_reg}<19'b0101110001001111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110001001111010) && ({row_reg, col_reg}<19'b0101110001001111111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110001001111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110001010000000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110001010000001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110001010000010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101110001010000011) && ({row_reg, col_reg}<19'b0101110010000000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010000000000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110010000000001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101110010000000010) && ({row_reg, col_reg}<19'b0101110010000010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110010000010110) && ({row_reg, col_reg}<19'b0101110010000011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010000011000) && ({row_reg, col_reg}<19'b0101110010000011010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101110010000011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010000011011) && ({row_reg, col_reg}<19'b0101110010000101111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010000110000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101110010000110001) && ({row_reg, col_reg}<19'b0101110010000110101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110010000110101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110010000110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010000110111) && ({row_reg, col_reg}<19'b0101110010001010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010001010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010001010111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110010001011000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110010001011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010001011010) && ({row_reg, col_reg}<19'b0101110010001101000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110010001101000) && ({row_reg, col_reg}<19'b0101110010001101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010001101010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110010001101011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110010001101100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110010001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010001101110) && ({row_reg, col_reg}<19'b0101110010010011011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010010011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010010011100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110010010011101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110010010011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010010011111) && ({row_reg, col_reg}<19'b0101110010010100111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110010010100111) && ({row_reg, col_reg}<19'b0101110010010101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010010101001) && ({row_reg, col_reg}<19'b0101110010010101100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110010010101100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110010010101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010010101110) && ({row_reg, col_reg}<19'b0101110010011011101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110010011011101) && ({row_reg, col_reg}<19'b0101110010011011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010011011111) && ({row_reg, col_reg}<19'b0101110010100000010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010100000011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110010100000100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101110010100000101) && ({row_reg, col_reg}<19'b0101110010100001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010100001001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110010100001010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110010100001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010100001100) && ({row_reg, col_reg}<19'b0101110010100011011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010100011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010100011100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=19'b0101110010100011101) && ({row_reg, col_reg}<19'b0101110010100011111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110010100011111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==19'b0101110010100100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010100100001) && ({row_reg, col_reg}<19'b0101110010100110001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110010100110001) && ({row_reg, col_reg}<19'b0101110010100110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010100110011) && ({row_reg, col_reg}<19'b0101110010101011100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010101011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010101011101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101110010101011110) && ({row_reg, col_reg}<19'b0101110010101100001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110010101100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010101100010) && ({row_reg, col_reg}<19'b0101110010110111001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110010110111001) && ({row_reg, col_reg}<19'b0101110010110111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010110111101) && ({row_reg, col_reg}<19'b0101110010111000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010111000001) && ({row_reg, col_reg}<19'b0101110010111000110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101110010111000110) && ({row_reg, col_reg}<19'b0101110010111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010111001000) && ({row_reg, col_reg}<19'b0101110010111001110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010111001111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110010111010000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110010111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110010111010010) && ({row_reg, col_reg}<19'b0101110010111111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110010111111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110010111111011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101110010111111100) && ({row_reg, col_reg}<19'b0101110010111111110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==19'b0101110010111111110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110010111111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110011000000000) && ({row_reg, col_reg}<19'b0101110011000011110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110011000011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110011000011111) && ({row_reg, col_reg}<19'b0101110011000111010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110011000111010) && ({row_reg, col_reg}<19'b0101110011001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110011001000000) && ({row_reg, col_reg}<19'b0101110011001000100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110011001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110011001000101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101110011001000110) && ({row_reg, col_reg}<19'b0101110011001001000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=19'b0101110011001001000) && ({row_reg, col_reg}<19'b0101110011001001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110011001001010) && ({row_reg, col_reg}<19'b0101110011010000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110011010000000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110011010000001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==19'b0101110011010000010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101110011010000011) && ({row_reg, col_reg}<19'b0101110100000000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110100000000000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101110100000000001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=19'b0101110100000000010) && ({row_reg, col_reg}<19'b0101110100000010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100000010111) && ({row_reg, col_reg}<19'b0101110100000011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100000011010) && ({row_reg, col_reg}<19'b0101110100000110000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100000110000) && ({row_reg, col_reg}<19'b0101110100000110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100000110110) && ({row_reg, col_reg}<19'b0101110100001010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110100001010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110100001010111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110100001011000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110100001011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100001011010) && ({row_reg, col_reg}<19'b0101110100001101001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100001101001) && ({row_reg, col_reg}<19'b0101110100001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100001101101) && ({row_reg, col_reg}<19'b0101110100010011100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100010011100) && ({row_reg, col_reg}<19'b0101110100010011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100010011110) && ({row_reg, col_reg}<19'b0101110100010101000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100010101000) && ({row_reg, col_reg}<19'b0101110100010101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100010101101) && ({row_reg, col_reg}<19'b0101110100100000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100100000011) && ({row_reg, col_reg}<19'b0101110100100000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100100000101) && ({row_reg, col_reg}<19'b0101110100100001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100100001000) && ({row_reg, col_reg}<19'b0101110100100001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100100001011) && ({row_reg, col_reg}<19'b0101110100100011100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100100011100) && ({row_reg, col_reg}<19'b0101110100100100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100100100000) && ({row_reg, col_reg}<19'b0101110100101011100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110100101011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110100101011101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110100101011110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=19'b0101110100101011111) && ({row_reg, col_reg}<19'b0101110100101100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101110100101100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100101100010) && ({row_reg, col_reg}<19'b0101110100111000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110100111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110100111000001)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=19'b0101110100111000010) && ({row_reg, col_reg}<19'b0101110100111000101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==19'b0101110100111000101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=19'b0101110100111000110) && ({row_reg, col_reg}<19'b0101110100111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100111001000) && ({row_reg, col_reg}<19'b0101110100111001110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110100111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110100111001111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==19'b0101110100111010000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==19'b0101110100111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100111010010) && ({row_reg, col_reg}<19'b0101110100111111011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110100111111011) && ({row_reg, col_reg}<19'b0101110100111111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110100111111111) && ({row_reg, col_reg}<19'b0101110101000111100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110101000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110101000111101) && ({row_reg, col_reg}<19'b0101110101001000100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110101001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110101001000101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==19'b0101110101001000110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==19'b0101110101001000111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=19'b0101110101001001000) && ({row_reg, col_reg}<19'b0101110101001001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110101001001010) && ({row_reg, col_reg}<19'b0101110101010000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101110101010000001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101110101010000010) && ({row_reg, col_reg}<19'b0101110110000000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110110000000000) && ({row_reg, col_reg}<19'b0101110110000000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110110000000010) && ({row_reg, col_reg}<19'b0101110110001010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110110001010110) && ({row_reg, col_reg}<19'b0101110110001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110110001011010) && ({row_reg, col_reg}<19'b0101110110101011100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110110101011100) && ({row_reg, col_reg}<19'b0101110110101011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110110101011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101110110101011111) && ({row_reg, col_reg}<19'b0101110110101100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110110101100010) && ({row_reg, col_reg}<19'b0101110110111000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110110111000000) && ({row_reg, col_reg}<19'b0101110110111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110110111000010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=19'b0101110110111000011) && ({row_reg, col_reg}<19'b0101110110111000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101110110111000101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==19'b0101110110111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110110111000111) && ({row_reg, col_reg}<19'b0101110110111001111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110110111001111) && ({row_reg, col_reg}<19'b0101110110111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101110110111010010) && ({row_reg, col_reg}<19'b0101110111001000100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101110111001000100) && ({row_reg, col_reg}<19'b0101110111001001010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0101110111001001010) && ({row_reg, col_reg}<19'b0101111000001011000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101111000001011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101111000001011001) && ({row_reg, col_reg}<19'b0101111000101011101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101111000101011101) && ({row_reg, col_reg}<19'b0101111000101100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101111000101100001) && ({row_reg, col_reg}<19'b0101111000111000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101111000111000001) && ({row_reg, col_reg}<19'b0101111000111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101111000111000110) && ({row_reg, col_reg}<19'b0101111000111010000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==19'b0101111000111010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101111000111010001) && ({row_reg, col_reg}<19'b0101111001001000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=19'b0101111001001000101) && ({row_reg, col_reg}<19'b0101111001001001001)) color_data = 12'b111111111111;


















































































		if(({row_reg, col_reg}>=19'b0101111001001001001) && ({row_reg, col_reg}<=19'b1000011011010001000)) color_data = 12'b010001110100;
	end
endmodule