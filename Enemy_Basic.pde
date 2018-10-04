class EnemyBasic {
	
	private int health = 50;
	private boolean dead = false;
	private boolean hasBulletsOut = true;
	private int damage; //damage is currently linked to projectile type, this does nothing right now
	//position variables
	private int posX;
	private int posY;
	private double speed = .005;
	private double dy; 
	private double dx;
	//image variables
	private int imageHeight = 60;
	private int imageWidth = 60;
	private PImage model = loadImage("Enemy_Basic_Model.jpg");
	//projectile variables
	List<BulletLaser2> bulletLaser2v2 = new ArrayList<BulletLaser2>();
	private int gunTime = 0;
	private int fireRate = 10;
	
	
	//constructors
	public EnemyBasic() {
		Random rand = new Random();
		posX = rand.nextInt(width)+0;
		posY = 0;//-1*(rand.nextInt(0)+(200));
		dy = height-posY; 
		dx = (width/2)-posX;
	}
	
	public EnemyBasic(int x, int y) {
		posX = x;
		posY = y;
		dy = height-posY; 
		dx = (width/2)-posX;
		
	}
	
	//this function is tied to 'r' key press and will need to be removed when done with it
	public void reverseY() {
		dy = -1*dy;
	}
	//animates the movement of the ship
	private void updatePos() {
		//stops the ship moving at some Y value
		if (posY >= settings.screenHeight-300) {
			dy = 0;
			dx = 0;
			
		}
		//regular ship animation
		else {
			posX += speed*dx;
			posY += speed*dy;
			//System.out.print(dx + " ");
			//System.out.println(dy);
		}
	}
	
	//displays the ship, called from main
	public void display() {
		if (health<=0) {
		}
		else {
			updatePos();
			gunTime++;
			shoot();
			image(model,posX,posY, imageWidth, imageHeight);
		}
		checkForHit();
		displayBullets();
		
	}
	//position getters
	public int getX(){
		return posX;
	}
	public int getY() {
		return posY;
	}
	
	public int getDistanceFromBaseX(){
		return (width/2-posX);
	}
	public int getDistanceFromBaseY() {
		return (height-posY);
	}
	
	public void damage(int damage) {
		health -= damage;
		if (health <= 0) {
			dead = true;
		}
		return;
	}
	public boolean isDead() {
		return dead;
	}

	void shoot() {
		if (gunTime % fireRate == 0) {
			bulletLaser2v2.add(new BulletLaser2(posX,posY));
		}
	}
	
	void checkForHit() {
		if (bulletLaser2v2.size()>0) {
			for (int i = 0; i < bulletLaser2v2.size(); i++ ) {
				if (bulletLaser2v2.get(i).getY() >= settings.screenHeight-100) {
					bulletLaser2v2.get(i).explode();
					base.damageBase(bulletLaser2v2.get(i).getBaseDamage(), bulletLaser2v2.get(i).getShieldDamage());
				}
			}
		}
	}
	
	void displayBullets() {
		for(int i = 0; i < bulletLaser2v2.size(); i++) {
			if(bulletLaser2v2.size()==0) {
				hasBulletsOut = false;
				break;
			}
			if(bulletLaser2v2.get(i).exploded()) {
				bulletLaser2v2.remove(i);
				continue;
			}
			else {
				bulletLaser2v2.get(i).display();
			}
		}
	}
	
	boolean hasNoBullets() {
		if (hasBulletsOut) {
			return false;
		}
		else {
			return true;
		}
	}
	
	
	
	
	
}
