class Recto extends Shap{
 float size;
 
 Recto(float xc, float yc, float size, float r, color[] c){
   super(c);
   this.xc = xc;
   this.yc = yc;
   this.size = size;
   this.deg = 0;
   this.inc = r;
 }
 
 void dis(){
   rectMode(CENTER);
   noStroke();
   fill(color(r, g, b));
   rect(0, 0, size, size);
 }
 
}