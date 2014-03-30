//3. Load a GIF or PNG image with transparency and
//create a collage by layering the image.


size(800,800);
PImage img;
img = loadImage("blue_fish_png_by_mysticmorning-d4twsja.png");
image(img, 0, 200, width, height);
background(255);
tint(255, 0,40);
// Draw image 10 times, moving right
for (int i = 0; i < 10; i++) {
  image(img, i*10, 0);
}

PImage img2;
img2 = loadImage("blue_fish_png_by_mysticmorning-d4twsja.png");
image(img2, 0, 200, width, height);
background(255);
tint(255, 51);

for (int i = 0; i < 20; i++) {
  image(img2, i*20, 9);
  
}
