## Overview
A Ruby 2.3 program that simulates a basic interactive bitmap editor. Bitmaps are represented as an M x N matrix of pixels with each element representing a colour.

## Program input
The input consists of a file containing a sequence of commands, where a command is represented by a single capital letter at the beginning of the line. Parameters of the command are separated by white spaces and they follow the command character.
Pixel coordinates are a pair of integers: a column number between 1 and 250, and a row number between 1 and 250. Bitmaps starts at coordinates 1,1. Colours are specified by capital letters.
Commands
There are 6 supported commands:
- I N M - Create a new M x N image with all pixels coloured white (O).
- C - Clears the table, setting all pixels to white (O).
- L X Y C - Colours the pixel (X,Y) with colour C.
- V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).
- H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).
- S - Show the contents of the current image


## Approach
- I started building the program according to the spec set out in the overview doc. This resulted in a dead-end from a design perspective, with an over-complicated build and poor functionality.
- Facing this point I decided to create a new branch using the initial folder setup with a blank slate for the actual build. This approach adheres much more to an 'MVP' style keeping the program as simple as possible and building complexity step-by-step.
- I looked at various testing methods for the App class but couldn't find a satisfactory way to test behaviour. I could build a passing solution to the test but it would involve 'spiked' untested code so I decided to go as far as I could with code which was TDD'd.

### Test coverage
- 96%

### Testing

Install `rspec`

`$ gem install rspec`

Then run tests:

`$ rspec`
