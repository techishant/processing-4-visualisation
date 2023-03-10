public class particle {
  PVector pos = null;
  PVector v = null;
  int dim = (int)random(4,20);
  int col[] = {(int)random(1,255), (int)random(1,255), (int)random(1,255)};
  
  particle(float x, float y) {
    this.pos = new PVector(x, y);
    this.v = PVector.fromAngle(240);
    this.v.setMag(5);
  }
  
  
  void updateParticle() {
    
    float a;
    if(this.pos.x+this.v.x>width){
      this.pos.x = width-dim;
      a = atan2(this.v.x, this.v.y);
      this.v = PVector.fromAngle(degrees(TWO_PI-a));
      this.v.setMag(5);
    }
    if(this.pos.y+this.v.y>height){
      this.pos.y = height-dim;
      a = atan2(this.v.x, this.v.y);
      this.v = PVector.fromAngle(degrees(TWO_PI-a));
      this.v.setMag(5);
    }
    if(this.pos.x+this.v.x<0){
      this.pos.x = 0;
      a = atan2(this.v.x, this.v.y);
      this.v = PVector.fromAngle(degrees(TWO_PI-a));
      this.v.setMag(5);
    }
    if(this.pos.y+this.v.y<0){
      this.pos.y = 0;
      a = atan2(this.v.x, this.v.y);
      this.v = PVector.fromAngle(degrees(TWO_PI-a));
      this.v.setMag(5);
    }
    this.pos.x = this.pos.x+this.v.x;
    this.pos.y = this.pos.y+this.v.y;
  }

  void drawParticle() {
    noFill();
    
    stroke(col[0], col[1], col[2]);
    strokeWeight(dim);
    point(this.pos.x, this.pos.y);
  }
}
