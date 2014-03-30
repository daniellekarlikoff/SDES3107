//4.3 Explore the functions for constraining numbers. Use min()
//and max() to draw a regular pattern of lines from a sequence of
//irregular numbers


size(300,400);
background(200, 50, 70);

float y = min(30, 105); 
float z = max(82, 50);

line(0, y, width, y);
y = y * 1.6; 
line(0, y, width, y);
z = z * 2.6; 
line(0, z, width, z);
line(0, z, width, z);
y = y * 1.6; 
line(0, y, width, y);
z = z * 1.6; 
line(0, z, width, z);
