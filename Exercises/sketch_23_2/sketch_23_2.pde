//2. Invent three unique shapes that behave differently 
//in relation to the mouse. Each shape’s behavior should
//change when the mouse is pressed. Relate the form of
//each shape to its behavior.


void setup() {
size(400, 400);
smooth();
}

//traingular shape moves with cursor and turns into hand
//when mouse pressed.
void draw() { 
background(255,0,0);
if (mousePressed == true) {
cursor(HAND);
fill(100, 0, 20);
triangle(mouseX, 200, mouseX, 450, height, 150);//appears when pressed
} else {
cursor(MOVE);
}
fill (100);
triangle(mouseX, 50, mouseX, 150, height, 250);


//ellipse that turns black when mouse pressed.
if (mousePressed == true) {
fill(0);
} else if (mousePressed == false) {
  fill(255);
} else {
}
ellipse(300, 150, 300, 150);
}




