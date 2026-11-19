`timescale 1ns / 1ps

// Selects what to draw for the current game state
module graphics #(
    // Defines dimensions 
    parameter [9:0] STAND_W = 10'd47,
    parameter [9:0] STAND_H = 10'd51,

    parameter [9:0] RUN2_W  = 10'd44,
    parameter [9:0] RUN2_H  = 10'd48,

    parameter [9:0] RUN3_W  = 10'd43,
    parameter [9:0] RUN3_H  = 10'd47,

    // Defines transparency key for each image
    parameter [11:0] STAND_KEY = 12'h474, // For green background
    parameter [11:0] RUN2_KEY  = 12'h000, // For black background
    parameter [11:0] RUN3_KEY  = 12'h000 // For black background
)(
    input  wire vga_clk,
    input  wire rst,
    input  wire  display_area,
    input  wire [9:0] pixel_x,
    input  wire [9:0] pixel_y,
    input  wire [1:0] dino_pose,
    input  wire [1:0] game_state,
    output wire [3:0] red,
    output wire [3:0] green,
    output wire [3:0] blue
);
    // Names for state values & screen positions (match those in game_sm.v)
    localparam [1:0] START = 2'd0, GAME = 2'd1, END = 2'd2;
    localparam [1:0] POSE_STAND = 2'd0, POSE_RUN2 = 2'd1, POSE_RUN3 = 2'd2;
    localparam [9:0] DINO_X = 10'd80;
    localparam [9:0] DINO_BOTTOM = 10'd265;

    reg [11:0] rgb;
    reg [1:0] pose;

    // State machine structure (select what to draw in each)
    always @* begin
        pose = POSE_STAND;
        case (game_state)
            START: begin
                pose = POSE_STAND;
                // Future: title / press-start overlay.
            end
            GAME: begin
                case (dino_pose)
                    POSE_RUN2: pose = POSE_RUN2;
                    POSE_RUN3: pose = POSE_RUN3;
                    default: pose = POSE_STAND;
                endcase
            end
            END: begin
                pose = POSE_STAND;
                // Future: dead pose / game-over / restart overlay.
            end
            default: pose = POSE_STAND;
        endcase
    end

    reg [9:0] sprite_w, sprite_h; // Sprite's dimensions
    always @* begin
        // Default is standing dimension
        sprite_w = STAND_W;
        sprite_h = STAND_H;
        case (pose)
            POSE_RUN2: begin sprite_w = RUN2_W; sprite_h = RUN2_H; end
            POSE_RUN3: begin sprite_w = RUN3_W; sprite_h = RUN3_H; end
            default: begin sprite_w = STAND_W; sprite_h = STAND_H; end
        endcase
    end

    // Locate sprite on the screen
    wire [9:0] sprite_top;
    wire inside_dino;
    wire [9:0] sprite_x, sprite_y;
    
    assign sprite_top = DINO_BOTTOM - sprite_h;
    assign inside_dino = (pixel_x >= DINO_X) && (pixel_x < DINO_X + sprite_w) && (pixel_y >= sprite_top) && (pixel_y < DINO_BOTTOM); // Check that curr. screen pixel is between bounds
    assign sprite_x = inside_dino ? pixel_x - DINO_X : 10'd0;
    assign sprite_y = inside_dino ? pixel_y - sprite_top : 10'd0;

    // Get colors from the sprite ROMs
    wire [11:0] stand_color, run2_color, run3_color;

    dino1_rom stand_sprite (.clk(vga_clk), 
        .row((sprite_y < STAND_H) ? sprite_y[5:0] : 6'd0), 
        .col((sprite_x < STAND_W) ? sprite_x[5:0] : 6'd0), 
        .color_data(stand_color)
    );
    dino2_rom run2_sprite (.clk(vga_clk), 
        .row((sprite_y < RUN2_H) ? sprite_y[5:0] : 6'd0), 
        .col((sprite_x < RUN2_W) ? sprite_x[5:0] : 6'd0), 
        .color_data(run2_color)
    );
    dino3_rom run3_sprite (.clk(vga_clk), 
        .row((sprite_y < RUN3_H) ? sprite_y[5:0] : 6'd0), 
        .col((sprite_x < RUN3_W) ? sprite_x[5:0] : 6'd0), 
        .color_data(run3_color)
    );

    // Match with the ROMs
    reg inside_dino_d;
    reg display_area_d;
    reg [1:0] pose_d;

    always @(posedge vga_clk) begin
        if (rst) begin
            inside_dino_d <= 1'b0;
            display_area_d <= 1'b0;
            pose_d <= POSE_STAND;
        end else begin
            inside_dino_d <= inside_dino;
            display_area_d <= display_area;
            pose_d <= pose;
        end
    end

    // Select matching color & transparency key
    reg [11:0] selected_color, selected_key; 

    always @* begin
        selected_color = stand_color;
        selected_key = STAND_KEY;
        case (pose_d)
            POSE_RUN2: begin selected_color = run2_color; selected_key = RUN2_KEY; end
            POSE_RUN3: begin selected_color = run3_color; selected_key = RUN3_KEY; end
            default: begin selected_color = stand_color; selected_key = STAND_KEY; end
        endcase

        rgb = 12'hFFF;
        if (inside_dino_d && (selected_color != selected_key))
            rgb = selected_color;
        if (!display_area_d)
            rgb = 12'h000;
    end
    assign red = rgb[11:8];
    assign green = rgb[7:4];
    assign blue = rgb[3:0];
endmodule
