// P_2_2_3_01.pde
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
 * form mophing process by connected random agents
 * 
 * MOUSE
 * click               : start a new circe
 * position x/y        : direction of floating
 * 
 * KEYS
 * 1-2                 : fill styles
 * f                   : freeze. loop on/off
 * Delete/Backspace    : clear display
 * s                   : save png
 * r                   : start pdf recording
 * e                   : stop pdf recording
 */

import processing.pdf.*;
import java.util.Calendar;

boolean recordPDF = false;

int formResolution = 15;
int stepSize = 2;
float distortionFactor = 1;
float initRadius = 150;
float centerX, centerY;
float[] x = new float[formResolution];
float[] y = new float[formResolution];

boolean filled = false;
boolean freeze = false;

PImage img;
float z;
PFont font;

void setup(){
  size(displayWidth, displayHeight);
  smooth();
  img = loadImage("qFfCj.png");
 
font = loadFont("ITCAvantGardePro-Bk-100.vlw");

  // init form
  centerX = width/2; 
  centerY = height/2;
  float angle = radians(360/float(formResolution));
  for (int i=0; i<formResolution; i++){
    x[i] = cos(angle*i) * initRadius;
    y[i] = sin(angle*i) * initRadius;  
  }

  stroke(0, 50);
  background(20, 40, 90);
  frameRate(100);
}


void draw(){
z += 3.5;
if (z > width) {
z = -height; }
image(img, z, 0);
  
  
// Invert cursor position to create a secondary response
float p = mouseX;
float o = mouseY;
float ix = width - mouseX;
float iy = mouseY - height; // Inverse Y background(126);
fill(255, 30, 10, 40);
ellipse(p, height/2, o, o);
fill(0, 30, 79, 129);
ellipse(ix, height/2, iy, iy);  
    
  
  
//adding some typography

textFont(font);
fill(0, 80);
text("q", 100, 370);
text("t", 140, 450);
text("s", 190, 490);
text("i", 230, 570);
fill(270, 100);
text("o", 310, 640);
text("l", 350, 710);
text("n", 390, 950);
text("M", 730, 820);
text("d", 390, 500);
text("l", 450, 710);
fill(0, 80);
text("n", 890, 450);
text("M", 530, 320);
text("d", 790, 200);

  // floating towards mouse position
  if (mouseX != 0 || mouseY != 0) {
    centerX += (mouseX-centerX) * 0.01;
    centerY += (mouseY-centerY) * 0.01;
  }
  

  

//using a for structure to draw elements to the screen
// at each frame via the cursor
//gradiate from green to blue


{
colorMode(HSB, 360, 100, 100);
if (mousePressed == true) {
                fill(0, 26);
              } else {
                fill(255, 26);
              }
              for (int i = 0; i < 6; i++) {
                float newHue = 200 - (i*10.2);
                stroke(newHue, 70, 80);
                ellipse(mouseX + i*i, mouseY, i, 200);

} }


{


{
  
//numerous lines in different angles and directions
  

float y = 100;

line(80, y, displayHeight, 200);
y = y * 2;
line(50, y, displayHeight, 300);
y = y * 1.6; 
line(40, y, displayHeight, 200);
y = y / 1.6;
line(140, y, displayHeight, 180);
y = y * 1.6;
line(30, y, displayHeight, 20);
y= y * 2.3;
line(0, y, width, 30);
y = y / 1.6; 

line(200, y, displayHeight, 100);
y = y * 3.6;
line(300, y, displayHeight, 100);
y = y * 1.6; 
line(70, y, displayHeight, 200);
y = y * 1.6;
line(80, y, displayHeight, 300);
y = y * 1.6;
line(100, y, height, 300);
y= y * 2.3;
line (200, y, displayHeight, 200);
y = y / 1.6; 
line(300, y, height, 100);
y = y * 3.6;
line(200, y, width, 20);
y = y * 1.6; 
line(width, y, height, 80);
y = y * 1.6;
line(300, y, width, 102);
y = y * 1.6;
line(200, width, height, 200);
}
  // calculate new points
  stroke(0);
  for (int i=0; i<formResolution; i++){
    x[i] += random(-stepSize,stepSize);
    y[i] += random(-stepSize,stepSize);
    // ellipse(x[i], y[i], 5, 5);
  }

  strokeWeight(0.75);
  if (filled) fill(random(255));
  else noFill();

  beginShape();
  // start controlpoint
  curveVertex(x[formResolution-1]+centerX, y[formResolution-1]+centerY);

  // only these points are drawn
  for (int i=0; i<formResolution; i++){
    curveVertex(x[i]+centerX, y[i]+centerY);
  }
  curveVertex(x[0]+centerX, y[0]+centerY);

  // end controlpoint
  curveVertex(x[1]+centerX, y[1]+centerY);
  endShape();
}

}
// events
void mousePressed() {
  //init form on mouse position
  centerX = mouseX; 
  centerY = mouseY;
  float angle = radians(360/float(formResolution));
  float radius = initRadius * random(0.5,1.0);
  for (int i=0; i<formResolution; i++){
    x[i] = cos(angle*i) * radius;
    y[i] = sin(angle*i) * radius;
  }
}


void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == DELETE || key == BACKSPACE) background(255);

  if (key == '1') filled = false;
  if (key == '2') filled = true;

  // ------ pdf export ------
  // press 'r' to start pdf recording and 'e' to stop it
  // ONLY by pressing 'e' the pdf is saved to disk!
  if (key =='r' || key =='R') {
    if (recordPDF == false) {
      beginRecord(PDF, timestamp()+".pdf");
      println("recording started");
      recordPDF = true;
      stroke(0, 50);
    }
  } 
  else if (key == 'e' || key =='E') {
    if (recordPDF) {
      println("recording stopped");
      endRecord();
      recordPDF = false;
      background(255); 
    }
  } 

  // switch draw loop on/off
  if (key == 'f' || key == 'F') freeze = !freeze;
  if (freeze == true) noLoop();
  else loop();
}


// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}









