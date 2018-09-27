class BulletLaser2 {
	
	private double speed = .01;
	//private PImage bullet = loadImage("laser1.png");
	private double dy; 
	private double dx;
	//private int imageHeight = 70;
	//private int imageWidth = 70;
	private int damage;
	private int posX;
	private int posY;
	private PImage explosion = loadImage("explosion.png");
	private int explosionHeigh = 70;
	private int explosionWidth = 70;
	private boolean allreadyExploded = false;
	private int posX2;
	private int posY2;
	private int lengthMultiplier = 20;
	
	public BulletLaser2() {}
	
	public BulletLaser2(int x, int y) {
		posX = x;
		posY = y;
		dy = height-posY; 
		dx = (width/2)-posX;
		posX2 = posX+lengthMultiplier;
		posY2 = posY+lengthMultiplier;
	}
	
	public boolean exploded() {
		return allreadyExploded;
	}
	
	
	private void updatePos() {
		if (posY >= settings.screenHeight-100) {
			dy = 0;
			dx = 0;
			if (allreadyExploded) {
				
			}
			else {
				allreadyExploded = true;
				shield.damageShield(5);
				image(explosion,posX,posY,explosionWidth,explosionHeigh);
			}
		}
		else {
			posX += speed*dx;
			posY += speed*dy;
			posX2 = posX+lengthMultiplier;
			posY2 = posY+lengthMultiplier;
			System.out.print(dx + " ");
			System.out.println(dy);
		}
	}
	
	public void display() {
		if (allreadyExploded) {
			
		}
		else {
			updatePos();
			line(posX,posY,posX2,posY2);
			//image(bullet,posX,posY,imageWidth,imageHeight);
		}
		
		
	}
	



}