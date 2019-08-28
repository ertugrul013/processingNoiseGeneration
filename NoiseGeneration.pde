float yOffset = 0.0;

void setup(){
  fullScreen(P3D);
}

void draw(){
  background(51);
  
  //fill(255);
  noFill();
  stroke(255);
  beginShape();
  
  float xOffset = 0.0;
  
  for(float x = 0; x <= width; x+=10){
    float y = map(noise(xOffset,yOffset),0,1,200,300);
    
    vertex(x,y);
    xOffset += 0.05;
  }
  yOffset += 0.01;
  //vertex(width,height);
  //vertex(0,height);
  endShape(OPEN);
}
