// Draw a dense pattern by embedding two for structures.


size(800,800);
background(0,0,200);
fill(255);

stroke(255, 0, 0);
fill(255);

for (int x = 30; x < width; x += 30)
{
  for (int y = 30; y < height; y += 30)
  {
    ellipse(x, y, 10, 10);
  }
}


for (int x = 90; x < width; x += 90)
{
  for (int y = 40; y < height; y += 40)
  {
    ellipse(x, y, 20, 20);
  }
}

