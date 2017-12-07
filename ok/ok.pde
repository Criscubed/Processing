int[][] q;
int r;
int c;
float red;
float green;
float blue;
int modifier;
int modifier2;
int modifier3;

void setup(){
 size(612, 612);
 q = new int[10][10]; 
 int count = 0; 
 
 for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
   q[i][j] = count;
   count++;
  }
 }
}

void draw(){
 r = r % 10;
 c = c % 10;
 red = Math.min(Math.max(0, red), 255);
 green = Math.min(Math.max(0, green), 255);
 blue = Math.min(Math.max(0, blue), 255);
 
 System.out.println(red + " " + green  + " " + blue);
 fill(red, blue, green);
 noStroke();
 ellipse(red * 2 + 50, random(-25, 630), 50, 50); 
 ellipse(green * 2 + 50, random(-25, 630), 50, 50); 
 ellipse(blue * 2 + 50, random(-25, 630), 50, 50);  
 c++;
 
 if(c == 10){
  r++; 
 }
 if(random(100) > 50){
   modifier = -1;  
 } else {
   modifier = 1;
 }
  if(random(100) > 50){
   modifier3 = -1;  
 } else {
   modifier3 = 1;
 }
  if(random(100) > 50){
   modifier2 = -1;  
 } else {
   modifier2 = 1;
 }
 red = red + random(50) * modifier;
 green = green + random(50) * modifier;;
 blue = blue + random(50) * modifier;;
 
 //System.out.println("column is " + c + "row is " + r);
 
 
}