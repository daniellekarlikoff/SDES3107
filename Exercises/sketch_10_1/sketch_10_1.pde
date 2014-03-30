size(600, 400);
PImage myImage;
PImage myImage2;
myImage = loadImage("DOG-ssssss-dogs-25606625-1024-768.jpg");
myImage2 = loadImage("Blender3D_Lisc_lipy-Transparent.png");
tint(500,100,200, 120);

image(myImage, 0,0, width, height);
image(myImage2, 0,0, width, height);


float scale = 0.5;
image(myImage, -100,200, myImage.width * scale, myImage.height * scale);
image(myImage2, -100,200, myImage2.width * scale, myImage2.height * scale);


