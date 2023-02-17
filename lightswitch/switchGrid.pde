public class switchGrid{
  public int grid[][] = new int[10][10];
  
  switchGrid(){
    reset();
  }
  
   public void reset(){
     for(int i = 0; i<grid.length; i++){
       for(int j = 0; i<grid[i].length; j++){
         grid[i][j] = 0;
       }
     }
   }
   
   public void lapse(int n){
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

}
