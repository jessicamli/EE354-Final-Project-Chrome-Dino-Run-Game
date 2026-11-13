module dino_duck2_rom
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






		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000110000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000110000001)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b000110000010) && ({row_reg, col_reg}<12'b000110000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000110000111)) color_data = 12'b111011111111;

		if(({row_reg, col_reg}>=12'b000110001000) && ({row_reg, col_reg}<12'b000111000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000111000001)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b000111000010) && ({row_reg, col_reg}<12'b000111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111001000) && ({row_reg, col_reg}<12'b000111100010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000111100010)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}>=12'b000111100011) && ({row_reg, col_reg}<12'b000111110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000111110110)) color_data = 12'b110011111111;

		if(({row_reg, col_reg}>=12'b000111110111) && ({row_reg, col_reg}<12'b001000000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001000000001) && ({row_reg, col_reg}<12'b001000000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001000000011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b001000000100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001000000101) && ({row_reg, col_reg}<12'b001000001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000001011) && ({row_reg, col_reg}<12'b001000001110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001000001110) && ({row_reg, col_reg}<12'b001000100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001000100010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001000100011) && ({row_reg, col_reg}<12'b001000110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001000110110)) color_data = 12'b111011111111;

		if(({row_reg, col_reg}>=12'b001000110111) && ({row_reg, col_reg}<12'b001001000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001001000001) && ({row_reg, col_reg}<12'b001001000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001000011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b001001000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001001000101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001001000110) && ({row_reg, col_reg}<12'b001001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001001011) && ({row_reg, col_reg}<12'b001001001110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001001001110) && ({row_reg, col_reg}<12'b001001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001100010)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b001001100011) && ({row_reg, col_reg}<12'b001001100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001100101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001001100110) && ({row_reg, col_reg}<12'b001001110011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b001001110011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001001110100) && ({row_reg, col_reg}<12'b001001111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001001111000) && ({row_reg, col_reg}<12'b001010000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001010000001) && ({row_reg, col_reg}<12'b001010000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010000011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b001010000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001010000101)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001010000110) && ({row_reg, col_reg}<12'b001010001000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b001010001000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001010001001) && ({row_reg, col_reg}<12'b001010010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010010000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001010010001) && ({row_reg, col_reg}<12'b001010011111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b001010011111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001010100000) && ({row_reg, col_reg}<12'b001010100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010100101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b001010100110) && ({row_reg, col_reg}<12'b001010110011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001010110011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b001010110100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b001010110101) && ({row_reg, col_reg}<12'b001010111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001010111000) && ({row_reg, col_reg}<12'b001011000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001011000001) && ({row_reg, col_reg}<12'b001011000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011000011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b001011000100) && ({row_reg, col_reg}<12'b001011001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001011001000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001011001001) && ({row_reg, col_reg}<12'b001011010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011010000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001011010001) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001011011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001011100000) && ({row_reg, col_reg}<12'b001011100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011100011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001011100100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b001011100101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001011100110) && ({row_reg, col_reg}<12'b001011110100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001011110100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b001011110101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b001011110110) && ({row_reg, col_reg}<12'b001011111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001011111000) && ({row_reg, col_reg}<12'b001100000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001100000001) && ({row_reg, col_reg}<12'b001100000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001100000011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b001100000100) && ({row_reg, col_reg}<12'b001100001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100001000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b001100001001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b001100001010) && ({row_reg, col_reg}<12'b001100010000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b001100010000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b001100010001) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100011111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b001100100000) && ({row_reg, col_reg}<12'b001100100011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b001100100011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b001100100100) && ({row_reg, col_reg}<12'b001100100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100100111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b001100101000)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001100101001) && ({row_reg, col_reg}<12'b001100110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001100110110) && ({row_reg, col_reg}<12'b001100111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001100111000) && ({row_reg, col_reg}<12'b001101000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001101000001) && ({row_reg, col_reg}<12'b001101000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001101000011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b001101000100) && ({row_reg, col_reg}<12'b001101100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001101100111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b001101101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001101101001)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001101101010) && ({row_reg, col_reg}<12'b001101110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001101110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001101110110) && ({row_reg, col_reg}<12'b001101111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001101111000) && ({row_reg, col_reg}<12'b001110000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001110000001) && ({row_reg, col_reg}<12'b001110000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001110000011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001110000100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b001110000101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001110000110) && ({row_reg, col_reg}<12'b001110100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001110100111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b001110101000)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001110101001) && ({row_reg, col_reg}<12'b001110110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001110110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001110110110) && ({row_reg, col_reg}<12'b001110111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001110111000) && ({row_reg, col_reg}<12'b001111000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001111000001) && ({row_reg, col_reg}<12'b001111000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001111000101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b001111000110) && ({row_reg, col_reg}<12'b001111110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001111110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b001111110110) && ({row_reg, col_reg}<12'b001111111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001111111000) && ({row_reg, col_reg}<12'b010000000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010000000001) && ({row_reg, col_reg}<12'b010000000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010000000101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b010000000110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b010000000111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b010000001000) && ({row_reg, col_reg}<12'b010000110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010000110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010000110110) && ({row_reg, col_reg}<12'b010000111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010000111000) && ({row_reg, col_reg}<12'b010001000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010001000011) && ({row_reg, col_reg}<12'b010001000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010001000111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b010001001000) && ({row_reg, col_reg}<12'b010001110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010001110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010001110110) && ({row_reg, col_reg}<12'b010001111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010001111000) && ({row_reg, col_reg}<12'b010010000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010010000011)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b010010000100) && ({row_reg, col_reg}<12'b010010000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010010000111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b010010001000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010010001001) && ({row_reg, col_reg}<12'b010010110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010010110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010010110110) && ({row_reg, col_reg}<12'b010010111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010010111000) && ({row_reg, col_reg}<12'b010011000100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010011000100)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}>=12'b010011000101) && ({row_reg, col_reg}<12'b010011001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010011001000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b010011001001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b010011001010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010011001011) && ({row_reg, col_reg}<12'b010011101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010011101101) && ({row_reg, col_reg}<12'b010011110100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b010011110100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b010011110101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b010011110110) && ({row_reg, col_reg}<12'b010011111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010011111000) && ({row_reg, col_reg}<12'b010100000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010100000101)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b010100000110) && ({row_reg, col_reg}<12'b010100001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010100001010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b010100001011) && ({row_reg, col_reg}<12'b010100101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010100101100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b010100101101) && ({row_reg, col_reg}<12'b010100111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010100111000) && ({row_reg, col_reg}<12'b010101000110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010101000110)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b010101000111) && ({row_reg, col_reg}<12'b010101001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010101001010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b010101001011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b010101001100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010101001101) && ({row_reg, col_reg}<12'b010101100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010101100001)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010101100010) && ({row_reg, col_reg}<12'b010101100101)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b010101100101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b010101100110) && ({row_reg, col_reg}<12'b010101101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010101101100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010101101101) && ({row_reg, col_reg}<12'b010101110010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b010101110010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b010101110011) && ({row_reg, col_reg}<12'b010101111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010101111000) && ({row_reg, col_reg}<12'b010110001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010110001000) && ({row_reg, col_reg}<12'b010110001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010110001100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b010110001101) && ({row_reg, col_reg}<12'b010110100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010110100001)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b010110100010) && ({row_reg, col_reg}<12'b010110100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010110100101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b010110100110) && ({row_reg, col_reg}<12'b010110110010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010110110010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010110110011) && ({row_reg, col_reg}<12'b010110110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010110110110)) color_data = 12'b111011111111;

		if(({row_reg, col_reg}>=12'b010110110111) && ({row_reg, col_reg}<12'b010111001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010111001000) && ({row_reg, col_reg}<12'b010111001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010111001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b010111001101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b010111001110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010111001111) && ({row_reg, col_reg}<12'b010111100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010111100001)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b010111100010) && ({row_reg, col_reg}<12'b010111100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010111100101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b010111100110) && ({row_reg, col_reg}<12'b010111110010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b010111110010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b010111110011) && ({row_reg, col_reg}<12'b010111110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010111110101)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}==12'b010111110110)) color_data = 12'b110011111111;

		if(({row_reg, col_reg}>=12'b010111110111) && ({row_reg, col_reg}<12'b011000001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011000001011) && ({row_reg, col_reg}<12'b011000001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011000001110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b011000001111) && ({row_reg, col_reg}<12'b011000011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011000011001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b011000011010) && ({row_reg, col_reg}<12'b011000011101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b011000011101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b011000011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011000011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b011000100000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b011000100001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011000100010) && ({row_reg, col_reg}<12'b011000100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011000100100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011000100101) && ({row_reg, col_reg}<12'b011000110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011000110101) && ({row_reg, col_reg}<12'b011001001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011001001001) && ({row_reg, col_reg}<12'b011001001011)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b011001001011) && ({row_reg, col_reg}<12'b011001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011001001101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b011001001110) && ({row_reg, col_reg}<12'b011001010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011001010010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b011001010011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b011001010100) && ({row_reg, col_reg}<12'b011001010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011001010110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b011001010111) && ({row_reg, col_reg}<12'b011001011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011001011001)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b011001011010)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b011001011011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011001011101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b011001011110)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b011001011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b011001100000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011001100001) && ({row_reg, col_reg}<12'b011001110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011001110100)) color_data = 12'b111011111111;

		if(({row_reg, col_reg}>=12'b011001110101) && ({row_reg, col_reg}<12'b011010001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011010001001) && ({row_reg, col_reg}<12'b011010001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011010001101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b011010001110) && ({row_reg, col_reg}<12'b011010010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011010010001)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b011010010010)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b011010010011)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b011010010100) && ({row_reg, col_reg}<12'b011010010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011010010110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b011010010111) && ({row_reg, col_reg}<12'b011010011011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b011010011011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011010011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011010011101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b011010011110)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b011010011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011010100000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b011010100001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b011010100010) && ({row_reg, col_reg}<12'b011010100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010100110) && ({row_reg, col_reg}<12'b011010110011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011010110011)) color_data = 12'b110011111111;

		if(({row_reg, col_reg}>=12'b011010110100) && ({row_reg, col_reg}<12'b011011001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011011001001) && ({row_reg, col_reg}<12'b011011001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011011001101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b011011001110) && ({row_reg, col_reg}<12'b011011010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011011010001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011011010010)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b011011010011) && ({row_reg, col_reg}<12'b011011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011010111) && ({row_reg, col_reg}<12'b011011011011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011011011011) && ({row_reg, col_reg}<12'b011011011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011011011101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b011011011110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b011011011111) && ({row_reg, col_reg}<12'b011011100001)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b011011100001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b011011100010) && ({row_reg, col_reg}<12'b011011100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011011100110) && ({row_reg, col_reg}<12'b011100001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011100001001)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}==12'b011100001010)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b011100001011) && ({row_reg, col_reg}<12'b011100001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011100001101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b011100001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011100001111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b011100010000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b011100010001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011100010010) && ({row_reg, col_reg}<12'b011100010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011100010100) && ({row_reg, col_reg}<12'b011100010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011100010110) && ({row_reg, col_reg}<12'b011100100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011100100100) && ({row_reg, col_reg}<12'b011100100110)) color_data = 12'b111011111111;

		if(({row_reg, col_reg}>=12'b011100100110) && ({row_reg, col_reg}<12'b011101001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011101001011) && ({row_reg, col_reg}<12'b011101001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011101001101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b011101001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011101001111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b011101010000) && ({row_reg, col_reg}<12'b011101010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011101010100) && ({row_reg, col_reg}<12'b011101010110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011101010110)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}>=12'b011101010111) && ({row_reg, col_reg}<12'b011101011100)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b011101011100) && ({row_reg, col_reg}<12'b011101100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011101100011)) color_data = 12'b111011111111;

		if(({row_reg, col_reg}>=12'b011101100100) && ({row_reg, col_reg}<12'b011110001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011110001011) && ({row_reg, col_reg}<12'b011110001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011110001101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b011110001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011110001111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b011110010000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b011110010001) && ({row_reg, col_reg}<12'b011110010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011110010100) && ({row_reg, col_reg}<12'b011110011101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011110011101) && ({row_reg, col_reg}<12'b011110100011)) color_data = 12'b110011111111;

		if(({row_reg, col_reg}>=12'b011110100011) && ({row_reg, col_reg}<12'b011111001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011111001011) && ({row_reg, col_reg}<12'b011111001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011111001101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b011111001110) && ({row_reg, col_reg}<12'b011111010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011111010001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011111010010) && ({row_reg, col_reg}<12'b011111010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011111010100) && ({row_reg, col_reg}<12'b100000001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100000001011) && ({row_reg, col_reg}<12'b100000001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100000001101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b100000001110) && ({row_reg, col_reg}<12'b100000010001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b100000010001) && ({row_reg, col_reg}<12'b100000010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100000010100) && ({row_reg, col_reg}<12'b100001001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100001001011) && ({row_reg, col_reg}<12'b100001010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100001010100) && ({row_reg, col_reg}<12'b100010001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100010001011) && ({row_reg, col_reg}<12'b100010010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100010010010) && ({row_reg, col_reg}<12'b100010010100)) color_data = 12'b111011111111;

		if(({row_reg, col_reg}>=12'b100010010100) && ({row_reg, col_reg}<12'b100011001011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100011001011)) color_data = 12'b110011111111;




		if(({row_reg, col_reg}>=12'b100011001100) && ({row_reg, col_reg}<=12'b100110111011)) color_data = 12'b010001110100;
	end
endmodule