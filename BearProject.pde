import java.util.*;
import java.util.Random;
import static java.lang.Math.sqrt;

Grid grid;
Base base;
Shield shield;
Settings settings;
DisplayUI displayUI;
BaseTurret baseTurret;
List<EnemyBasic> basicEnemies = new ArrayList<EnemyBasic>();
List<BulletLaser1> bulletLaser1 = new ArrayList<BulletLaser1>();
List<BulletLaser2> bulletLaser2 = new ArrayList<BulletLaser2>();



void setup(){
	//size(1280,720);
  size(1700, 900);
  frameRate(30);
  grid = new Grid();
  base = new Base();
  shield = new Shield();
  basicEnemies.add(new EnemyBasic());
  settings = new Settings();
  displayUI = new DisplayUI();
  baseTurret = new BaseTurret();
  
  

  
}

//backgroundImage.resize(1700,900);

 void draw() {
	 PImage backgroundImage = loadImage("background1.jpg");
	checkKeyPresses();
   background(backgroundImage);
   grid.display();
   base.display();
   shield.display();
   spawnBullets();
   displayBulletLaser1();
   displayBulletLaser2();
   displayEnemies();
   displayUI.display();
   baseTurret.display();
   settings.timer++;

   
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
		basicEnemies.add(new EnemyBasic(mouseX,mouseY));
	}
	
	
 }
 void displayBulletLaser1() {
	 
	 for (int i = bulletLaser1.size()-1; i >= 0; i--) {
		 if (bulletLaser1.get(i).exploded()) {
			bulletLaser1.remove(i);
			continue;
		 }
	 }
	 for (int i = 0; i < bulletLaser1.size(); i++) {
		 bulletLaser1.get(i).display();
	 }
 }
  void displayBulletLaser2() {
	  
	 for (int i = bulletLaser2.size()-1; i >= 0; i--) {
		 if (bulletLaser2.get(i).exploded()) {
			bulletLaser2.remove(i);
			continue;
		 }
	 }
	 for (int i = 0; i < bulletLaser2.size(); i++) {
		 bulletLaser2.get(i).display();
	 }
 }
 
 void displayEnemies() {
	for (int i = 0; i < basicEnemies.size(); i++) {
		basicEnemies.get(i).display();
	}
	 
 }
 
 void spawnBullets() {
	 if (settings.timer%30 == 0) {
		for (int i = 0; i < basicEnemies.size(); i++) {
			bulletLaser2.add(new BulletLaser2(basicEnemies.get(i).getX(), basicEnemies.get(i).getY()));
		}
	 }
 }