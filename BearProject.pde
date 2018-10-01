import java.util.*;
import java.util.Random;
import static java.lang.Math.sqrt;
import static java.lang.Math.abs;

Grid grid;
Base base;
Shield shield;
Settings settings;
DisplayUI displayUI;
BaseTurret baseTurret;
List<EnemyBasic> basicEnemies = new ArrayList<EnemyBasic>();
List<BulletLaser1> bulletLaser1 = new ArrayList<BulletLaser1>();
List<BulletLaser2> bulletLaser2 = new ArrayList<BulletLaser2>();
int gameScreen = 0;
//gameScreen = 0: initital screen
//gameScreen = 1: playing the game
//gameScreen = 2: settings


void setup(){
	//size(1280,720);
  size(1700, 900);
  frameRate(30);
  textAlign(CENTER);
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
	 if(gameScreen == 0)
	 {
		 initScreen();
	 }
		 
	 else if(gameScreen == 1)
	 {
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
   System.out.println(settings.timer);
}
	else if(gameScreen == 2)
	{
		background(255, 255, 255);
		fill(0, 0, 0);
		textSize(20);
		text("Back", 50, 50);
		fill(0, 0, 0);
		textSize(40);
		text("Settings", width/2, height/5);
		if((mouseX > 0)
			&& (mouseX < 50)
			&& (mouseY > 0)
			&& (mouseY < 50))
			{
				if(mousePressed)
				{
					gameScreen = 0;
				}
			}
	}
   
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
 
 void initScreen()
 {
	 background(255, 255, 255);
		 textSize(40);
		 fill(0, 0, 0);
		 text("Game Title", width/2, (height)/5);	 
		 rectMode(CENTER);
		 fill(0, 0, 0);
		 rect(width/2, ((3*height)/5), 200, 50);
		 textSize(30);		 
		 fill(255, 255, 255);
		 text("Start", width/2, ((3*height)/5));
		 fill(30, 30, 30);
		 rect(50, 50, 50, 50);
		 if((mouseX > width/2 - 100)
			 && ( mouseX < width/2 + 100)
			 && (mouseY > (3*height)/5 - 25)
			 && (mouseY < (3*height)/5 + 25))
			 {
			 fill(0, 0, 0);
			 rect(width/2, ((3*height)/5), 220, 55);
			 textSize(34);
			 fill(255, 255, 255);
			 text("Start", width/2, ((3*height)/5));
			 if(mousePressed)
			 {
				 gameScreen = 1;
			 }
		 }
		 if((mouseX > 0)
			 && (mouseX < 100)
			 && (mouseY > 0)
			 && (mouseY < 100))
			 {
				 if(mousePressed)
				 {
					 gameScreen = 2;
				 }
			 }
			 
 }
