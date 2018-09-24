class Base{
  Grid grid = new Grid();
  private int health = 1000;
  private boolean shield = false;
  private boolean baseTurret = true;
  private int basex1 = grid.gridSpaceWidth*(grid.numLinesWidth/2);
  private int basey1 = height - grid.gridSpaceHeight;
  private int baseWidth = grid.gridSpaceWidth*2;
  private int baseHeight = grid.gridSpaceHeight;
  
  public Base(){}
  
  public void display(){
    fill(0, 255, 50);
    rect(basex1, basey1, baseWidth, baseHeight);
  }
  public void upgradeHealth(int H){
    health += H;
  }
  
  public void giveShield(){
    shield = true;
  }
  
  public void giveBaseTurret(){
    baseTurret = true;
  }
}
