class NoiseLine {
  float yOffset;
  
  NoiseLine(float offset){
    yOffset = offset;
  }
  
  void display(){
    noFill();
    stroke(255);
    beginShape();
  
    float xOffset = 0.0;
  
    for(float x = 0; x <= width; x+=10){
      float y = map(noise(xOffset,yOffset),0,1, 0,300);
      vertex(x,y);
      xOffset += 0.05;
    }
    yOffset += 0.01;
    endShape(OPEN);
   }
}
