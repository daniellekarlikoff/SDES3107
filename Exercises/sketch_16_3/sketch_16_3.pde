//16.3 Use pushMatrix() and popMatrix() to rearrange
//the composition from exercise 2.

size(400,500);
background(255, 50, 0);
stroke(50);
smooth();
rect(25, 25, 50, 50);
pushMatrix();
translate(width/2, height/2);
rotate(PI/8);
rect(-25, -25, 50, 50);
rect(25, 25, 50, 50);
popMatrix();
translate(10, -10);
rect(25, 75, 100, 200);
pushMatrix();
rect(30, 20, 40, 30);
rect(100, 20, 100, 30);
rotate(PI/6);
rect(100, 20, 100, 30);
