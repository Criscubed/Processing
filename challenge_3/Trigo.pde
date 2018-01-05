class Trigo extends Shap{

 float[] x; 
 float[] y;

 Trigo(float xc,float yc, float tall, float inc, color[] c){
   super(c);
    x = new float[3];
    y = new float[3];
    this.xc = xc;
    this.yc = yc;
    this.deg = 0;
    this.inc = inc; 
    resetMatrix();
    translate(xc, yc);
    x[0] = -3/10.0 * tall;
    y[0] = -1/2.0 * tall;
    x[1] = 3/5.0 * tall;
    y[1] = 0;
    x[2] = -3/10.0 * tall; 
    y[2] = 1/2.0 * tall;
    resetMatrix();
  }
  
  void dis(){
    noStroke(); 
    fill(color(r, g, b));
    beginShape();
    vertex(x[0], y[0]);
    vertex(x[1], y[1]);
    vertex(x[2], y[2]);
    endShape();
  }
  

}