//21.2. Extend the function created for exercise 1 
//by creating more parameters to control additional 
//aspects of its form.



void  setup()  {
    size(500,500);
    background(100);
 smooth();

}

void draw() {
  myFunction(120, 300, 100, 200);
  myFunction(150, 200, 100, 300);
  myFunction(180, 100, 100, 400);
}

void myFunction(int size, int number, int x, int y) {
  
  for (int counter = number; counter > 0; counter -=10) {
    rect(x, y, size, size);
    size-=10;
  }
}
  
