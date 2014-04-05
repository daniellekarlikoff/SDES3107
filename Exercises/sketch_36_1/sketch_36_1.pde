//1. Select a noun and an adjective. Animate the noun 
//to reveal the adjective.


PFont font;
String[] words = { "hat", "cool"  };
int whichWord = 0;
int opacity = 0;
int direction = 1;

void setup() {

size(200, 200);

font = loadFont("CallThree-Negativ-48.vlw");
textFont(font);
textAlign(CENTER);
frameRate(7);
}

void draw() {
  
background(255);
opacity += 2 * direction;
if ((opacity < 0) || (opacity > 255)) {
direction = -direction;
}
 fill(255, 0, 0, opacity);
text("yo", 150, 150);


whichWord++;
if (whichWord == words.length) {
whichWord = 0;
}
text(words[whichWord], width/2, 55);
}


