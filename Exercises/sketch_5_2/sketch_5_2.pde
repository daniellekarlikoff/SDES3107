//Create a composition with a series of lines and ellipses. 
//Use an if structure to select which lines of code to run
//and which to skip.

size(200, 300);
background(255);
fill(30, 0, 50, 60);


int a = 10;
int b = 20;

if ((a > 5) && (b < 30)) {
  line(20, 50, 80, 50);
}
if ((a < 15) && (b < 30)) {
ellipse(50, 50, 36, 36);
}
if (b < 10) {
  ellipse(30, 60, 30, 40);
}

