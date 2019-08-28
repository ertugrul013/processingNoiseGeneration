class NoiseLine{
  float position;
  float offset;
  
  NoiseLine(float offset,int initialPos){
    position = initialPos;
    this.offset = offset;
  }
  
  void display(){
    pushMatrix();
    translate(0,0,position);
    fill(10,50);
    stroke(0,200,0);
    beginShape();

    float xOffset = 0.0;

    float yOffset = offset;
    vertex(0, 1000);
    for(float x = 0; x <= width * 2; x+=10){
      float y = map(noise(xOffset,yOffset),0,1, 0,250);
      vertex(x,y);
      xOffset += 0.05;
    }
    vertex(width *2, 1000);
    yOffset += 0.05;
    endShape(OPEN);
    position -= 10;
    popMatrix();
   }

   boolean isAlive(){
     return position > -1;
   }
}
