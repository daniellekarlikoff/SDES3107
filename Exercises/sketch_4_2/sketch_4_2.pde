//Use multiplication to create a series of lines with
//increasing space between each.

background (250);
size(400, 400);
float y = 20;
line(0, y, width, y);
y = y * 1.6; // Assign 32.0 to y
line(0, y, width, y);
y = y * 1.6; // Assign 51.2 to y line(0, y, width, y);
line(0, y, width, y);
y = y * 1.6; // Assign 81.920006 to y
line(0, y, width, y);
y = y * 1.6;
line(0, y, width, y);
y = y * 1.6;
line(0, y, width, y);

