
Use gimp to crop / shrink an image to 256 pixels square
export the image as non-RL encoded BMP and ASCII pgm format (raw grayscale)
Remove the first three lines of the pgm file (header)
Merge groups of 256 pixels to a line with: cat test?.pgm | awk -f order256.awk > test?.txt

 - Eric Praetzel July 2017
