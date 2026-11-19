`timescale 1ns / 1ps

module game_sm #(
    parameter integer ANIM_FRAMES = 6 // 6 display frames = 0.1 second for each running pose (aka switching between dino2 & dino3 positions)
)(
    input wire clk,
    input wire rst,
    input wire game_tick,
    input wire run_held,
    output reg [1:0] game_state,
    output reg [1:0] dino_pose
);
    // Shared encodings with graphics.v
    localparam [1:0] START = 2'd0, GAME = 2'd1, END = 2'd2;
    localparam [1:0] STANDING = 2'd0, RUN2 = 2'd1, RUN3 = 2'd2;
    reg [1:0] state_next;
    reg [15:0] anim_count;

    // FOR TESTING RIGHT NOW: start in the game screen on reset ===========================================================================
    always @(posedge clk) begin
        if (rst)
            game_state <= GAME;
        else
            game_state <= state_next;
    end

    // State machine structure
    // NOTE: I HAVEN'T IMPLEMENTED START OR END YET (THEY'RE JUST PLACEHOLDERS FOR NOW) ===================================================
    always @* begin
        state_next = GAME;
        case (game_state)
            START: begin
                state_next = START;
                // Future: if (start_pressed) state_next = GAME;
            end
            GAME: begin
                state_next = GAME;
                // Future: if (collision) state_next = END;
            end
            END: begin
                state_next = END;
                // Future: if (restart_pressed) state_next = GAME;
            end
            default: state_next = GAME;
        endcase
    end

    // Game logic for pose 
    always @(posedge clk) begin
        if (rst) begin
            dino_pose <= STANDING;
            anim_count <= 16'd0;
        end else if (game_tick) begin
            if ((game_state != GAME) || !run_held) begin
                dino_pose <= STANDING;
                anim_count <= 16'd0;
            end else begin
                case (dino_pose)
                    STANDING: begin
                        dino_pose <= RUN2;
                        anim_count <= 16'd0;
                    end
                    RUN2, RUN3: begin
                        if (anim_count == ANIM_FRAMES - 1) begin
                            dino_pose <= (dino_pose == RUN2) ? RUN3 : RUN2;
                            anim_count <= 16'd0;
                        end else begin
                            anim_count <= anim_count + 16'd1;
                        end
                    end
                    default: begin
                        dino_pose <= RUN2;
                        anim_count <= 16'd0;
                    end
                endcase
            end
        end
    end
endmodule
