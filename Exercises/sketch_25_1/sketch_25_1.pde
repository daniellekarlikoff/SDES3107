//Use the number keys on the keyboard to modify 
//the movement of a line.

void  setup() {
size(300, 300);
smooth();
strokeWeight(4);
}

void draw() {
  background(0, 0, 255);
  if (keyPressed == true) {
    if (key == '1') {
      line(100, 100, 300, 0);
    }
    if (key == '2') {
      line(100, 100, 300, 100);
    }
     if (key == '3') {
      line(100, 100, 300, 200);
  }
 if (key == '4') {
      line(100, 100, 300, 300);
}
  }
}






