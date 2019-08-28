LineSystem system;

void setup(){
  fullScreen(P3D);
  system = new LineSystem(50);
}

void draw(){
  background(51);
  camera(width,0,0, width,-20,300, 0,1,0);
  system.display();
}
