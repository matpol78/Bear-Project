class Shield{
  int radius = 400;
  int health = 1000;
  Grid grid = new Grid();
  
  public Shield(){}
  
  public int getHealth(){
	  return health;
  }
  
  public void display(){
		
    if(base.shield)
    {
      noFill();
	  if (health > 200) {
		  stroke(0,0,255);
	  }
	  else if (health <=200 && health >0){
		stroke(255, 0, 0);
	  }
	  else {
		  base.removeShield();
	  }
      strokeWeight(5);
      arc(grid.gridSpaceWidth*(grid.numLinesWidth/2 + 1), height, radius, radius, PI, 2*PI);
    }
		
  }
  
  public void damageShield(int damage) {
	health = health - damage;
	  
  }
  
  
}


//Matts edit