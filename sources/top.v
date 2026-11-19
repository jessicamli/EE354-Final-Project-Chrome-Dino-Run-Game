`timescale 1ns / 1ps

// Connects the modules together and to the FPGA's pin positions
module top (
    // Inputs
    input wire CLK100MHZ,
    input wire BTNC,
    input wire BTNR,

    // Outputs
    output wire [3:0] VGA_R, // Red components of each pixel
    output wire [3:0] VGA_G, // Green components of each pixel
    output wire [3:0] VGA_B, // Blue components of each pixel
    output reg VGA_HS,
    output reg VGA_VS
);
    wire vga_clk; // Generate 25.5 MHz pixel clock 
    wire clock_locked; // Indicates when clock generator has stabilized
    wire reset_request; // Req. to reset
    wire rst; // Reset signal
    wire run_held; // Sync & debounced BtnR state
    wire game_tick; // Update enable generated per display frame
    
    wire [1:0] game_state;
    wire [1:0] dino_pose;
    wire [9:0] pixel_x;
    wire [9:0] pixel_y;

    wire display_area;
    wire hsync_raw;
    wire vsync_raw;

    clock_divider u_clk_div (
        .clk(CLK100MHZ), .rst(BTNC), .vga_clk(vga_clk), .locked(clock_locked)
    );

    // Reset when requested, release in sync with vga_clk
    assign reset_request = BTNC | ~clock_locked;
    (* ASYNC_REG = "TRUE" *) reg [1:0] reset_pipe = 2'b11;
    always @(posedge vga_clk or posedge reset_request) begin
        if (reset_request)
            reset_pipe <= 2'b11;
        else
            reset_pipe <= {reset_pipe[0], 1'b0};
    end
    assign rst = reset_pipe[1];

    input_handler u_input (
        .clk(vga_clk), .rst(rst), .btn_run(BTNR), .run_held(run_held)
    );

    game_sm u_sm (
        .clk(vga_clk), .rst(rst), .game_tick(game_tick), .run_held(run_held), .game_state(game_state), .dino_pose(dino_pose)
    );

    vga_controller u_vga (
        .vga_clk(vga_clk), .rst(rst), .pixel_x(pixel_x), .pixel_y(pixel_y), .hsync(hsync_raw), .vsync(vsync_raw), .display_area(display_area), .game_tick(game_tick)
    );

    graphics u_gfx (
        .vga_clk(vga_clk), .rst(rst), .pixel_x(pixel_x), .pixel_y(pixel_y), .display_area(display_area), .game_state(game_state), .dino_pose(dino_pose), .red(VGA_R), .green(VGA_G), .blue(VGA_B)
    );

    // Delay sync to match sprite data
    always @(posedge vga_clk) begin
        if (rst) begin
            VGA_HS <= 1'b1;
            VGA_VS <= 1'b1;
        end else begin
            VGA_HS <= hsync_raw;
            VGA_VS <= vsync_raw;
        end
    end
endmodule
