`timescale 1ns / 1ps

// Tracks where the monitor is drawing (moving left to right across each row) & generates the sync signals for timing
// Using 640x480 monitor to display content

module vga_controller (
    // Inputs
    input wire vga_clk, // Pixel clock
    input wire rst, // Active high reset

    // Outputs       
    output reg [9:0] pixel_x, // Horizontal pos. (10 bits wide to cover full scan ranges)
    output reg [9:0] pixel_y, // Vertical pos.
    output reg hsync, // HSYNC = horizontal line timing
    output reg vsync, // VSYNC = vertical line timing
    output wire game_tick, // For screen frame update
    output wire display_area // To indicate if curr. coordinates are inside 640x480 display
);

    localparam H_VISIBLE = 640; // Number of visible pixel positions in each row
    localparam H_FRONT = 16; // Wait 16 pixel-clock periods before HSYNC pulse
    localparam H_SYNC = 96; // Keep low for 96 pixel-clock periods
    localparam H_BACK = 48; // Wait another 48 pixel-clock periods before starting next row
    localparam H_TOTAL = 800; // Total pixel clock periods for a complete row

    localparam V_VISIBLE = 480; // Each row has 640 visible pixel positions
    localparam V_FRONT = 10; // Wait 10 line periods before VSYNC pulse
    localparam V_SYNC = 2; // Keep low for 2 pixel-clock periods
    localparam V_BACK = 33; // Wait another 33 line periods before starting next frame
    localparam V_TOTAL = 525; // Total line periods for a complete frame

    localparam SCREEN_WIDTH = H_TOTAL - 1;
    localparam SCREEN_HEIGHT = V_TOTAL - 1;

    // Store current horizontal and vertical scan positions
    reg [9:0] h_counter;
    reg [9:0] v_counter;

    always@(posedge vga_clk)
    begin
        if (rst)
        begin
            // Set both counters to zero
            h_counter <= 10'b0;
            v_counter <= 10'b0;
        end
        else
        begin
            if (h_counter < SCREEN_WIDTH)
            begin
                h_counter <= h_counter + 1'b1;
            end
            else
            begin
                h_counter <= 10'b0;
                if (v_counter < SCREEN_HEIGHT)
                begin
                    v_counter <= v_counter + 1'b1;
                end
                else
                begin
                    v_counter <= 10'b0;
                end
            end
        end
    end

    // Generate HSYNC and VSYNCH (aka combinational logic for when the counters change)
    always @(*) begin
        hsync = ~((h_counter >= H_VISIBLE + H_FRONT) && (h_counter < H_VISIBLE + H_FRONT + H_SYNC));
        vsync = ~((v_counter >= V_VISIBLE + V_FRONT) && (v_counter < V_VISIBLE + V_FRONT + V_SYNC));
    end

    // Output the scan coordinates
    always @(*) begin
        pixel_x = h_counter;
        pixel_y = v_counter;
    end

    assign display_area = (h_counter < H_VISIBLE) && (v_counter < V_VISIBLE); // Visible display area
    assign game_tick = (h_counter == 0) && (v_counter == V_VISIBLE); // Generate game update enable
endmodule
