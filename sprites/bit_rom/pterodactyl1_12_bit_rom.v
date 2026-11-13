module pterodactyl1_rom
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





		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000101001100) && ({row_reg, col_reg}<12'b000101010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000101010000) && ({row_reg, col_reg}<12'b000110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000110001100) && ({row_reg, col_reg}<12'b000110010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000110010000) && ({row_reg, col_reg}<12'b000111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000111001010) && ({row_reg, col_reg}<12'b000111001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b000111001100) && ({row_reg, col_reg}<12'b000111010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b000111010000) && ({row_reg, col_reg}<12'b000111010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b000111010010) && ({row_reg, col_reg}<12'b001000001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000001010) && ({row_reg, col_reg}<12'b001000001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001000001100) && ({row_reg, col_reg}<12'b001000010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001000010000) && ({row_reg, col_reg}<12'b001000010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001000010010) && ({row_reg, col_reg}<12'b001001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001001000) && ({row_reg, col_reg}<12'b001001001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001001001010) && ({row_reg, col_reg}<12'b001001010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001001010000) && ({row_reg, col_reg}<12'b001001010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001001010010) && ({row_reg, col_reg}<12'b001010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010001000) && ({row_reg, col_reg}<12'b001010001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001010001010) && ({row_reg, col_reg}<12'b001010010000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001010010000) && ({row_reg, col_reg}<12'b001010010010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001010010010) && ({row_reg, col_reg}<12'b001011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011000110) && ({row_reg, col_reg}<12'b001011001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001011001000) && ({row_reg, col_reg}<12'b001011010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001011010010) && ({row_reg, col_reg}<12'b001011010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001011010100) && ({row_reg, col_reg}<12'b001100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100000110) && ({row_reg, col_reg}<12'b001100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001100001000) && ({row_reg, col_reg}<12'b001100010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001100010010) && ({row_reg, col_reg}<12'b001100010100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001100010100) && ({row_reg, col_reg}<12'b001101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101000100) && ({row_reg, col_reg}<12'b001101000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001101000110) && ({row_reg, col_reg}<12'b001101010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001101010010) && ({row_reg, col_reg}<12'b001101100000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001101100000) && ({row_reg, col_reg}<12'b001110000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110000100) && ({row_reg, col_reg}<12'b001110000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001110000110) && ({row_reg, col_reg}<12'b001110010010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001110010010) && ({row_reg, col_reg}<12'b001110100000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111000010) && ({row_reg, col_reg}<12'b001111000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b001111000100) && ({row_reg, col_reg}<12'b001111100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b001111100000) && ({row_reg, col_reg}<12'b001111100010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b001111100010) && ({row_reg, col_reg}<12'b010000000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000000010) && ({row_reg, col_reg}<12'b010000000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010000000100) && ({row_reg, col_reg}<12'b010000100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010000100000) && ({row_reg, col_reg}<12'b010000100010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010000100010) && ({row_reg, col_reg}<12'b010001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001000010) && ({row_reg, col_reg}<12'b010001010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010001010000) && ({row_reg, col_reg}<12'b010001100010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b010001100010) && ({row_reg, col_reg}<12'b010010000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010000000) && ({row_reg, col_reg}<12'b010010000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010000010) && ({row_reg, col_reg}<12'b010010010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010010010000) && ({row_reg, col_reg}<12'b010010100010)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b010010100010) && ({row_reg, col_reg}<12'b010011000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011000000) && ({row_reg, col_reg}<12'b010011010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011010000) && ({row_reg, col_reg}<12'b010011010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010011010010) && ({row_reg, col_reg}<12'b010011101110)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==12'b010011101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100000000) && ({row_reg, col_reg}<12'b010100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100010000) && ({row_reg, col_reg}<12'b010100010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010100010010) && ({row_reg, col_reg}<12'b010100101110)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==12'b010100101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101000000) && ({row_reg, col_reg}<12'b010101010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101010010) && ({row_reg, col_reg}<12'b010101010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010101010100) && ({row_reg, col_reg}<12'b010101101000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010101101000) && ({row_reg, col_reg}<12'b010101101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010101101110) && ({row_reg, col_reg}<12'b010110010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110010010) && ({row_reg, col_reg}<12'b010110010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010110010100) && ({row_reg, col_reg}<12'b010110101000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010110101000) && ({row_reg, col_reg}<12'b010110101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010110101110) && ({row_reg, col_reg}<12'b010111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111010010) && ({row_reg, col_reg}<12'b010111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b010111010100) && ({row_reg, col_reg}<12'b010111101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010111101100) && ({row_reg, col_reg}<12'b010111101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b010111101110) && ({row_reg, col_reg}<12'b011000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000010010) && ({row_reg, col_reg}<12'b011000010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011000010100) && ({row_reg, col_reg}<12'b011000101100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011000101100) && ({row_reg, col_reg}<12'b011000101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011000101110) && ({row_reg, col_reg}<12'b011001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001010010) && ({row_reg, col_reg}<12'b011001010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011001010100) && ({row_reg, col_reg}<12'b011001100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011001100110) && ({row_reg, col_reg}<12'b011001101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011001101100) && ({row_reg, col_reg}<12'b011010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010010010) && ({row_reg, col_reg}<12'b011010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011010010100) && ({row_reg, col_reg}<12'b011010100110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011010100110) && ({row_reg, col_reg}<12'b011010101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011010101100) && ({row_reg, col_reg}<12'b011011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011010010) && ({row_reg, col_reg}<12'b011011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011011010100) && ({row_reg, col_reg}<12'b011011011100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011011011100) && ({row_reg, col_reg}<12'b011011100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011011100110) && ({row_reg, col_reg}<12'b011100010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100010010) && ({row_reg, col_reg}<12'b011100010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011100010100) && ({row_reg, col_reg}<12'b011100011100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011100011100) && ({row_reg, col_reg}<12'b011100100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011100100110) && ({row_reg, col_reg}<12'b011101010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101010010) && ({row_reg, col_reg}<12'b011101010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011101010100) && ({row_reg, col_reg}<12'b011101011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011101011010) && ({row_reg, col_reg}<12'b011101011100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011101011100) && ({row_reg, col_reg}<12'b011110010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011110010010) && ({row_reg, col_reg}<12'b011110010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011110010100) && ({row_reg, col_reg}<12'b011110011010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011110011010) && ({row_reg, col_reg}<12'b011110011100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011110011100) && ({row_reg, col_reg}<12'b011111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011111010010) && ({row_reg, col_reg}<12'b011111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b011111010100) && ({row_reg, col_reg}<12'b011111011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b011111011000) && ({row_reg, col_reg}<12'b011111011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b011111011010) && ({row_reg, col_reg}<12'b100000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000010010) && ({row_reg, col_reg}<12'b100000010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100000010100) && ({row_reg, col_reg}<12'b100000011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100000011000) && ({row_reg, col_reg}<12'b100000011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100000011010) && ({row_reg, col_reg}<12'b100001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100001010010) && ({row_reg, col_reg}<12'b100001010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100001010100) && ({row_reg, col_reg}<12'b100001011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100001011000) && ({row_reg, col_reg}<12'b100001011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100001011010) && ({row_reg, col_reg}<12'b100010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100010010010) && ({row_reg, col_reg}<12'b100010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100010010100) && ({row_reg, col_reg}<12'b100010011000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100010011000) && ({row_reg, col_reg}<12'b100010011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100010011010) && ({row_reg, col_reg}<12'b100011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100011010010) && ({row_reg, col_reg}<12'b100011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100011010100) && ({row_reg, col_reg}<12'b100011010110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100011010110) && ({row_reg, col_reg}<12'b100011011000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100011011000) && ({row_reg, col_reg}<12'b100100010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100100010010) && ({row_reg, col_reg}<12'b100100010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=12'b100100010100) && ({row_reg, col_reg}<12'b100100010110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b100100010110) && ({row_reg, col_reg}<12'b100100011000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100100011000) && ({row_reg, col_reg}<12'b100101010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100101010100) && ({row_reg, col_reg}<12'b100101010110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=12'b100101010110) && ({row_reg, col_reg}<12'b100110010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100110010100) && ({row_reg, col_reg}<12'b100110010110)) color_data = 12'b111111111111;



		if(({row_reg, col_reg}>=12'b100110010110) && ({row_reg, col_reg}<=12'b101000101110)) color_data = 12'b000000000000;
	end
endmodule