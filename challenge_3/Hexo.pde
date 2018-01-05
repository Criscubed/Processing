class Hexo extends Shap{

 float[] x; 
 float[] y;

 Hexo(float xc,float yc, float tall, float inc, color[] c){
    super(c);
    x = new float[6];
    y = new float[6];
    this.xc = xc;
    this.yc = yc;
    this.deg = 0;
    this.inc = inc;
    resetMatrix();
    translate(xc, yc);
    x[0] = -3/10.0 * tall;
    y[0] = -1/2.0 * tall;
    x[1] = 3/10.0 * tall;
    y[1] = -1/2.0 * tall;
    x[2] = 3/5.0 * tall;
    y[2] = 0;
    x[3] = 3/10.0 * tall;
    y[3] = 1/2.0 * tall;
    x[4] = -3/10.0 * tall; 
    y[4] = 1/2.0 * tall;
    x[5] = -3/5.0 * tall;
    y[5] = 0;
    resetMatrix();
  }
  
  void dis(){
    noStroke(); 
    fill(color(r, g, b));
    beginShape();
    vertex(x[0], y[0]);
    vertex(x[1], y[1]);
    vertex(x[2], y[2]);
    vertex(x[3], y[3]);
    vertex(x[4], y[4]);
    vertex(x[5], y[5]);
    endShape();
  }
  
}