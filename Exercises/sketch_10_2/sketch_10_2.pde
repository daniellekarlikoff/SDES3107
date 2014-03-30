//10.2. Draw three images in the display window,
//each with a different tint.

background(0);
size(800,800);
PImage myImage;
myImage = loadImage("blue_fish_png_by_mysticmorning-d4twsja.png");
tint(0, 153, 204); // Tint blue image(img, 0, 0);
image(myImage, 0,0, width, height);

PImage myImage2;
myImage2 = loadImage("butterflies_png_set_by_mossi889-d4u770v.png");
tint(255, 0, 40);
image(myImage2, 0, 0, width, height);

PImage myImage3;
myImage3 = loadImage("oceanic_life_png_set_by_mossi889-d4uydwy.png");
tint(0, 255, 140);
image(myImage3, 0, 0, width, height);

