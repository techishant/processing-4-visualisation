void setup(){
  size(1280,600);
}

double x,y;
float a,b,c;
float d;
int scale;
int limit;
int offx = width/2, offy = height/2;

void draw(){
  background(0);
  translate(width/2, height/2);
  scale(1,-1);
  //scale = (int)(mouseX+width/2)%width;
  limit = (int)Math.abs((mouseX+width/2)%width);
  limit = 100;

  offx = 0; offy = 0;
  scale =1;
  
  for(a = -limit; a<=limit; a+=0.5){
    for(b = -limit; b<=limit; b+=0.5){
      for(c = -limit; c<=limit; c+=0.5){
        d = b*b - 4 * a * c;
        if(d<0 || a == 0) continue;
        x = (double)(-b-Math.sqrt(d))/2*a;
        y = (double)(-b+Math.sqrt(d))/2*a;
        //System.out.println(x + "  |  " + y);
        stroke(Math.abs((int)((x*y)/(limit*limit)*255)),0,0);
        strokeWeight(1);
        point((float)x*scale+offx, (float)y*scale+offy);
      }
    }
  } 
  noLoop();
}
