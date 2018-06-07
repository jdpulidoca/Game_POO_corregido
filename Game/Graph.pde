/**
 Un grafo esta compuesto de un conjunto de nodos
 y un conjunto de lineas.
 */

class Graph {
  // 1. Attributes
  Node[] nodes;
  Line[] lines;
  int [] data;
  int [] data2;
  PVector position;
  // 2. Constructors
  // 2.1. Default in this case dummy constructor
  Graph(int[] data, int[] data2) {
    setPosition(data,data2);
    nodes = new Node[data.length];
    for (int i = 0; i < nodes.length; i++){
      position=new PVector(data[i],data2[i]); 
      nodes[i] = i<5 ? new Circle(position) : new Rectangle(position);
    }
    // conecta todos los nodos en bucle
    lines = new Line[nodes.length];
    for (int i = 0; i < lines.length; i++)
      if (i < lines.length-1)
        lines[i] = new Line(nodes[i], nodes[i+1]);
      else
        lines[i] = new Line(nodes[i], nodes[0]);
  }

  // 2.2. Main constructor
  // file es un archico csv ubicado en la carpeta
  // data del sketch. Implemente este constructor
  // empleando Table (https://processing.org/reference/Table.html)
  Graph(String file) {
  }
 void setPosition(int [] d,int [] d2){
  data=d;
  data2=d2;  
    }
  void display() {
    pushStyle();
    strokeWeight(3);
    stroke(255, 255, 0);
    for (int i = 0; i < nodes.length; i++)
      nodes[i].display();
    for (int i = 0; i < lines.length; i++)
      lines[i].display();
    popStyle();
  }
}
