//2. Use HSB color and a for structure to design a 
//gradient between two colors.

size(200,200);
colorMode(HSB, 360, 100, 100);
for (int i = 0; i < 100; i++) {
float newHue = 200 - (i*1.2);
stroke(newHue, 70, 80);
line(i, 100, i, 200);


}



