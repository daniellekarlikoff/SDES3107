//35.2. Load an image and use mouseX and mouseY 
//to read the value of the pixel beneath the cursor.
//Use this value to change some aspect of the image.


PImage img;
PImage zoom;
PImage eye, eye2;
color pixelColour;
int frame = 0;

void setup() {
  size(600, 600);
  img = loadImage("image-02.jpg");
}

void draw() {
  image(img, 0, 0, width, height);
  
  frame+=2;
  float eyeSize = (sin(radians(frame)) + 1) *40;
  
  //get eye
  eye = get(207-20, 148-70, 80, 40);
  image(eye, 300-600, 448-90, 120, 80);
  
  eye2 = get(297-20, 148-20, 40, 40);
  image(eye2, 297-40, 148-40, 150, 1000);
  
  //get zoom area
  
  zoom = get(mouseX-10, mouseY-10, 20, 20);
  image(zoom, mouseX-60, mouseY, 80, 80);
  pixelColour = get(mouseX, mouseY);
  fill(pixelColour);
  ellipse(mouseX+30, mouseY, 50, 50);
}

