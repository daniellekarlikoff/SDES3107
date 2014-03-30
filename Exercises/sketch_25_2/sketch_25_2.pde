//Create a typing program to display a different image 
//for each letter on the keyboard.

void setup() { size(300, 300); smooth(); strokeWeight(4);
}
void draw() {
background(204);
// If the 'A' key is pressed draw a line
if ((keyPressed == true) && (key == 'A')) {
line(50, 25, 50, 75);
}

if ((keyPressed == true) && (key == 'B')) {
  ellipse(50, 50, 50,50);
  
}

if ((keyPressed == true) && (key == 'C'))
  ellipse(90, 90, 90, 90);;
  
  }
  
