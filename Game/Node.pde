/**
 Clase base del nodo.
 
 La clase es abstracta en tanto el nodo no tiene forma.
 La forma de un nodo se implementa en sus las clases derivadas.
 */

abstract class Node {
  // 1. Attributes
  PVector position;

  // 2. Constructors
  // 2.1. Default
  Node() {
    setPosition(position);
  }

  // 2.2. Other
  Node(PVector p) {
    setPosition(p);
  }

  // 3. Methods

  // 3.1. Abstract

  abstract void display();

  abstract boolean pick(int x, int y);

  // 3.2. Setters

  void setPosition(PVector pos) {
    position = pos;
  }

  // method overloading
  void setPosition(float x, float y) {
    // call original version on the correct type
    setPosition(new PVector(x, y));
  }

  // 3.3. Getters

  PVector position() {
    return position;
  }
 }
