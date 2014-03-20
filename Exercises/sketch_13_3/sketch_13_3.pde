//13.3. Use two different typefaces to display the dialog 
//between two characters.

//ACaslonPro-Italic-20.vlw
//AmericanTypewriter-Condensed-30.vlw

size(500,500);
background(0);

PFont font1;
PFont font2;

font1 = loadFont("ArialMT-48.vlw");
font2 = loadFont("FinenessProExtraLightCond-88.vlw");

textFont(font1);
text("Hello world", 100,100);
textFont(font2);
text("HIhihihihi", 200,200);

