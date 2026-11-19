`timescale 1ns / 1ps

// Synchronize and debounce a held button
module input_handler #(
    parameter integer DEBOUNCE_CYCLES = 126000 // 5 ms at 25.2 MHz
)(
    input  wire clk,
    input  wire rst,
    input  wire btn_run,
    output reg  run_held
);
    (* ASYNC_REG = "TRUE" *) reg btn_meta; // For capturing physical button
    (* ASYNC_REG = "TRUE" *) reg btn_sync; // For capturing prev value of btn_meta
    reg [16:0] stable_count;

    always @(posedge clk) begin
        if (rst) begin
            btn_meta <= 1'b0;
            btn_sync <= 1'b0;
        end else begin
            btn_meta <= btn_run;
            btn_sync <= btn_meta;
        end
    end

    // For debouncing
    always @(posedge clk) begin
        if (rst) begin
            stable_count <= 17'd0;
            run_held <= 1'b0;
        end else if (btn_sync == run_held) begin
            stable_count <= 17'd0;
        end else if (stable_count == DEBOUNCE_CYCLES - 1) begin
            stable_count <= 17'd0;
            run_held <= btn_sync;
        end else begin
            stable_count <= stable_count + 17'd1;
        end
    end
endmodule