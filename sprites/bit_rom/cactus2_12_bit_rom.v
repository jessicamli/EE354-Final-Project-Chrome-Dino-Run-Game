module cactus2_rom
	(
		input wire clk,
		input wire [5:0] row,
		input wire [3:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [5:0] row_reg;
	reg [3:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin

		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0000010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000010111) && ({row_reg, col_reg}<10'b0000011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0000011010) && ({row_reg, col_reg}<10'b0000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0000100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0000100111) && ({row_reg, col_reg}<10'b0000101010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0000101010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0000101011) && ({row_reg, col_reg}<10'b0000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0000110110) && ({row_reg, col_reg}<10'b0000111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0000111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0000111100) && ({row_reg, col_reg}<10'b0001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0001000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0001000110) && ({row_reg, col_reg}<10'b0001001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0001001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0001001100) && ({row_reg, col_reg}<10'b0001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001010010) && ({row_reg, col_reg}<10'b0001010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==10'b0001010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0001010110) && ({row_reg, col_reg}<10'b0001011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0001011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0001011100) && ({row_reg, col_reg}<10'b0001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0001011110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0001011111) && ({row_reg, col_reg}<10'b0001100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0001100010) && ({row_reg, col_reg}<10'b0001100100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0001100100) && ({row_reg, col_reg}<10'b0001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0001100110) && ({row_reg, col_reg}<10'b0001101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0001101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==10'b0001101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==10'b0001101110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0001101111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==10'b00011010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0001110001) && ({row_reg, col_reg}<10'b0001110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0001110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0001110110) && ({row_reg, col_reg}<10'b0001111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0001111011) && ({row_reg, col_reg}<10'b0001111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0001111101) && ({row_reg, col_reg}<10'b00011110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=10'b00011110000) && ({row_reg, col_reg}<10'b0010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010000001) && ({row_reg, col_reg}<10'b0010000101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0010000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010000110) && ({row_reg, col_reg}<10'b0010001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0010001011) && ({row_reg, col_reg}<10'b0010001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010001101) && ({row_reg, col_reg}<10'b00100010000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=10'b00100010000) && ({row_reg, col_reg}<10'b0010010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010010001) && ({row_reg, col_reg}<10'b0010010101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0010010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010010110) && ({row_reg, col_reg}<10'b0010011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0010011011) && ({row_reg, col_reg}<10'b0010011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010011101) && ({row_reg, col_reg}<10'b00100110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=10'b00100110000) && ({row_reg, col_reg}<10'b0010100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010100001) && ({row_reg, col_reg}<10'b0010100101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0010100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010100110) && ({row_reg, col_reg}<10'b0010101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0010101011) && ({row_reg, col_reg}<10'b0010101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010101101) && ({row_reg, col_reg}<10'b00101010000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=10'b00101010000) && ({row_reg, col_reg}<10'b0010110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010110001) && ({row_reg, col_reg}<10'b0010110101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0010110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010110110) && ({row_reg, col_reg}<10'b0010111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0010111011) && ({row_reg, col_reg}<10'b0010111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0010111101) && ({row_reg, col_reg}<10'b00101110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=10'b00101110000) && ({row_reg, col_reg}<10'b0011000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011000001) && ({row_reg, col_reg}<10'b0011000101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0011000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011000110) && ({row_reg, col_reg}<10'b0011001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0011001011) && ({row_reg, col_reg}<10'b0011001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011001101) && ({row_reg, col_reg}<10'b00110010000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=10'b00110010000) && ({row_reg, col_reg}<10'b0011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011010001) && ({row_reg, col_reg}<10'b0011010101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0011010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011010110) && ({row_reg, col_reg}<10'b0011011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0011011011) && ({row_reg, col_reg}<10'b0011011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011011101) && ({row_reg, col_reg}<10'b00110110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=10'b00110110000) && ({row_reg, col_reg}<10'b0011100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011100001) && ({row_reg, col_reg}<10'b0011101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0011101011) && ({row_reg, col_reg}<10'b0011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011101101) && ({row_reg, col_reg}<10'b00111010000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=10'b00111010000) && ({row_reg, col_reg}<10'b0011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011110001) && ({row_reg, col_reg}<10'b0011111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0011111011) && ({row_reg, col_reg}<10'b0011111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0011111101) && ({row_reg, col_reg}<10'b00111110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==10'b00111110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==10'b0100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0100000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100000010) && ({row_reg, col_reg}<10'b0100001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0100001011) && ({row_reg, col_reg}<10'b0100001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100001101) && ({row_reg, col_reg}<10'b01000010000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==10'b01000010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100010000) && ({row_reg, col_reg}<10'b0100010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0100010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100010011) && ({row_reg, col_reg}<10'b0100011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0100011011) && ({row_reg, col_reg}<10'b0100011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100011101) && ({row_reg, col_reg}<10'b01000110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==10'b01000110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100100000) && ({row_reg, col_reg}<10'b0100100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100100011) && ({row_reg, col_reg}<10'b0100100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100100110) && ({row_reg, col_reg}<10'b0100101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0100101011) && ({row_reg, col_reg}<10'b0100101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100101101) && ({row_reg, col_reg}<10'b01001010000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==10'b01001010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100110000) && ({row_reg, col_reg}<10'b0100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0100110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100110110) && ({row_reg, col_reg}<10'b01001110000)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}==10'b01001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0101000000) && ({row_reg, col_reg}<10'b0101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0101000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0101000110) && ({row_reg, col_reg}<10'b0101001111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0101001111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b01010010000) && ({row_reg, col_reg}<10'b0101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0101010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0101010110) && ({row_reg, col_reg}<10'b0101011110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0101011110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0101011111) && ({row_reg, col_reg}<10'b0101100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0101100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0101100110) && ({row_reg, col_reg}<10'b0101101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0101101011) && ({row_reg, col_reg}<10'b0101101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0101101110) && ({row_reg, col_reg}<10'b0101110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0101110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0101110110) && ({row_reg, col_reg}<10'b0101111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0101111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0101111100) && ({row_reg, col_reg}<10'b0110000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0110000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0110000110) && ({row_reg, col_reg}<10'b0110001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0110001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0110001100) && ({row_reg, col_reg}<10'b0110010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0110010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0110010110) && ({row_reg, col_reg}<10'b0110011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0110011011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0110011100) && ({row_reg, col_reg}<10'b0110100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0110100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0110100110) && ({row_reg, col_reg}<10'b0110101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0110101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0110101100) && ({row_reg, col_reg}<10'b0110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0110110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0110110110) && ({row_reg, col_reg}<10'b0110111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0110111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0110111100) && ({row_reg, col_reg}<10'b0111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0111000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0111000110) && ({row_reg, col_reg}<10'b0111001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0111001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0111001100) && ({row_reg, col_reg}<10'b0111010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0111010110) && ({row_reg, col_reg}<10'b0111011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0111011011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0111011100) && ({row_reg, col_reg}<10'b0111100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0111100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0111100110) && ({row_reg, col_reg}<10'b0111101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0111101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0111101100) && ({row_reg, col_reg}<10'b0111110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0111110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0111110110) && ({row_reg, col_reg}<10'b0111111011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0111111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b0111111100) && ({row_reg, col_reg}<10'b1000000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1000000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b1000000110) && ({row_reg, col_reg}<10'b1000001011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b1000001011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b1000001100) && ({row_reg, col_reg}<10'b1000010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1000010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b1000010110) && ({row_reg, col_reg}<10'b1000011011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b1000011011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b1000011100) && ({row_reg, col_reg}<10'b1000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1000100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b1000100110) && ({row_reg, col_reg}<10'b1000101011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b1000101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=10'b1000101100) && ({row_reg, col_reg}<10'b1000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000110110) && ({row_reg, col_reg}<10'b1000111011)) color_data = 12'b111111111111;


		if(({row_reg, col_reg}>=10'b1000111011) && ({row_reg, col_reg}<=10'b10010010000)) color_data = 12'b000000000000;
	end
endmodule