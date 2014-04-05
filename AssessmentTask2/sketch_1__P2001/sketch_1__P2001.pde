// P_2_0_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * drawing a filled circle with lines.
 * 	 
 * MOUSE
 * position x          : length
 * position y          : thickness and number of lines
 * 
 * KEYS
 * s                   : save png
 * p                   : save pdf
 */

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

void setup(){
size(550, 550);
frameRate(100);
fill(0);
  
}

void draw(){
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");


// The angles increase as the mouse moves from the upper-right
// corner of the screen to the lower-left corner

float angle = atan2(mouseY, mouseX); 
float deg = degrees(angle);
println(deg);
ellipse(mouseX, mouseY, 20, 20); 
rotate(angle);
line(0, 0, 50, 0);




  strokeCap(SQUARE);
  smooth();
  noFill();
  background(50, 170, 255);
  translate(width/2,height/2);
  stroke(255, 40);

  int circleResolution = (int) map(mouseY, 0,height, 2,80);
  float radius = mouseX-width/10 + 0.5;
  float angle1 = TWO_PI/circleResolution;

  strokeWeight(mouseY/100);  

  beginShape();
  for (int i=0; i<=circleResolution; i++){
    float x = cos(angle*i) * radius;
    float y = sin(angle+i) * radius;
    line(0, 0, x, y);
     line(-200, 200, x, y);
     line(200,-200, x, y);
    vertex(x, y);
  }
 
 

 
 
 // make the lines of the shape a more solid form through colour changes
//change background colour when the cursor moves around the screen
    colorMode(HSB, 100, 360, 100);
  rectMode(CENTER); 
  noStroke();
  background(mouseY/4, 100, 100);

  fill(360-mouseY/3, 100, 100);
  rect(550, 0, mouseX+1, mouseX+1);
  
  
// make random ellipses and rectangles to appear
//bottom right corner
//play with hue/HSB colour mode

int x = 250;
int y = 250;
float size = 150;
float hue = 100;
float transparency = 50;
colorMode(HSB, 360, 100, 100);
float v = 0.0;

// 0 1 2 3 4 ..... 99
for(int i = 0; i < 300; i++) {
  x = round(random(height*2));
  y = round(random(width*20));

  size = random(10,40);
  hue = random(90,250);
  transparency = random(100);
  
  fill(hue, 200, 150, transparency);
  rect(x*11, y*2, size, size);
  
  stroke(255, 40);
  fill(255, 0, 0, transparency);
  ellipse(x, y, 10, 10);
  
  

}
  endShape();

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void keyPressed() {
  if (key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
  if (key=='p' || key=='P') savePDF = true;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}



