particle arr[] = new particle[2000];

void setup(){
  size(1280,600);
  for(int i =0; i<arr.length; i++){
    arr[i] = new particle(random(1,width), random(1,height));
  }
}

obj a = new obj(100,100);
boolean loop = false;
void draw(){
  background(0);
  if(mousePressed){
    if(loop) loop=false;
    else loop=true; 
  }
  
  for(int i = 0; i<arr.length; i++){
    if(loop) arr[i].updateParticle();
    arr[i].drawParticle();
  }
  
  //a.addForce(new PVector(0,0.4)); // gravity
  //a.addForce(new PVector(0.01, 0));
  //a.updateObj();
  //a.drawObj();
}
