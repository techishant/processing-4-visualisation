void setup(){
  size(600,600);
}

float A = 30, B = 30, C = 30;


float calculateX(int i, int j, int k){
  return (float)(j*sin(A)*sin(B)*cos(C) - k * cos(A) * sin(B) * cos(C) + j * cos(A) * sin(C) + k * sin(A) * sin(C) + i * cos(B) * cos(C));
}

float calculateY(int i, int j, int k){
  return (float)(j*cos(A) * cos(C) + k * sin(A) * cos(C) - j * sin(A) * sin(B) * sin(C) + k * cos(A) * sin(B) * sin(C) - i * cos(B) * sin(C));
}

float calculateZ(int i, int j, int k){
  return (float)(k * cos(A) * cos(B) - j * sin(A) * cos(B) + i * sin(B));
}


int x = 100, y = 100,z = 60;

void draw(){
  noLoop();
  System.out.println(calculateX(x,y,z) + " " + calculateY(x,y,z) + " " + calculateZ(x,y,z));
}
