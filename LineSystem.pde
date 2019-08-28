class LineSystem{
    ArrayList<NoiseLine> lines = new ArrayList<NoiseLine>();
    int numLines = 10;
    int minPos = 200;
    float offset = 0;

    LineSystem(int amount){
        numLines = amount;
    }

    void display(){
        println("lines.size(): "+lines.size());
        if (lines.size() < numLines) {
           minPos = lines.size()*150;
           lines.add(new NoiseLine(offset,minPos));
           offset+=0.25;
       } 
       for (int i = 0; i < lines.size(); ++i) {
           if (lines.get(i).isAlive())
           {
               lines.get(i).display();
           }
           else if (!lines.get(i).isAlive()) 
           {
               lines.remove(i);
           }
       }
    }
}