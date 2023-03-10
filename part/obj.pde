public class obj{
  PVector pos = null;
  PVector v = null;
  int dim = (int)random(4,20);
  int col[] = {(int)random(1,255), (int)random(1,255), (int)random(1,255)};
  PVector[] forces = new PVector[100];
  
  obj(float x, float y) {
    this.pos = new PVector(x, y);
  }
  PVector deltaPos;
  
  void addForce(PVector f){
    for(int i = 0; i<forces.length; i++){
      if(forces[i] == null){
        forces[i] = f;
        break;
      }
    }
  }
  
  void changeForce(int index, PVector f){
    forces[index] = f;
  }
  
  
  void updateObj(){
    deltaPos = pos;
    for(int i =0; i<forces.length; i++){
      if(forces[i] == null) break;
      deltaPos.x += forces[i].x;
      deltaPos.y += forces[i].y;
    }
    pos = deltaPos;
    if(deltaPos.y>=height-dim){
      pos.y = height-dim/2;
    }
  }
  
  void drawObj(){
    noFill();
    stroke(255);
    strokeWeight(dim);
    point(this.pos.x, this.pos.y);
  }
}
