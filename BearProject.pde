import java.util.*;
import java.util.Random;

Grid grid;
Base base;
Shield shield;
Settings settings;

List<EnemyBasic> basicEnemies = new ArrayList<EnemyBasic>();
List<BulletLaser1> bulletLaser1 = new ArrayList<BulletLaser1>();



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
	displayBulletLaser1();
   displayEnemies();

   
 } 
 
 void checkKeyPresses(){
	if (keyPressed) {
		if(key == 'q') {
			if (basicEnemies.size() > 0 ) {
				basicEnemies.remove(0);
			}
			
		}
		if (key == 'r') {
			for(int i =0; i < basicEnemies.size(); i++) {
				basicEnemies.get(i).reverseY();
			}
		}
		if (key == 'n') {
			basicEnemies.add(new EnemyBasic());
		}
		if (key == 'b') {
			spawnBullets();
		}
		
		
		
	}
	
	if (mousePressed) {
		//enemy1.setPos(mouseX,mouseY);
		basicEnemies.add(new EnemyBasic(mouseX,mouseY));
	}
	
	
 }
 void displayBulletLaser1() {
	 for (int i = 0; i < bulletLaser1.size(); i++) {
		 bulletLaser1.get(i).display();
	 }
 }
 
 void displayEnemies() {
	for (int i = 0; i < basicEnemies.size(); i++) {
		basicEnemies.get(i).display();
	}
	 
 }
 
 void spawnBullets() {
	 for (int i = 0; i < basicEnemies.size(); i++) {
		 bulletLaser1.add(new BulletLaser1(basicEnemies.get(i).getX(), basicEnemies.get(i).getY()));
	 }
 }
 
