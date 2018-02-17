PImage ted;
PImage woop;
PImage rhy;

float rot;

void setup(){
  size(700, 700, P3D);
  ted = loadImage("ted.png");
  ted.filter(GRAY);
  woop = loadImage("woop.png");
  woop.filter(THRESHOLD);
  rhy = loadImage("rhy.png");
  rhy.filter(INVERT);
  imageMode(CENTER);
  
}

void draw(){
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  rotateY(rot);
  image(woop, 0, 0);
  popMatrix();
  
  
  pushMatrix();
  translate(width/4, height/2);
  rotateY(rot);
  image(ted, 0, 0);
  popMatrix();
  
  
  
  pushMatrix();
  translate(width/4 * 3, height/2);
  rotateY(rot);
  image(rhy, 0, 0);
  popMatrix();
  
  rot += 0.01;
}