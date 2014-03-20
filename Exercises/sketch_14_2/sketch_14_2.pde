//Explore drawing circles and arcs with sin() and cos().
//Develop a composition from the results of the exploration.


size(400,400);
background(255, 4, 5);

//this will draw a circle of ellipses
noStroke();
smooth();
int radius = 38;
for (int deg = 0; deg < 360/2; deg += 12) {
float angle = radians(deg);
float x = 50 + (cos(angle) * radius);
float y = 50 + (sin(angle) * radius);
}

//playing around with the ellipse values to create different shapes
noStroke();
smooth();
int radius2 = 28;
for (int deg = 0; deg < 360/2; deg += 12) {
float angle = radians(deg);
float x = 150 + (cos(angle) * radius2);
float y = 150 + (sin(angle) * radius2);
              ellipse(x, y, 6, y);
}
//this will draw 3 arcs
strokeWeight(2);
arc(50, 55, 50, 50, 0, HALF_PI);
arc(50, 55, 60, 60, HALF_PI, PI);
arc(50, 55, 70, 70, PI, TWO_PI - HALF_PI);
noFill();
arc(50, 55, 80, 80, TWO_PI - HALF_PI, TWO_PI);

smooth();
fill(0, 20, 200);
randomSeed(0);
strokeWeight(10);
stroke(0, 150);
for (int i = 0; i < 160; i += 20) {
  float begin = radians(i);
  float end = begin + HALF_PI;
  arc(307, 207, i, i, begin, end);
}

noStroke();
smooth();
int radius1 = 38;
for (int deg = 0; deg < 220; deg += 12) {
float angle = radians(deg);
float x = 50 + (cos(angle) * radius1);
float y = 50 + (sin(angle) * radius1);
ellipse(x, y, 20, 20);
}

noStroke();
smooth();
int radius3 = 38;
for (int deg = 0; deg < 220; deg += 12) {
float angle = radians(deg);
float x = 70 + (cos(angle) * radius3);
float y = 110 + (sin(angle) * radius3);
ellipse(x, y, 10, 10);
}
