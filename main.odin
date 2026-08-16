package odin_chess


import rl "vendor:raylib"
import    "core:fmt"

WINDOW_WIDTH    :: 700
WINDOW_HEIGHT     :: 700

SQUARE_SIZE      : i32 : 80
SQUARES          : i32 : 8
BOARD_START_POS :: ((WINDOW_HEIGHT - (SQUARE_SIZE * SQUARES)) / 2)



main :: proc() {
    rl.InitWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "odin-raylib basic chess game")
    rl.SetTargetFPS(60)

    for !rl.WindowShouldClose() {
        rl.BeginDrawing()
            rl.ClearBackground(rl.RAYWHITE)
            draw_board()
            draw_hovered_square()
            rl.DrawText(fmt.ctprintf("Posição Y do mouse: %v", rl.GetMouseY()),0,0,10,rl.RED)
            rl.DrawText(fmt.ctprintf("Posição X do mouse: %v", rl.GetMouseX()),0,10,10,rl.RED)
        rl.EndDrawing()
      }
    rl.CloseWindow()
}

draw_board :: proc() {
    //SQUARES
    for column: i32 = 0; column < SQUARES; column += 1 {
        for row: i32 = 0; row < SQUARES; row += 1{
            if (column + row) % 2 == 0{
                rl.DrawRectangle(BOARD_START_POS + (SQUARE_SIZE * column), BOARD_START_POS + (SQUARE_SIZE * row), SQUARE_SIZE, SQUARE_SIZE, rl.BROWN)
            } else {
                rl.DrawRectangle(BOARD_START_POS + (SQUARE_SIZE * column), BOARD_START_POS + (SQUARE_SIZE * row), SQUARE_SIZE, SQUARE_SIZE, rl.RAYWHITE)
            }
        }   
    }

    //BIG BOARD
    rl.DrawRectangleLines(BOARD_START_POS , BOARD_START_POS , SQUARE_SIZE * SQUARES, SQUARE_SIZE * SQUARES, rl.BROWN)
}

draw_hovered_square :: proc() {
    mouse_y_pos:= rl.GetMouseY()
    mouse_x_pos:= rl.GetMouseX()

    selected_row: i32 = (mouse_y_pos - BOARD_START_POS) / SQUARE_SIZE
    selected_column: i32 = (mouse_x_pos - BOARD_START_POS) / SQUARE_SIZE 
    if mouse_x_pos >= BOARD_START_POS && mouse_x_pos < (SQUARE_SIZE * SQUARES) + BOARD_START_POS &&
    mouse_y_pos >= BOARD_START_POS && mouse_y_pos < (SQUARE_SIZE * SQUARES) + BOARD_START_POS {
        rl.DrawRectangle(BOARD_START_POS + (SQUARE_SIZE * selected_column), BOARD_START_POS + (SQUARE_SIZE * selected_row), SQUARE_SIZE, SQUARE_SIZE, rl.GREEN)
    }
}