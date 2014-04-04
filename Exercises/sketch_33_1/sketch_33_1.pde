//1. Create an array to store the y-coordinates of a
//sequence of shapes. Draw each shape inside draw() and use 
//the values from the array to set the y-coordinate of each.


int[] data;
int frame =0;

void setup() {
  size(200, 200);
  frameRate(1);
  data = new int[5];
  data[0] = 19;
  data[1] = 40;
  data[2] = 75;
  data[3] = 10;
  data[4] = 90;
}

void draw() {
  background(255);
  frame++;
  if (frame == data.length) {
    frame =0;
  }
  ellipse (28, data[frame], 20, 20);
  
}

