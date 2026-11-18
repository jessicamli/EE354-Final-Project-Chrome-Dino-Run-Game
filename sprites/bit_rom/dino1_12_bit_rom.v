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
		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000000010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000000010111) && ({row_reg, col_reg}<12'b000000101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000000101110) && ({row_reg, col_reg}<12'b000001010111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000001010111) && ({row_reg, col_reg}<12'b000001101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000001101110) && ({row_reg, col_reg}<12'b000010010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b000010010100)) color_data = 12'b110111111111;
		if(({row_reg, col_reg}>=12'b000010010101) && ({row_reg, col_reg}<12'b000010011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000010011001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000010011010) && ({row_reg, col_reg}<12'b000010101010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b000010101010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b000010101011) && ({row_reg, col_reg}<12'b000010101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000010101110) && ({row_reg, col_reg}<12'b000011010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000011010100) && ({row_reg, col_reg}<12'b000011011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000011011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b000011011010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b000011011011) && ({row_reg, col_reg}<12'b000011101001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000011101001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000011101010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b000011101011) && ({row_reg, col_reg}<12'b000011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000011101101)) color_data = 12'b110111111111;

		if(({row_reg, col_reg}>=12'b000011101110) && ({row_reg, col_reg}<12'b000100010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000100010100) && ({row_reg, col_reg}<12'b000100010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000100010111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000100011000)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b000100011001)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b000100011010) && ({row_reg, col_reg}<12'b000100101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000100101010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b000100101011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b000100101100)) color_data = 12'b101010101010;

		if(({row_reg, col_reg}>=12'b000100101101) && ({row_reg, col_reg}<12'b000101000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000101000000) && ({row_reg, col_reg}<12'b000101010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000101010100) && ({row_reg, col_reg}<12'b000101010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000101010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b000101011000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b000101011001) && ({row_reg, col_reg}<12'b000101011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000101011011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b000101011100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b000101011101)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b000101011110) && ({row_reg, col_reg}<12'b000101101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000101101011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000101101100)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b000101101101) && ({row_reg, col_reg}<12'b000110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110000000) && ({row_reg, col_reg}<12'b000110010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000110010100) && ({row_reg, col_reg}<12'b000110010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000110010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b000110011000) && ({row_reg, col_reg}<12'b000110011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000110011011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b000110011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000110011101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b000110011110) && ({row_reg, col_reg}<12'b000110101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000110101100)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b000110101101) && ({row_reg, col_reg}<12'b000111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111000000) && ({row_reg, col_reg}<12'b000111010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b000111010100) && ({row_reg, col_reg}<12'b000111010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000111010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b000111011000) && ({row_reg, col_reg}<12'b000111011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000111011011)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b000111011100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b000111011101)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b000111011110) && ({row_reg, col_reg}<12'b000111101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000111101100)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b000111101101) && ({row_reg, col_reg}<12'b001000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000000000) && ({row_reg, col_reg}<12'b001000010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001000010100) && ({row_reg, col_reg}<12'b001000010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001000010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001000011000) && ({row_reg, col_reg}<12'b001000101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001000101100)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b001000101101) && ({row_reg, col_reg}<12'b001001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001000000) && ({row_reg, col_reg}<12'b001001010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001001010100) && ({row_reg, col_reg}<12'b001001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001001011000) && ({row_reg, col_reg}<12'b001001101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001001101100)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b001001101101) && ({row_reg, col_reg}<12'b001010000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010000000) && ({row_reg, col_reg}<12'b001010010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001010010100) && ({row_reg, col_reg}<12'b001010010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001010011000) && ({row_reg, col_reg}<12'b001010101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001010101100)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b001010101101) && ({row_reg, col_reg}<12'b001011000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011000000) && ({row_reg, col_reg}<12'b001011010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001011010100) && ({row_reg, col_reg}<12'b001011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001011011000) && ({row_reg, col_reg}<12'b001011101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001011101100)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b001011101101) && ({row_reg, col_reg}<12'b001100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001100000000) && ({row_reg, col_reg}<12'b001100010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001100010100) && ({row_reg, col_reg}<12'b001100010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001100010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001100011000) && ({row_reg, col_reg}<12'b001100101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001100101011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b001100101100)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b001100101101) && ({row_reg, col_reg}<12'b001101000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101000000) && ({row_reg, col_reg}<12'b001101010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b001101010100) && ({row_reg, col_reg}<12'b001101010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001101010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001101011000) && ({row_reg, col_reg}<12'b001101100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001101100010) && ({row_reg, col_reg}<12'b001101101100)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b001101101100)) color_data = 12'b100110011001;

		if(({row_reg, col_reg}>=12'b001101101101) && ({row_reg, col_reg}<12'b001110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110000000) && ({row_reg, col_reg}<12'b001110010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001110010100)) color_data = 12'b110111111111;
		if(({row_reg, col_reg}>=12'b001110010101) && ({row_reg, col_reg}<12'b001110010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001110010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001110011000) && ({row_reg, col_reg}<12'b001110100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001110100010)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b001110100011) && ({row_reg, col_reg}<12'b001111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001111000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001111000001)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}>=12'b001111000010) && ({row_reg, col_reg}<12'b001111000110)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}==12'b001111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111000111) && ({row_reg, col_reg}<12'b001111010010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b001111010010)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}==12'b001111010011)) color_data = 12'b111011111111;
		if(({row_reg, col_reg}>=12'b001111010100) && ({row_reg, col_reg}<12'b001111010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001111010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001111011000) && ({row_reg, col_reg}<12'b001111100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b001111100010)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b001111100011) && ({row_reg, col_reg}<12'b010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010000000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010000000001) && ({row_reg, col_reg}<12'b010000000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000000111) && ({row_reg, col_reg}<12'b010000010010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010000010010) && ({row_reg, col_reg}<12'b010000010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010000010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b010000011000) && ({row_reg, col_reg}<12'b010000100010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010000100010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b010000100011) && ({row_reg, col_reg}<12'b010000101000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b010000101000)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b010000101001) && ({row_reg, col_reg}<12'b010001000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010001000111) && ({row_reg, col_reg}<12'b010001001111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010001001111)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}>=12'b010001010000) && ({row_reg, col_reg}<12'b010001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010001010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b010001011000) && ({row_reg, col_reg}<12'b010001101000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010001101000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b010001101001) && ({row_reg, col_reg}<12'b010001101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010001101011) && ({row_reg, col_reg}<12'b010010000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010010000000) && ({row_reg, col_reg}<12'b010010000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010010000010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b010010000011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b010010000100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010010000101) && ({row_reg, col_reg}<12'b010010000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010000111) && ({row_reg, col_reg}<12'b010010001111)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010010001111) && ({row_reg, col_reg}<12'b010010010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010010010101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b010010010110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b010010010111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b010010011000) && ({row_reg, col_reg}<12'b010010011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010010011111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b010010100000) && ({row_reg, col_reg}<12'b010010101000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b010010101000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b010010101001) && ({row_reg, col_reg}<12'b010010101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010010101011) && ({row_reg, col_reg}<12'b010011000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010011000000) && ({row_reg, col_reg}<12'b010011000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010011000010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b010011000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010011000100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010011000101) && ({row_reg, col_reg}<12'b010011000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011000111) && ({row_reg, col_reg}<12'b010011001100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b010011001100)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}==12'b010011001101)) color_data = 12'b110111111111;
		if(({row_reg, col_reg}==12'b010011001110)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010011001111) && ({row_reg, col_reg}<12'b010011010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010011010101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b010011010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b010011010111) && ({row_reg, col_reg}<12'b010011011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010011011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010011100000) && ({row_reg, col_reg}<12'b010011101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010011101011) && ({row_reg, col_reg}<12'b010100000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010100000000) && ({row_reg, col_reg}<12'b010100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010100000010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b010100000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010100000100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010100000101) && ({row_reg, col_reg}<12'b010100000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100000111) && ({row_reg, col_reg}<12'b010100001100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010100001100) && ({row_reg, col_reg}<12'b010100010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010100010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b010100010011) && ({row_reg, col_reg}<12'b010100010101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b010100010101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b010100010110) && ({row_reg, col_reg}<12'b010100011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010100011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010100100000) && ({row_reg, col_reg}<12'b010100101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010100101011) && ({row_reg, col_reg}<12'b010101000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010101000000) && ({row_reg, col_reg}<12'b010101000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010101000010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b010101000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010101000100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010101000101) && ({row_reg, col_reg}<12'b010101000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101000111) && ({row_reg, col_reg}<12'b010101001100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010101001100) && ({row_reg, col_reg}<12'b010101010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010101010010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b010101010011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b010101010100) && ({row_reg, col_reg}<12'b010101011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010101011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010101100000) && ({row_reg, col_reg}<12'b010101100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010101100111) && ({row_reg, col_reg}<12'b010110000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010110000000) && ({row_reg, col_reg}<12'b010110000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010110000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b010110000011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010110000100)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b010110000101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b010110000110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010110000111) && ({row_reg, col_reg}<12'b010110001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010110001111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b010110010000) && ({row_reg, col_reg}<12'b010110010010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b010110010010) && ({row_reg, col_reg}<12'b010110011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010110011111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b010110100000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b010110100001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b010110100010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b010110100011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b010110100100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b010110100101) && ({row_reg, col_reg}<12'b010110100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010110100111) && ({row_reg, col_reg}<12'b010111000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b010111000000) && ({row_reg, col_reg}<12'b010111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010111000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010111000011) && ({row_reg, col_reg}<12'b010111000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010111000110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b010111000111) && ({row_reg, col_reg}<12'b010111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010111001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010111001111) && ({row_reg, col_reg}<12'b010111100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111100000) && ({row_reg, col_reg}<12'b010111100010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b010111100010) && ({row_reg, col_reg}<12'b010111100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b010111100100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010111100101) && ({row_reg, col_reg}<12'b010111100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010111100111) && ({row_reg, col_reg}<12'b011000000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011000000000) && ({row_reg, col_reg}<12'b011000000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011000000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011000000011) && ({row_reg, col_reg}<12'b011000000110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011000000110)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b011000000111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b011000001000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b011000001001) && ({row_reg, col_reg}<12'b011000001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011000001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b011000001101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b011000001110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b011000001111) && ({row_reg, col_reg}<12'b011000100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000100000) && ({row_reg, col_reg}<12'b011000100010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b011000100010) && ({row_reg, col_reg}<12'b011000100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011000100100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b011000100101) && ({row_reg, col_reg}<12'b011000100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011000100111) && ({row_reg, col_reg}<12'b011001000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011001000000) && ({row_reg, col_reg}<12'b011001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011001000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011001000011) && ({row_reg, col_reg}<12'b011001001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011001001000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b011001001001) && ({row_reg, col_reg}<12'b011001001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011001001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b011001001101) && ({row_reg, col_reg}<12'b011001011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011001011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011001100000) && ({row_reg, col_reg}<12'b011001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011001100010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b011001100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011001100100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b011001100101) && ({row_reg, col_reg}<12'b011001100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011001100111) && ({row_reg, col_reg}<12'b011010000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011010000000) && ({row_reg, col_reg}<12'b011010000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011010000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011010000011) && ({row_reg, col_reg}<12'b011010001000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011010001000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b011010001001) && ({row_reg, col_reg}<12'b011010001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b011010001100)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b011010001101) && ({row_reg, col_reg}<12'b011010011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011010011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011010100000) && ({row_reg, col_reg}<12'b011010100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011010100010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b011010100011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b011010100100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b011010100101) && ({row_reg, col_reg}<12'b011010100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011010100111) && ({row_reg, col_reg}<12'b011011000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011011000000) && ({row_reg, col_reg}<12'b011011000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011011000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011011000011) && ({row_reg, col_reg}<12'b011011011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011011011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011011100000) && ({row_reg, col_reg}<12'b011011100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011011100111) && ({row_reg, col_reg}<12'b011100000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011100000000) && ({row_reg, col_reg}<12'b011100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011100000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011100000011) && ({row_reg, col_reg}<12'b011100011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011100011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011100100000) && ({row_reg, col_reg}<12'b011100100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011100100111) && ({row_reg, col_reg}<12'b011101000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011101000000) && ({row_reg, col_reg}<12'b011101000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011101000010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b011101000011) && ({row_reg, col_reg}<12'b011101011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011101011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011101100000) && ({row_reg, col_reg}<12'b011101100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011101100111) && ({row_reg, col_reg}<12'b011110000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011110000000) && ({row_reg, col_reg}<12'b011110000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011110000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b011110000011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b011110000100) && ({row_reg, col_reg}<12'b011110011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011110011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011110100000) && ({row_reg, col_reg}<12'b011110100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011110100011) && ({row_reg, col_reg}<12'b011110100101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b011110100101)) color_data = 12'b110011111111;

		if(({row_reg, col_reg}>=12'b011110100110) && ({row_reg, col_reg}<12'b011111000000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b011111000000) && ({row_reg, col_reg}<12'b011111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011111000010) && ({row_reg, col_reg}<12'b011111000100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b011111000100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011111000101) && ({row_reg, col_reg}<12'b011111011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b011111011110)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b011111011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b011111100000) && ({row_reg, col_reg}<12'b011111100011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011111100011) && ({row_reg, col_reg}<12'b100000000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100000000001) && ({row_reg, col_reg}<12'b100000000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100000000100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b100000000101) && ({row_reg, col_reg}<12'b100000011101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100000011101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b100000011110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100000011111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b100000100000) && ({row_reg, col_reg}<12'b100000100011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100000100011) && ({row_reg, col_reg}<12'b100001000001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100001000001) && ({row_reg, col_reg}<12'b100001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100001000100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b100001000101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100001000110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b100001000111) && ({row_reg, col_reg}<12'b100001011101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100001011101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b100001011110) && ({row_reg, col_reg}<12'b100001100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100001100001) && ({row_reg, col_reg}<12'b100010000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100010000011) && ({row_reg, col_reg}<12'b100010000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100010000110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b100010000111) && ({row_reg, col_reg}<12'b100010011101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100010011101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b100010011110) && ({row_reg, col_reg}<12'b100010100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100010100001) && ({row_reg, col_reg}<12'b100011000011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100011000011) && ({row_reg, col_reg}<12'b100011000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100011000110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100011000111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b100011001000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b100011001001) && ({row_reg, col_reg}<12'b100011011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100011011011)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b100011011100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b100011011101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b100011011110) && ({row_reg, col_reg}<12'b100011100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100011100001) && ({row_reg, col_reg}<12'b100100000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100100000101)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}>=12'b100100000110) && ({row_reg, col_reg}<12'b100100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100100001000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b100100001001) && ({row_reg, col_reg}<12'b100100011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100100011011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b100100011100) && ({row_reg, col_reg}<12'b100100100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100100100001) && ({row_reg, col_reg}<12'b100101000101)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b100101000101)) color_data = 12'b110111111111;
		if(({row_reg, col_reg}>=12'b100101000110) && ({row_reg, col_reg}<12'b100101001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100101001000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b100101001001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b100101001010)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b100101001011) && ({row_reg, col_reg}<12'b100101011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100101011001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b100101011010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b100101011011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b100101011100) && ({row_reg, col_reg}<12'b100101100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100101100001) && ({row_reg, col_reg}<12'b100110001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100110001000) && ({row_reg, col_reg}<12'b100110001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100110001010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b100110001011) && ({row_reg, col_reg}<12'b100110011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100110011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b100110011010) && ({row_reg, col_reg}<12'b100110011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100110011111) && ({row_reg, col_reg}<12'b100111001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b100111001000) && ({row_reg, col_reg}<12'b100111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100111001010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100111001011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b100111001100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b100111001101) && ({row_reg, col_reg}<12'b100111010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100111010011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b100111010100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b100111010101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b100111010110) && ({row_reg, col_reg}<12'b100111011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b100111011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b100111011010) && ({row_reg, col_reg}<12'b100111011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100111011111) && ({row_reg, col_reg}<12'b101000001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101000001000) && ({row_reg, col_reg}<12'b101000001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101000001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b101000001101) && ({row_reg, col_reg}<12'b101000010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101000010011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b101000010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101000010101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b101000010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101000010111) && ({row_reg, col_reg}<12'b101000011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101000011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b101000011010) && ({row_reg, col_reg}<12'b101000011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101000011111) && ({row_reg, col_reg}<12'b101001001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101001001000) && ({row_reg, col_reg}<12'b101001001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101001001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b101001001101) && ({row_reg, col_reg}<12'b101001010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101001010001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b101001010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b101001010011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101001010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101001010101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b101001010110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b101001010111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b101001011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101001011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b101001011010) && ({row_reg, col_reg}<12'b101001011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101001011111) && ({row_reg, col_reg}<12'b101010001000)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}==12'b101010001000)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}==12'b101010001001)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101010001010) && ({row_reg, col_reg}<12'b101010001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101010001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b101010001101) && ({row_reg, col_reg}<12'b101010010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101010010000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b101010010001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b101010010010) && ({row_reg, col_reg}<12'b101010010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101010010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b101010011000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101010011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b101010011010) && ({row_reg, col_reg}<12'b101010011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101010011101)) color_data = 12'b110111111111;

		if(({row_reg, col_reg}>=12'b101010011110) && ({row_reg, col_reg}<12'b101011001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101011001010) && ({row_reg, col_reg}<12'b101011001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101011001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b101011001101) && ({row_reg, col_reg}<12'b101011001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101011001111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b101011010000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b101011010001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b101011010010) && ({row_reg, col_reg}<12'b101011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101011010100)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}>=12'b101011010101) && ({row_reg, col_reg}<12'b101011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101011010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b101011011000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101011011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b101011011010) && ({row_reg, col_reg}<12'b101011011101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101011011101) && ({row_reg, col_reg}<12'b101100001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101100001010) && ({row_reg, col_reg}<12'b101100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101100001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b101100001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101100001110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b101100001111) && ({row_reg, col_reg}<12'b101100010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101100010010)) color_data = 12'b110011111111;
		if(({row_reg, col_reg}==12'b101100010011)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101100010100) && ({row_reg, col_reg}<12'b101100010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101100010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b101100011000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101100011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b101100011010) && ({row_reg, col_reg}<12'b101100011100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101100011100) && ({row_reg, col_reg}<12'b101101001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101101001010) && ({row_reg, col_reg}<12'b101101001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101101001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b101101001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101101001110)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b101101001111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b101101010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b101101010001) && ({row_reg, col_reg}<12'b101101010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101101010100)) color_data = 12'b110111111111;
		if(({row_reg, col_reg}>=12'b101101010101) && ({row_reg, col_reg}<12'b101101010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101101010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b101101011000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101101011001)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b101101011010) && ({row_reg, col_reg}<12'b101101011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101101011100) && ({row_reg, col_reg}<12'b101101011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101101011110)) color_data = 12'b110111111111;

		if(({row_reg, col_reg}>=12'b101101011111) && ({row_reg, col_reg}<12'b101110001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101110001010) && ({row_reg, col_reg}<12'b101110001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101110001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b101110001101) && ({row_reg, col_reg}<12'b101110010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101110010000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b101110010001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b101110010010) && ({row_reg, col_reg}<12'b101110010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101110010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101110010101) && ({row_reg, col_reg}<12'b101110010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101110010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b101110011000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101110011001) && ({row_reg, col_reg}<12'b101110011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101110011011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b101110011100) && ({row_reg, col_reg}<12'b101110011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101110011111) && ({row_reg, col_reg}<12'b101111001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101111001010) && ({row_reg, col_reg}<12'b101111001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101111001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b101111001101) && ({row_reg, col_reg}<12'b101111010000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b101111010000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b101111010001) && ({row_reg, col_reg}<12'b101111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101111010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b101111010101) && ({row_reg, col_reg}<12'b101111010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101111010111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b101111011000) && ({row_reg, col_reg}<12'b101111011011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b101111011011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b101111011100) && ({row_reg, col_reg}<12'b101111011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b101111011111) && ({row_reg, col_reg}<12'b110000001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b110000001010) && ({row_reg, col_reg}<12'b110000010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110000010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b110000010101) && ({row_reg, col_reg}<12'b110000011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b110000011111) && ({row_reg, col_reg}<12'b110001001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b110001001010) && ({row_reg, col_reg}<12'b110001010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110001010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b110001010101) && ({row_reg, col_reg}<12'b110001011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b110001011111) && ({row_reg, col_reg}<12'b110010001010)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b110010001010) && ({row_reg, col_reg}<12'b110010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110010010100)) color_data = 12'b010001110100;
		if(({row_reg, col_reg}>=12'b110010010101) && ({row_reg, col_reg}<12'b110010011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110010011110)) color_data = 12'b110111111111;

		if(({row_reg, col_reg}>=12'b110010011111) && ({row_reg, col_reg}<=12'b110010101110)) color_data = 12'b010001110100;
	end
endmodule