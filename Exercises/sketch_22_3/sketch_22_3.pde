//Modify code 22-04 to create a sequence of different compositions.

int x = 20; // X-coordinate
int u = 14; // Units
float a = -0.12; // Angle

void setup() {
  size(500, 500);
  stroke(0, 40);
  smooth();
  noLoop();
}

void draw()  {
  background(100, 190, 100);
  tail(x, u, a);
  tail(x*2, u*2, a*2);
  tail(x/2, u/2, a/2);
  tail(x*5, u*7, a*6);

}
void tail(int xpos, int units, float angle) { pushMatrix();
translate(xpos, 3);
for (int i = units; i > 0; i--) { // Count in reverse
    strokeWeight(i);
    line(0, 0, 0, 8);
    translate(0, 8);
    line(0, 0, 0, 8);
    rotate(angle/6);
   translate(xpos/2, 10);
    line(0, 0, 0, 8);
    strokeWeight(i/5);
    line(50, 100, 50, 58);
}
  popMatrix();
}



