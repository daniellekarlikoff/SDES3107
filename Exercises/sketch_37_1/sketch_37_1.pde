//37.1. Change the visual attributes of a word as the cursor 
//moves across the display window.

PImage space;
PFont f;

int[] hues = {131, 300, 60, 5};
void setup() {
  size(400, 600);
  colorMode(HSB, 360, 100, 100);
  f = createFont("ACAPPELLA-48.vlw", 24);
  space = loadImage("image-02.jpg");
  textFont(f);
  textAlign(CENTER);
  fill(0);
}
void draw() {
  image(space, 0, 0, width, height);
  text("A VOID", width-mouseX,height-mouseY);
  fill(hues[0], 100, 100);
  text("SO SPACEY", width-mouseX/2,height-mouseY/2);
fill(hues[1], 100, 100);

}
