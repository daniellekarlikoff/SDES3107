//Write your own function to draw a parameterized arch.


float c = 110.0;

void setup() { 
  size(200, 200);
  background(255);
  smooth();
  noLoop();

}
void draw() { 
  hi(c);
}

void hi(float curvature) {
  float y = 105.0;
  strokeWeight(20);
  noFill();
  beginShape();
  vertex(15.0, y);
  bezierVertex(15.0, y-curvature, 30.0, 55.0, 50.0, 55.0);
  bezierVertex(70.0, 55.0, 85.0, y-curvature, 85.0, y);
  endShape();
}
