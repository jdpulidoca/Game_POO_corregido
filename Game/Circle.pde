/**
 Nodo de forma circular.
 */

class Circle extends Node {
    Circle(PVector position){
   setPosition(position); 
  }
  @Override
  void display() {
    pushStyle();
    strokeWeight(5);
    stroke(255, 0, 255);
    fill(0, 255, 0);
    if (pick(mouseX, mouseY)) {
      stroke(0, 255, 0);
      fill(255, 0, 255);
      if(mousePressed==true){
 X[0]=position.x;
 Y[0]=position.y;
 
       }
    }
    ellipse(position.x, position.y,30,30);
    popStyle();
  }

@Override
boolean pick(int x, int y) {
 return sqrt(sq(x-position().x) + sq(y-position().y)) <=30/2;
}
}
