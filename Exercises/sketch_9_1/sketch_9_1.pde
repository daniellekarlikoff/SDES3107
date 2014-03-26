// Explore a wide range of color combinations within one composition.


size(400, 500);
background(116, 200, 250);

for (int t = 0; t < 100; t++) {
  float newHue = 200 - (t*2.2);
  stroke(newHue, 150, 200);
  line(t/4, 200, t*3, 1000);
}


int w = 0;
noStroke();
for (int p = 20; p<= 255; p += 20) {
  fill(0, 230, 87, p);
  rect(p, 140, 90, 20);
  w += 40;
}


int o = 0;
noStroke();
for (int l = 20; l<= 255; l += 20) {
  fill(0, 230, 87, l);
  rect(l, 340, 90, 20);
  o += 40;
}


int x = 0;
noStroke();
for (int i = 11; i<= 255; i += 10) {
  fill(0, 250, 220, i);
  ellipse(x, 60, 30, 100);
  x += 20;
}



int u = 0;
strokeWeight(4);
stroke(174, 221, 60);
for (int g = 30; g<= 255; g += 7) {
  fill(0, 20, 255, g);
  rect(g, 200, 2000, 102);
  u += 5;
}





