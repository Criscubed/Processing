int num = 300;
int change;
boolean b;
int[] x;
int[] y;
int w;
color[] c;

void setup(){
 fullScreen();
 frameRate(4);
 //size(500, 500);
 change = 2;
 x = new int[num];
 y = new int[num];
 c = new color[num];
 w = Math.round(width * .2);
 
 getCircleCoordinates();
}

void draw(){
  background(0xbadbee);
  drawCircles();
  drawText();
  if(frameCount%12 == 0){   
    changeColors();
  }
  b = true;
  
}

void drawCircles(){
  noStroke();
  for(int i = 0; i < num; i++){
   fill(c[i]);
   ellipse(x[i], y[i], w, w);
  }
}

void drawText(){
  String str = "Strong is a circle";
  String str2 = "Continuous, forever";
  String str3 = "No Weakened Spots";
  textSize(30);
  //textAlign(CENTER);
  if(change == 0){
   fill(127, 0, 127);
  } else if(change == 1){
   fill(0, 127, 127);
  } else if(change == 2){
   fill(127, 127, 0);
  }
  text(str,width/6, height/4, width, 500);
  text(str2,width/4, height/4 * 2, width, 500);
  text(str3,width/3, height/4 * 3, width, 500);
  
}
void mousePressed(){
  getCircleCoordinates();
  changeColors();
}

void getCircleCoordinates(){
 for(int i = 0; i < num; i++){
  x[i] = Math.round(random(0, width));
  y[i] = Math.round(random(0, height));
  c[i] = color((255 * x[i])/width, 0, 0);
 }
}

void changeColors(){
  if(change == 0){ //blue
    for(int i = 0; i < num; i++){
      c[i] = color(0,(255 * x[i])/width, 0);
    }
  } else if(change == 1){ //red
    for(int i = 0; i < num; i++){
      c[i] = color((255 * x[i])/width, 0, 0);
    }
  } else if(change == 2){ //green
    for(int i = 0; i < num; i++){
      c[i] = color(0, 0,(255 * x[i])/width);
    }
  }
  
  change++;
  change = change % 3;
}