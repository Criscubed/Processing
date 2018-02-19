String[] s;
String[] v;
String[] a;
String[] b;

String o1;
String o2;
String o3;

void setup(){
  size(900, 500);
  
  s = loadStrings("s.txt");
  a = loadStrings("a.txt");
  v = loadStrings("v.txt");
  b = loadStrings("b.txt");
  
  buildString();
}

void draw(){
  background(0);
  textSize(30);
  
  text(o1, 0, height/3);
  text(o2, 0, height/2);
  text(o3, 0, height/3 * 2);
  
}

void buildString(){
   o1 = "They need a " + a[int(random(a.length))].trim() 
         + " " + s[int(random(s.length))].trim()
         + " and a " + s[int(random(s.length))].trim();
   o2 = "to " + v[int(random(v.length))].trim() + " a " 
        + a[int(random(a.length))].trim() 
        + " " + s[int(random(s.length))].trim();
        
  o3 = "that " + b[int(random(b.length))].trim()
        + " " + v[int(random(v.length))].trim() + "ed a " 
        + s[int(random(s.length))].trim();
        
}

void mouseClicked(){
 buildString(); 
}