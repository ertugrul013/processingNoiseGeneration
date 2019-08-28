float yOffset = 0.0;

NoiseLine [] lines;

int amountOfLines = 100;

void setup(){
  fullScreen(P3D);
  
  lines = new NoiseLine [amountOfLines];
  
  for(int i=0;i < amountOfLines; i++){
    lines[i] = new NoiseLine(random(0.0, 10000.0));
  }
}

void draw(){
  camera(width/2,0,0, width/2,-20,300, 0,1,0);
  translate(0, 0, -frameCount);
  background(51);  
  for(int i=0; i < amountOfLines; i++){
    translate(0,0,100);
    lines[i].display();
  }
}
