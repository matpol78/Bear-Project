
public class Grid{
  public int numLinesWidth = 15;
  public int numLinesHeight = 15;
  public int gridSpaceWidth = width/numLinesWidth;
  public int gridSpaceHeight = height/numLinesHeight;
  float gridThick = 2;
  ajsldkfjasldjfasdklfj;
  
  public Grid(){
  }
    
  public void display(){
    for(int i = 0; i < width; i += gridSpaceWidth)
    {
      strokeWeight(gridThick);
      stroke(50, 50, 50);
      line(i, 0, i, height);
    }
    for(int i = 0; i < height; i += gridSpaceHeight)
    {
      strokeWeight(gridThick);
      stroke(50, 50, 50);
      line(0, i, width, i);
    }
  }
}

  
