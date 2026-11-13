module cloud_rom
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

		if(({row_reg, col_reg}>=11'b00000000000) && ({row_reg, col_reg}<11'b00001011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00001011001) && ({row_reg, col_reg}<11'b00001011101)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b00001011101) && ({row_reg, col_reg}<11'b00010010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00010010100) && ({row_reg, col_reg}<11'b00010011010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b00010011010) && ({row_reg, col_reg}<11'b00010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00010011100) && ({row_reg, col_reg}<11'b00010011111)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b00010011111) && ({row_reg, col_reg}<11'b00011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00011010011) && ({row_reg, col_reg}<11'b00011010101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b00011010101) && ({row_reg, col_reg}<11'b00011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00011011110) && ({row_reg, col_reg}<11'b00011100000)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b00011100000) && ({row_reg, col_reg}<11'b00100010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00100010001) && ({row_reg, col_reg}<11'b00100010100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b00100010100) && ({row_reg, col_reg}<11'b00100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00100011111)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b00100100000) && ({row_reg, col_reg}<11'b00101010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00101010001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b00101010010) && ({row_reg, col_reg}<11'b00101011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00101011111) && ({row_reg, col_reg}<11'b00101100011)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b00101100011) && ({row_reg, col_reg}<11'b00110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110010001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b00110010010) && ({row_reg, col_reg}<11'b00110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00110011111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b00110100000) && ({row_reg, col_reg}<11'b00110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00110100010) && ({row_reg, col_reg}<11'b00110101000)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b00110101000) && ({row_reg, col_reg}<11'b00111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b00111001110) && ({row_reg, col_reg}<11'b00111010010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b00111010010) && ({row_reg, col_reg}<11'b00111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111011110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b00111011111) && ({row_reg, col_reg}<11'b00111100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b00111100111)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b00111101000) && ({row_reg, col_reg}<11'b01000001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01000001101) && ({row_reg, col_reg}<11'b01000001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b01000001111) && ({row_reg, col_reg}<11'b01000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01000100111) && ({row_reg, col_reg}<11'b01000101011)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b01000101011) && ({row_reg, col_reg}<11'b01001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01001000110) && ({row_reg, col_reg}<11'b01001001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b01001001110) && ({row_reg, col_reg}<11'b01001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01001101010)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b01001101011) && ({row_reg, col_reg}<11'b01010000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01010000101) && ({row_reg, col_reg}<11'b01010000111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b01010000111) && ({row_reg, col_reg}<11'b01010101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01010101010) && ({row_reg, col_reg}<11'b01010101101)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b01010101101) && ({row_reg, col_reg}<11'b01011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011000101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b01011000110) && ({row_reg, col_reg}<11'b01011101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01011101100)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=11'b01011101101) && ({row_reg, col_reg}<11'b01100000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01100000001) && ({row_reg, col_reg}<11'b01100000011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==11'b01100000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01100000100) && ({row_reg, col_reg}<11'b01100000110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b01100000110) && ({row_reg, col_reg}<11'b01100001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100001001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b01100001010) && ({row_reg, col_reg}<11'b01100101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==11'b01100101101)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}==11'b01100101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01101000000) && ({row_reg, col_reg}<11'b01101000010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=11'b01101000010) && ({row_reg, col_reg}<11'b01101001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=11'b01101001010) && ({row_reg, col_reg}<11'b01101101110)) color_data = 12'b110111011101;






		if(({row_reg, col_reg}>=11'b01101101110) && ({row_reg, col_reg}<=11'b10010101110)) color_data = 12'b000000000000;
	end
endmodule