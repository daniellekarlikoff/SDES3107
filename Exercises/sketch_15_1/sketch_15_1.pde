//15.1 Use three variables assigned to random values to create a
//composition that is different every time the program is run.

size(500,500);
background(255, 100, 240);

int x = 250;
int y = 250;
float size = 30;
float hue = 50;
float transparency = 50;
colorMode(HSB, 360, 100, 100);
float v = 0.0;

// 0 1 2 3 4 ..... 99
for(int i = 0; i < 300; i++) {
  x = round(random(width));
  y = round(random(height));
  size = random(10,40);
  hue = random(160,250);
  transparency = random(100);
  
  fill(hue, 90, 150, transparency);
  rect(x, y, size, size);
  
  stroke(255, 40);
  fill(255, 0, 0, transparency);
  ellipse(x, y, 10, 10);
  
}
