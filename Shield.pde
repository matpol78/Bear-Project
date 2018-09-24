class Shield{
  int radius = 400;
  Grid grid = new Grid();
  
  public Shield(){}
  
  public void display(){
    if(base.shield)
    {
      noFill();
      stroke(0, 0, 255);
      strokeWeight(5);
      arc(grid.gridSpaceWidth*(grid.numLinesWidth/2 + 1), height, radius, radius, PI, 2*PI);
    }
  }
}
