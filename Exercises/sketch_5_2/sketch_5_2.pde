//Create a composition with a series of lines and ellipses. 
//Use an if structure to select which lines of code to run
//and which to skip.

size(300, 200);
background(80, 10, 30, 50);
fill(30, 40, 50, 60);

for(int x = 200; x > 100; x += 5) {
  if (x <= 50) {
    line (x, 40, x, 80);
  } else {
    ellipse(50, 50, 36, 36);
  }
}


//int x = 200;
//if (x > 100) {
//  ellipse(50, 50, 36, 36);
//}
//if (x < 100) {
//  ellipse(100, 100, 36, 36);
//}
//if (x > 100) {
//  ellipse(100, 100, 40, 40);
//}
//
//stroke(255);
//
//int y = 300;
//if (y > 200) {
//  line(100, 50, 100, 80);
//}
//if (y < 200) {
//  line(100, 50, 100, 80);
//}
//if (y > 200) {
//  line(200, 50, 200, 80);
//}
//





