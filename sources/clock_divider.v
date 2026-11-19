`timescale 1ns / 1ps

module clock_divider (
    input  wire clk,
    input  wire rst,
    output wire vga_clk,
    output wire locked
);

    reg [1:0] div_count = 2'b00;

    always @(posedge clk) begin
        if (rst)
            div_count <= 2'b00;
        else
            div_count <= div_count + 2'b01;
    end

    assign vga_clk = div_count[1];
    assign locked = 1'b1;

endmodule