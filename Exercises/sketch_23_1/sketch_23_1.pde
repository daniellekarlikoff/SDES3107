//23.1. Control the position of a shape with the mouse. 
//Strive to create a more interesting relation than one 
//directly mimicking the position of the cursor

void setup() {
  size(500, 500);
  smooth();
}
void draw() {
  background(255, 30, 0);
  ellipse(mouseX *2, mouseY, 33, 33);
  line(mouseX *4, mouseY, 33, 33);
  rect(mouseX /2, mouseY, 20, 50);
}

