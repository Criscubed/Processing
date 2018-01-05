abstract class Shap{  
 float xc;   //x coordinates
 float yc;   //y coordinates
 float deg;  //current amount of radians rotated
 float inc;  //how much to increment by
 float velox;
 float veloy;
 float direx;
 float direy;
 float speed;
 int r;
 int g;
 int b;
  
 Shap(color[] c){
   velox = 0;
   veloy = 0;
   direx = 0;
   direy = 0;
   speed = 0;
   this.r = c[0];
   this.g = c[1];
   this.b = c[2];
 }
 
 void dis(){
   
 }
 
 void rot(){   
   deg += inc;
   resetMatrix();
   if(speed > 0){
     velox = direx*speed;
     veloy = direy*speed;
     xc+=velox;  
     yc+=veloy; 
     if( r > 10){
       r -= 5;
     }
     if( g > 10){
       g -= 5;
     }
     if( b > 10){
       b -= 5;
     }
   }
   translate(xc, yc);
   rotate(radians(deg));
   dis();
   resetMatrix();
 }
 
  void collis(Shap o){
     float dis = dist(o.xc, o.yc, xc, yc);
     if( dis < 200 ){
       direx = (xc-o.xc) / dis;
       direy = (yc-o.yc) / dis;
       speed = (float)Math.sqrt(dis);
     }
       
  }
  void moveCoord(float x, float y){
    xc = x;
    yc = y;
  }
}