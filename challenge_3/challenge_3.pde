ArrayList<Shap> a = new ArrayList<Shap>();
int index = 0;
boolean b = false;
color[][] cols = {{0x62, 0x3D, 0x7F},
                 {0xE6, 0xC7, 0xFF}, 
                 {0xC3, 0x7A, 0xFF}, 
                 {0x49, 0x06, 0x7F},
                 {0x9C, 0x62, 0xCC}};
void setup(){
  fullScreen();
  //size(100, 100);
  clear();
  a.add( new Recto(width/2, height/2, 
                   Math.min(height/2, width/2) + Math.min(height/6, width/6), .5,
                   cols[Math.round(random(0, 4))] )); 
  a.add( new Hexo(width/2, height/2,
                  Math.min(height/2, width/2), .5,
                  cols[Math.round(random(0, 4))] ));
  a.add( new Trigo(width/2, height/2,
                   Math.min(height/2, width/2), .5, 
                   cols[Math.round(random(0,4))] ));
                   
  party(50);
}

void draw(){
  clear();
  background(0);
  if(b){
    a.get(1).moveCoord(mouseX, mouseY);
    a.get(2).moveCoord(mouseX, mouseY);
    a.get(0).moveCoord(mouseX, mouseY);
  }
    for(int i = 0; i < a.size(); i++){
      Shap h = a.get(i);
      //h.dis();
      h.rot();
      if(i >= 3){
        h.collis(a.get(0));
      }
      if(h.xc < 0 || h.xc > width || h.yc < 0 || h.yc > height){
        a.remove(i);
        a.get(0).inc += .2;
        a.get(1).inc += .2;
        a.get(2).inc += .2;
      }
    }
   if(a.size() <= 3){
     for(int i = 0; i < a.size(); i++){
       Shap h = a.get(i);
       if( h.r > 1){
         h.r -= .1;
       }
       if( h.g > 1){
         h.g -= .1;
       }
       if( h.b > 1){
         h.b -= .1;
       }
       if(h.inc > 0){
           h.inc -= .1;
        }
     }
   }
   /*
  if(frameCount%50 == 0){
    Shap h = a.get(index);
    h.col(Math.round(random(100, 255)));
    index++;
    index = index % 3;
  }
  */
  
  
}

Shap shapeType(int t, float x, float y, float z, float r, int[] c){
  Shap s;
  switch(t){
    case 1: s = new Hexo(x, y, z, r, c);
            break;
    case 2: s = new Recto(x, y, z, r, c);
            break;
    case 3: s = new Trigo(x, y, z, r, c);
            break;
    default: s = new Hexo(x, y, z, r, c);
  }
  return s;
}

void party(int num){
  int t = 0;
  float x = 0;
  float y = 0;
  float z = 0;
  float d = 0;
  int[] c;
  for(int i = 0; i < num; i++){
    t = Math.round(random(1, 3));
    x = random(0 + 60, width -60);
    y = random(0 + 60, height -60);
    z = random(150, 200);
    d = random(-2, 2);
    c = cols[Math.round(random(0,4))]; 
    a.add(shapeType(t, x, y, z, d, c));
  }
}

void mouseClicked(){
  b =  !b; 
}
/*
void keyPressed(){
 for(int i = a.size() - 1; i >= 3; i--){
   a.remove(i); 
 }
 index = 0;
}
*/