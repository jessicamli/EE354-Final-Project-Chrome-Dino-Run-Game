module pterodactyl2_rom
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

		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000001010001) && ({row_reg, col_reg}<12'b000001010011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000001010011) && ({row_reg, col_reg}<12'b000010010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000010010001) && ({row_reg, col_reg}<12'b000010010011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000010010011) && ({row_reg, col_reg}<12'b000011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000011001111) && ({row_reg, col_reg}<12'b000011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000011010001) && ({row_reg, col_reg}<12'b000011010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000011010011) && ({row_reg, col_reg}<12'b000011010101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000011010101) && ({row_reg, col_reg}<12'b000100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000100001111) && ({row_reg, col_reg}<12'b000100010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000100010001) && ({row_reg, col_reg}<12'b000100010011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000100010011) && ({row_reg, col_reg}<12'b000100010101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000100010101) && ({row_reg, col_reg}<12'b000101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000101001111) && ({row_reg, col_reg}<12'b000101010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000101010001) && ({row_reg, col_reg}<12'b000101010101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000101010101) && ({row_reg, col_reg}<12'b000101010111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000101010111) && ({row_reg, col_reg}<12'b000110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110001111) && ({row_reg, col_reg}<12'b000110010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000110010001) && ({row_reg, col_reg}<12'b000110010101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000110010101) && ({row_reg, col_reg}<12'b000110010111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000110010111) && ({row_reg, col_reg}<12'b000111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000111001011) && ({row_reg, col_reg}<12'b000111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111010001) && ({row_reg, col_reg}<12'b000111010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000111010111) && ({row_reg, col_reg}<12'b000111011001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000111011001) && ({row_reg, col_reg}<12'b001000001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000001011) && ({row_reg, col_reg}<12'b001000010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000010001) && ({row_reg, col_reg}<12'b001000010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000010111) && ({row_reg, col_reg}<12'b001000011001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001000011001) && ({row_reg, col_reg}<12'b001001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001001001) && ({row_reg, col_reg}<12'b001001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001001011) && ({row_reg, col_reg}<12'b001001001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001001111) && ({row_reg, col_reg}<12'b001001010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001010011) && ({row_reg, col_reg}<12'b001001011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001011001) && ({row_reg, col_reg}<12'b001001011011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001001011011) && ({row_reg, col_reg}<12'b001010001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010001001) && ({row_reg, col_reg}<12'b001010001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010001011) && ({row_reg, col_reg}<12'b001010001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001010001111) && ({row_reg, col_reg}<12'b001010010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010010011) && ({row_reg, col_reg}<12'b001010011001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001010011001) && ({row_reg, col_reg}<12'b001010011011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001010011011) && ({row_reg, col_reg}<12'b001011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011000111) && ({row_reg, col_reg}<12'b001011001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011001001) && ({row_reg, col_reg}<12'b001011001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001011001111) && ({row_reg, col_reg}<12'b001011010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011010011) && ({row_reg, col_reg}<12'b001011011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001011011011) && ({row_reg, col_reg}<12'b001011011101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001011011101) && ({row_reg, col_reg}<12'b001100000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100000111) && ({row_reg, col_reg}<12'b001100001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001100001001) && ({row_reg, col_reg}<12'b001100001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001100001111) && ({row_reg, col_reg}<12'b001100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001100010011) && ({row_reg, col_reg}<12'b001100011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001100011011) && ({row_reg, col_reg}<12'b001100011101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001100011101) && ({row_reg, col_reg}<12'b001101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101000101) && ({row_reg, col_reg}<12'b001101000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101000111) && ({row_reg, col_reg}<12'b001101010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001101010001) && ({row_reg, col_reg}<12'b001101010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101010011) && ({row_reg, col_reg}<12'b001101011101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001101011101) && ({row_reg, col_reg}<12'b001101011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001101011111) && ({row_reg, col_reg}<12'b001110000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110000101) && ({row_reg, col_reg}<12'b001110000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110000111) && ({row_reg, col_reg}<12'b001110010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001110010001) && ({row_reg, col_reg}<12'b001110010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110010011) && ({row_reg, col_reg}<12'b001110011101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001110011101) && ({row_reg, col_reg}<12'b001110011111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001110011111) && ({row_reg, col_reg}<12'b001111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111000011) && ({row_reg, col_reg}<12'b001111000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111000101) && ({row_reg, col_reg}<12'b001111010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001111010001) && ({row_reg, col_reg}<12'b001111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111010011) && ({row_reg, col_reg}<12'b001111011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001111011111) && ({row_reg, col_reg}<12'b001111100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001111100001) && ({row_reg, col_reg}<12'b010000000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000000011) && ({row_reg, col_reg}<12'b010000000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000000101) && ({row_reg, col_reg}<12'b010000010001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000010001) && ({row_reg, col_reg}<12'b010000010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000010011) && ({row_reg, col_reg}<12'b010000011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000011111) && ({row_reg, col_reg}<12'b010000100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010000100001) && ({row_reg, col_reg}<12'b010001000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001000001) && ({row_reg, col_reg}<12'b010001000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010001000011) && ({row_reg, col_reg}<12'b010001011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010001011111) && ({row_reg, col_reg}<12'b010001100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010001100001) && ({row_reg, col_reg}<12'b010010000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010000001) && ({row_reg, col_reg}<12'b010010000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010000011) && ({row_reg, col_reg}<12'b010010011111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010010011111) && ({row_reg, col_reg}<12'b010010100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010010100001) && ({row_reg, col_reg}<12'b010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011000001) && ({row_reg, col_reg}<12'b010011000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011000011) && ({row_reg, col_reg}<12'b010011001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011001111) && ({row_reg, col_reg}<12'b010011100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010011100001) && ({row_reg, col_reg}<12'b010011101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010011101101) && ({row_reg, col_reg}<12'b010100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100000001) && ({row_reg, col_reg}<12'b010100000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100000011) && ({row_reg, col_reg}<12'b010100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100001111) && ({row_reg, col_reg}<12'b010100100001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100100001) && ({row_reg, col_reg}<12'b010100101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010100101101) && ({row_reg, col_reg}<12'b010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101000001) && ({row_reg, col_reg}<12'b010101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101001111) && ({row_reg, col_reg}<12'b010101010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101010001) && ({row_reg, col_reg}<12'b010101101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101101101) && ({row_reg, col_reg}<12'b010101101111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==12'b010101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110000001) && ({row_reg, col_reg}<12'b010110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110001111) && ({row_reg, col_reg}<12'b010110010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110010001) && ({row_reg, col_reg}<12'b010110101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110101101) && ({row_reg, col_reg}<12'b010110101111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010110101111) && ({row_reg, col_reg}<12'b010111010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111010001) && ({row_reg, col_reg}<12'b010111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111010011) && ({row_reg, col_reg}<12'b010111100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111100111) && ({row_reg, col_reg}<12'b010111101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010111101101) && ({row_reg, col_reg}<12'b011000010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000010001) && ({row_reg, col_reg}<12'b011000010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000010011) && ({row_reg, col_reg}<12'b011000100111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000100111) && ({row_reg, col_reg}<12'b011000101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011000101101) && ({row_reg, col_reg}<12'b011001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001010011) && ({row_reg, col_reg}<12'b011001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001010101) && ({row_reg, col_reg}<12'b011001101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001101011) && ({row_reg, col_reg}<12'b011001101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011001101101) && ({row_reg, col_reg}<12'b011010010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010010011) && ({row_reg, col_reg}<12'b011010010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010010101) && ({row_reg, col_reg}<12'b011010101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010101011) && ({row_reg, col_reg}<12'b011010101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011010101101) && ({row_reg, col_reg}<12'b011011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011010101) && ({row_reg, col_reg}<12'b011011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011010111) && ({row_reg, col_reg}<12'b011011100101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011011100101) && ({row_reg, col_reg}<12'b011011101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011011101011) && ({row_reg, col_reg}<12'b011100010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100010101) && ({row_reg, col_reg}<12'b011100010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011100010111) && ({row_reg, col_reg}<12'b011100100101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100100101) && ({row_reg, col_reg}<12'b011100101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011100101011) && ({row_reg, col_reg}<12'b011101010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101010111) && ({row_reg, col_reg}<12'b011101100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011101100111) && ({row_reg, col_reg}<12'b011110010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011110010111) && ({row_reg, col_reg}<12'b011110100111)) color_data = 12'b111111111111;




		if(({row_reg, col_reg}>=12'b011110100111) && ({row_reg, col_reg}<=12'b100001101111)) color_data = 12'b000000000000;
	end
endmodule