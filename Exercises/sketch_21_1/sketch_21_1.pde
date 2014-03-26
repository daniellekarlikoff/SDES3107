
void  setup()  {
    size(500,500);
    background(100);
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
  
