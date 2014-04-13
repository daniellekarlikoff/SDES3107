//3.3 Create a composition that scales proportionally 
//with different window sizes. Put different values
//into size() to test.

size(900, 900);
background(30, 40, 50);
fill(255, 0, 70);
ellipse(width*0.5, height*0.5, width*0.66, height*0.66);
stroke(255, 0, 0);
line(width*0.5, 0, width*0.5, height);
line(0, height*0.5, width, height*0.5);


