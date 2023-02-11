void setup(){
  size(600,600);
}
float xoff = 0;
float yoff = 0;
void draw(){
  background(0);
  for(int y=0; y<height; y++){
    for(int x=0; x<width; x++){
      stroke(noise(x,y)*255);
      point(x,y);
      xoff +=0.1;
    }
    yoff +=0.1;
  }
}
