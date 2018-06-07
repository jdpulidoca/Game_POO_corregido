/**
 Nodo de forma rectangular.
 */

class Rectangle extends Node {
      Rectangle(PVector position){
   setPosition(position); 
  }
  @Override
  void display() {
    pushStyle();
    rectMode(CENTER);
    strokeWeight(5);
    stroke(0, 0, 255);
    fill(255, 255, 0);
   if (pick(mouseX, mouseY)) {
      stroke(255, 255, 0);
     fill(0, 0, 255);
     if(mousePressed==true){
 X[0]=position.x;
 Y[0]=position.y;
     }
       
      }
    
    rect(position.x, position.y, 30, 30);
    popStyle();
  }

  @Override
  boolean pick(int x, int y) {
   return abs(x-position().x) <= 30/2 && abs(y-position().y) <= 30/2;
 }
}
