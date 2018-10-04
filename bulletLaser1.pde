/*class BulletLaser1 {
	
	
	
	
	
	
	
	
	//this class is currently not in use, I have replaced it with BulletLaser2 for the time being
	//BulletLaser2 is less laggy
	
	
	
	
	
	
	
	
	//damage variables
	private int shieldDamage = 5;
	private int baseDamage = 5;
	//explosion variables
	private PImage explosion = loadImage("explosion.png");
	private int explosionHeigh = 70;
	private int explosionWidth = 70;
	private boolean allreadyExploded = false;
	//position variables
	private int posX;
	private int posY;	
	private double dy; 
	private double dx;
	private double speed = .01;
	//image variables
	private PImage bullet = loadImage("laser1.png");
	private int imageHeight = 70;
	private int imageWidth = 70;
	//asthetic options
	private int lineStrokeWeight = 5;
	private int redRGBValue = 255;
	private int greenRGBValue = 0;
	private int blueRGBValue = 0;
	
	

	
	//constructors
	public BulletLaser1() {}
	
	public BulletLaser1(int x, int y) {
		posX = x;
		posY = y;
		dy = height-posY; 
		dx = (width/2)-posX;
	}
	
	//used to delete the object from memory once it has exploded
	public boolean exploded() {
		return allreadyExploded;
	}
	
	//animates movement of projectile
	private void updatePos() {
		//stops projectile when it reaches base and explodes it
		if (posY >= settings.screenHeight-100) {
			dy = 0;
			dx = 0;
			if (allreadyExploded) {
				
			}
			else {
				allreadyExploded = true;
				image(explosion,posX,posY,explosionWidth,explosionHeigh);
				if (shield.getHealth()>=0) {
					shield.damageShield(shieldDamage);
				}
				else {
					base.damageBase(baseDamage);
				}
				
				
			}
		}
		//updates position creating animation
		else {
			posX += speed*dx;
			posY += speed*dy;
			//System.out.print(dx + " ");
			//System.out.println(dy);
		}
	}
	
	//displays the projectile if it hasnt exploded, called from main
	public void display() {
		if (allreadyExploded) {
			
		}
		else {
			updatePos();
			strokeWeight(lineStrokeWeight);
			stroke(redRGBValue,greenRGBValue,blueRGBValue);
			image(bullet,posX,posY,imageWidth,imageHeight);
		}
		
		
	}
	



}
*/