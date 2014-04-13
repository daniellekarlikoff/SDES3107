//2. Use HSB color and a for structure to design a 
//gradient between two colors.
// seems slow to run


size(200,300);
background(255, 0, 0);
colorMode(HSB, 360, 100, 100);
for (int i = 0; i < 100; i++) {
float newHue = 200 - (i*1.2);
stroke(newHue, 70, 80);
line(i, 100, i, 200);

//try to play with different shapes and placements of gradient.

for (int b = 0; b < 50; b++) {
float newHue1 = 200 - (b/1.2);
stroke(newHue1, 100, 80);
line(b, 0, b/2, 80);


for (int c = 0; c < 50; c++) {
float newHue2 = 200 - (c/1.2);
stroke(newHue2, 100, 80);
line(100, 250, c/2, 210);

}


}


}



