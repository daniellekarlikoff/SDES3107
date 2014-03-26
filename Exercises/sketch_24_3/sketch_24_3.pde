//24.3 Load an image and use it as a drawing tool.

PImage img;
PImage img2;
int mX, mY = 0;

void setup() { //setup () runs once
  frameRate(30);
  //colorMode(HSB, 360, 100, 100);
  img = loadImage("Heart-SG2001-transparent.png");
  img2 = loadImage("psptubez_dot_com_003.png");

  size(img.width /2, img.height/2);
  fill(30, 40, 40, 30);
  textSize(32);
}

void draw() {
  //if ((keyPressed ==true) && (key == 'p')) {
    image(img, 0, 0, img.width /2, img.height/2);
    image(img2, mouseX-(img2.width/4), mouseY-(img2.height/4));
  }


