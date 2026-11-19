# Chrome Dino Run Game
EE354 Final Project  
Team Members: Jessica Li and Aditi Kelkar

- Content will be displayed on a 640x480 monitor 


Progress Notes:

11/12:
- Created 12 bit roms from the PNGs using py script so sprites can be displayed via FPGA (all but ground line, numbers for score)
- Wrote script to render dinosaur (simply standing); haven't tested yet

11/18:
- Got display working (white background w/ dino on the left middle of screen)
- Currently: dino defaults to standing when no button is pushed; when BtnR is held down, dino "runs" (switches between dino2 and dino3 images)
- Next: 
    - I updated clock divider after testing display so I need to check if the display still works with the updated clock_divider.v
    - Will implement dino jumping (BtnU pressed) and dino ducking (BtnD held)