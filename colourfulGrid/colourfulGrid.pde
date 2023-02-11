void setup(){
  size(1280,650);
}

float noiseScale = 0.02;
float noiseVal;

void draw(){
  background(255);
  noStroke();
  float k = 1;
  
  noiseDetail(8,0.65);
  for(float x=0; x<width; x+=k){
    for(float y=0; y<height; y+=k){
      noiseVal = noise(x*noiseScale,y*noiseScale);
      stroke(noiseVal*255,0,0);
      strokeWeight(k+10);
      point(x,y);
    }
  }
  noLoop();
}
