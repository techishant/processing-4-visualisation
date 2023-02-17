public int grid[][] = new int[10][10];



void setup(){
  size(600,600);
  for(int i = 0; i<grid.length; i++){
    for(int j = 0; j<grid[i].length; j++){
      grid[i][j] = 0;
    }
  }
}

void lapse(int n){
  int k =0;
  for(int i = 0; i<grid.length; i++){
    for(int j = 0; j<grid[i].length; j++){
      k++;
      if(k==n){
        if(grid[i][j] == 0){
          grid[i][j] = 1;
        }else{
          grid[i][j] = 0;
        }
        k=0;
      }
    }
  }
}   

float count = (float) 0;
int c2 =0;


void draw(){
  float boxwidth = width/10;
  
  //background(0);
  for(int y = 0; y<grid.length; y++){
    for(int x = 0; x<grid[y].length; x++){
      if(grid[y][x] != 0){
        fill(255,10);
        rect(x*boxwidth, y*boxwidth, boxwidth, boxwidth);
      }else{
        fill(0,10);
        rect(x*boxwidth, y*boxwidth, boxwidth, boxwidth);
      }
    }
  }
  
  count += 0.01;
  if((int)count != c2){
    if((int)count>=21) count-=0.01;
    else{
      lapse((int) count);
      c2 = (int) count;
    }
  }
}
