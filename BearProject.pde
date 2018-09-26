import java.util.*;
Grid grid;
Base base;
Shield shield;
Settings settings;

List<EnemyBasic> basicEnemies = new ArrayList<EnemyBasic>();



void setup(){
  size(1700, 900);
  frameRate(30);
  grid = new Grid();
  base = new Base();
  shield = new Shield();
  basicEnemies.add(new EnemyBasic());
  settings = new Settings();
  

  
}

 void draw() {
	checkKeyPresses();
   background(0, 0, 0);
   grid.display();
   base.display();
   shield.display();   
   displayEnemies();

   
 } 
 
 void checkKeyPresses(){
	if (keyPressed) {
		if(key == 'q') {
			//enemy1.setPos(mouseX,mouseY);
		}
		
		
		
	}
	
	if (mousePressed) {
		//enemy1.setPos(mouseX,mouseY);
		basicEnemies.add(new EnemyBasic());
	}
	
	
 }
 
 void displayEnemies() {
	for (int i = 0; i < basicEnemies.size(); i++) {
		basicEnemies.get(i).display();
	}
	 
 }