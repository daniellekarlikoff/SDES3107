//13.2. Draw a paragraph of text to the display window. 
//Carefully select the composition.

size(800,500);
background(184, 247, 250);

PFont font;
font = loadFont("Archian-Initial-40.vlw");
textFont(font);
fill(20);
String s = "Put it on the companycard";
text(s, 20, 70);

font = loadFont("DINMittelschriftStd-48.vlw");
textFont(font);
fill(255, 100);
String d = "TOO MUCH IS NEVER ENOUGH";
text(d, 50, 120);
fill(255, 190);
String e = "TOO MUCH IS NEVER ENOUGH";
text(e, 50, 150);
font = loadFont("Archian-Initial-40.vlw");
textFont(font);
fill(0);
String f = "Think nothing.";
text(f, 100, 220);
String G = "FEEL EVERYTHING.";
text(G, 110, 260);
String H = "PLEASURE IS GOOD.";
text(H, 120, 300);
String i = "Fantasy is";
text(i, 130, 340);

font = loadFont("AbsaraSansTF-MediumItalicSC-48.vlw");
textFont(font);
fill(255);
String u = "T R U T H .";
text(u, 400, 450);
