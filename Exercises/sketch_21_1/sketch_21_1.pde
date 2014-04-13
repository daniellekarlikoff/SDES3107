//1. Write a function to draw a shape to the screen multiple
//times, each at a different position.
void  setup()  {
    size(300,300);
    background(255, 0, 0);
 smooth();

}

void draw() {
  myFunction(100, 100, 100, 100);
}

void myFunction(int size, int number, int x, int y) {
  
  for (int counter = number; counter > 0; counter -=10) {
    rect(x, y, size, size);
    size-=10;
  }
}
