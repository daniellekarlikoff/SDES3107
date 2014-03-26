// 26.1. Animate a shape to react when the mouse is 
//pressed and when it is released


int value = 40;

void setup(){
  size(300,400);
  background(255, 0, 200);
}

void draw() {
  fill(value);
  rect(100, 25, 100, 50);
  rect(100, 105, 100, 105);
  ellipse(100, 400, 300, 300);
}
  
void mousePressed() {
  if (value ==0) {
    value = 255;
  } else {
    value = 0;
  }

}
void mouseReleased() {
  value -= 200;
}


//int gray = 0;
//
//void draw() {
//  background(gray);
//  if (mousePressed == true) {
//  }
//}
//void mousePressed() {
//  gray += 100;
//  
//}
//void mouseReleased() {
//  gray -= 100;
//}

