
/**
 Para cambiar el 'nivel' presione cualquier tecla
 */
int [] data, data2,data3, data4;
int [] data5,data6,data7,data8;
int lon=14;
float[] X= new float[lon];
float[] Y= new float [lon];
boolean pick;
String [] stuff,stuff2,stuff3,stuff4;
String []stuff5,stuff6,stuff7,stuff8;
Graph[] levels;
// total, current por defecto vale 0
// ver: https://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html
int total, current;
void keyPressed() {
  if(key=='n'){
  current = current < total-1 ? current+1 : 0;
  X=new float[lon];
  Y=new float[lon];
  }
   if(key=='r'){
  X=new float[lon];
  Y=new float[lon]; 
  }
}
void setup() {
  size(720, 640);
stuff =  loadStrings("data/L1x.csv");
stuff2 = loadStrings("data/L1y.csv"); 
stuff3 = loadStrings("data/L2x.csv");
stuff4 = loadStrings("data/L2y.csv"); 
stuff5 = loadStrings("data/L3x.csv");
stuff6 = loadStrings("data/L3y.csv"); 
stuff7 = loadStrings("data/L4x.csv");
stuff8 = loadStrings("data/L4y.csv"); 
  data = int(split(stuff[0], ','));
  data2 = int(split(stuff2[0], ','));
  data3 = int(split(stuff3[0], ','));
  data4 = int(split(stuff4[0], ','));
  data5  = int(split(stuff5[0], ','));
  data6 = int(split(stuff6[0], ','));
  data7 = int(split(stuff7[0], ','));
  data8 = int(split(stuff8[0], ','));

  // numero total de niveles
  total = 4;
  levels = new Graph[total];
 levels[0] = new Graph(data,data2);
 levels[1] = new Graph(data3,data4);
 levels[2] = new Graph(data5,data6);
 levels[3] = new Graph(data7,data8);
}
void mousePressed(){
    for(int i=lon-2;i>0;i--){
X[i]=X[i-1];
Y[i]=Y[i-1]; 
  }
}

void draw() {
  background(0, 255, 255);
  if(current==0||current==1){
   lon=14; 
  }else if(current==2||current==3){
   lon=26; 
  }
  levels[current].display();
   if(X[0]!=0&&X[1]!=0&&Y[0]!=0&&Y[1]!=0){
   for(int i=0;i<lon-2;i++){
       pushStyle();
    strokeWeight(5);
    fill(265,165,0);
 line(X[i],Y[i],X[i+1],Y[i+1]);
 if(X[lon-2]!=0&&Y[lon-2]!=0){
  fill(255,200,200);
   text("Ganaste",100,500);
 }
}
}

text(lon,25,500);
text(current,25,550);
}
