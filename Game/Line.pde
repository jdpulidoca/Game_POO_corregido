class Line{
 Node origin, end; 
  Line(Node node1, Node node2){
   origin=node1;
   end=node2;
  }
  void display(){
   pushStyle(); 
    strokeWeight(5);
    stroke(255,0,255);
    line(origin().position().x, origin().position().y,end().position.x,end().position().y);
    popStyle();
  }
  Node origin(){
   return origin; 
  }
  
  Node end(){
   return end; 
  }
   
}
