Mover mover;
Mover ball2; 
  PVector location;
  PVector velocity;
  PVector Blocation;
  PVector Bvelocity;
void setup() {
  size(640,360);
  mover = new Mover();
  ball2 = new Mover();
}
 
void draw() {
  background(255);
  ball2.update();
  ball2.checkEdges();
  ball2.display();
  mover.update();
  mover.checkEdges();
  mover.display();
}
class Ball2 {
  
  Ball2 () {
    Blocation = new PVector(0,100);
    Bvelocity = new PVector(random(4,5),0);
  }
 void display() {
   background(126);
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,30,30);
 
   
 }
    void update() {
    Blocation.add(Bvelocity);
  }
   void checkEdges() {
    if (Blocation.x > width) {
      Bvelocity = Bvelocity.mult(-1) ;
    } else if (Blocation.x < 0) {
     Bvelocity = Bvelocity.mult(-1) ;
   }
  } 
class Mover {
 

 
  Mover() {
    location = new PVector(width,height/2);
    velocity = new PVector(random(1,5),0);
  }
 
  void update() {
    location.add(velocity);
  }
 
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,16,16);
  }
 
  void checkEdges() {
    if (location.x > width) {
      velocity = velocity.mult(-1) ;
    } else if (location.x < 0) {
      velocity = velocity.mult(-1) ;
    }
  }
