float yOffset = 0.0;
 
NoiseLine line;

void setup(){
  fullScreen(P3D);
  line = new NoiseLine();
  
}

void draw(){
  background(51);  
  line.display();
}
