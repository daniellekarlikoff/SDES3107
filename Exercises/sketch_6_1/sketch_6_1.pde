//Draw a regular pattern with 5 lines. Rewrite the code using
//a for structure.

size(200, 200);

//line(20, 20, 20, 180);
//line(30, 20, 30, 180);
//line(40, 20, 40, 180);
//line(50, 20, 50, 180);
//line(60, 20, 60, 180);

for(int x = 20; x < 62; x += 10) {
  line(x, 20, x, 180);
}
