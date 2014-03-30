//2. Move a shape from left to right across the screen.
//When it moves off the right edge, return it to the left.

void setup() {
size(300,300);

}

float x = 0.0;
void draw() {
frameRate(100);
background(x *2);
ellipse(x, 100, x, 150);
fill(255,0,0);
x = x + 0.5;
if (x > 300) {
x = 0; }

}

