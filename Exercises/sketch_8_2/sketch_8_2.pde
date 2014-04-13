//Use the data from the curve
//y = x (to the power of 8) to draw something unique.

size(300, 300);
background(200, 6, 30);
stroke(0, 255, 40);
for (float x = 0; x < 1; x+= 0.1) {
  float y = 6- pow(x, 8);
  
  float xPos = map(x, 0,10, 6,200);
  float yPos = map(y, 0,20, 9,200);
  point(xPos,yPos);
}

for (float x = 0; x < 1; x+= 0.3) {
  float y = 2- pow(x, 8);
  
  float xPos = map(x, 0,20, 3,200);
  float yPos = map(y, 0,70, 6,200);
  point(xPos,yPos);
}

for (float x = 0; x < 1; x+= 0.3) {
  float y = 10+ pow(x, 8);
  
  float xPos = map(x, 0,20, 3,200);
  float yPos = map(y, 0,70, 6,200);
  point(xPos,yPos);
}

