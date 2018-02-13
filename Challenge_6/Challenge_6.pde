float x;
float xr;
float y;
float yr;
float z;
float zr;

void setup() {
  size(700, 700,P3D);
}

void draw() {
  lights();
  background(0);
  
  pushMatrix();
  translate(width/2, width/2, map(sin(z),-1,1, -height, 0));
  rotateX(radians(map(sin(zr),-1, 1, -90, 90)));
  fill(0, map(sin(z), -1, 1, 100, 255), 0);
  sphere(height /6);
  popMatrix();
  
  //noStroke();
  
  pushMatrix();
  translate(map(sin(x),-1,1,0, width), height/2, 0);
  rotateY(radians(map(sin(xr),-1, 1, -90, 90)));
  fill(map(sin(x), -1, 1, 100, 255), 0, 0);
  box(height /6);
  popMatrix();
  
  pushMatrix();
  translate(width/2, map(sin(y),-1,1,0, height), 0);
  rotateZ(radians(map(sin(yr),-1, 1, -90, 90)));
  fill(0, 0, map(sin(y), -1, 1, 100, 255));
  rectMode(CENTER);
  rect(0, 0, height/6, height /6);
  popMatrix();
  
 
  
  x += .01;
  xr += .01;
  y += .01;
  yr += .01;
  z += .01;
  zr += .01;
}