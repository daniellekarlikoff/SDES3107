//Draw the curve y = 1 - x(to the power of 4)

//for (int x = 0; x < 100; x++) {
//  float n = norm(x, 0.0, 100.0);
//  float y = pow(n, 4);
//  y *= 100;
//  point(x, y);
//}

//float i = 20303;
//println(map(i, 0, 500, 1, 100));

for (float x = 0; x < 1; x+= 0.001) {
  float y = 1- pow(x, 4);
  float xPos = map(x, 0,1, 0,100);
  float yPos = map(y, 0,1, 0,100);
  point(xPos,yPos);
}


