// This file chooses the color of each screen pixel to display a stationary dinosaur on white background.
module renderer (
    input wire pixel_clk,
    input wire reset,
    input wire video_active, // Signal indicating if curr. coordinate is in visible display area

    // Current screen coordinates (640x480 monitor display)
    input wire [9:0] pixel_x,
    input wire [9:0] pixel_y,

    // 12-bit output color (4 bits for red, green, and blue)
    output reg  [11:0] rgb
);

    // Dinosaur position and size
    localparam DINO_X = 80;
    localparam DINO_Y = 214;
    localparam DINO_W = 56;
    localparam DINO_H = 51;

    wire inside_dino; // Signal that indicates if the curr. screen coordinate falls inside the sprite rectangle
    
    // Coordinates within the sprite
    wire [9:0] sprite_x;
    wire [9:0] sprite_y;
    
    wire [11:0] dino_color;

    // Checks if current screen pixel is inside the dino's rectangle
    assign inside_dino =
        (pixel_x >= DINO_X) &&
        (pixel_x < DINO_X + DINO_W) &&
        (pixel_y >= DINO_Y) &&
        (pixel_y < DINO_Y + DINO_H);

    // Convert screen coordinates to coordinates within the sprite
    assign sprite_x = inside_dino ? pixel_x - DINO_X : 10'd0;
    assign sprite_y = inside_dino ? pixel_y - DINO_Y : 10'd0;

    // Instantiate sprite
    dino1_rom dino_sprite (
        .clk        (pixel_clk),
        .row        (sprite_y[5:0]),
        .col        (sprite_x[5:0]),
        .color_data (dino_color)
    );

    // Since ROM delays its coordinates by one clock, we delay the corresponding control signals to match
    reg inside_dino_d;
    reg video_active_d;

    always @(posedge pixel_clk) begin
        if (reset) begin
            inside_dino_d  <= 1'b0;
            video_active_d <= 1'b0;
        end else begin
            inside_dino_d  <= inside_dino;
            video_active_d <= video_active;
        end
    end

    // Select the displayed pixel color
    always @* begin
        rgb = 12'hFFF;  // White background

        // For this image, we treat black background pixels as transparent
        if (inside_dino_d && dino_color != 12'h000)
            rgb = dino_color;

        // Output black outside the visible screen
        if (!video_active_d)
            rgb = 12'h000;
    end

endmodule