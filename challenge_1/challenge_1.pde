//CRISTIAN MARTINEZ
//CHALLENGE 1

//I FORGOT THE RECT METHOD EXISTED TO I JUST USED QUAD INSTEAD AND I GOT IT WORKING SO WHOOPSSS



int[] s1;
int[] s2;
int[] s3;
int[] s4;

color one;
color two;
color three;
color four;

void setup(){
  reset();
  fullScreen();
  changeColors();
  //size(600, 700);
  
}

void draw(){
  background(0xffffff);
  noStroke();
  fill(one);
  quad(s1[0], s1[1], s1[2], s1[3], s1[4], s1[5], s1[6], s1[7]);
  fill(two);
  quad(s2[0], s2[1], s2[2], s2[3], s2[4], s2[5], s2[6], s2[7]);
  fill(three);
  quad(s3[0], s3[1], s3[2], s3[3], s3[4], s3[5], s3[6], s3[7]);
  fill(four);
  quad(s4[0], s4[1], s4[2], s4[3], s4[4], s4[5], s4[6], s4[7]);
}

void mousePressed(){
  changeColors();
  s1[2] += 10;
  s1[4] += 10;
  s1[5] += 10;
  s1[7] += 10;
  
  s2[0] -= 10;
  s2[5] += 10;
  s2[6] -= 10;
  s2[7] += 10;
  
  s3[0] -= 10;
  s3[1] -= 10;
  s3[3] -= 10;
  s3[6] -= 10;
  
  // -2, 3, -4, 5
  s4[1] -= 10;
  s4[2] += 10;
  s4[3] -= 10;
  s4[4] += 10;
}

void keyPressed(){
 reset(); 
}

void changeColors(){
  one = color(random(0, 255), random(0, 255), random(0, 255));
  two = color(random(0, 255), random(0, 255), random(0, 255));
  three = color(random(0, 255), random(0, 255), random(0, 255));
  four = color(random(0, 255), random(0, 255), random(0, 255));
}

void reset(){
 //top left
 s1 = new int[]{10,10,                     //top left
               110, 10,                    //top right
               110, 110,                   //bottom right
               10, 110};                   //bottom left
 //top right
 s2 = new int[]{width - 110, 10,           //top left
               width - 10, 10,             //top right
               width - 10, 110,            //bottom right
               width - 110, 110};          //bottom left
 //bottom right
 s3 = new int[]{width - 110, height - 110, //top left
                width - 10, height -110,   //top right
                width - 10, height - 10,   //bottom right
                width - 110, height - 10}; //bottom left
 //bottom left
 s4 = new int[]{10, height - 110,          //top left
                110, height - 110,         //top right
                110, height - 10,          //bottom right
                10, height - 10};          //bottom left
                

}