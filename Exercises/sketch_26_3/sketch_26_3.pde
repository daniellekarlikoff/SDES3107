//26.3. Write a program to update the display window 
//only when a key is pressed.


void  setup() {
size(400, 200);

smooth();
strokeWeight(4);
}
void draw() {
   background(255, 0, 0);
   //  If  the  ‘A’  key  is  pressed  draw  a  line
 if ((keyPressed == true) && (key == 'A')) {
      line(50,  25,  50,  75);
   }  else  {  //  Otherwise,  draw these)
      ellipse(50,  50,  50,  50);
      ellipse(100,  100,  100,  100);
      ellipse(75,  75,  75,  75);
      
   }
}
