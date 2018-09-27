class EnemyBasic {
	
	private int health;
	private int damage;
	private int posX;
	private int posY;
	private double speed = .005;
	private double dy; 
	private double dx;
	private int imageHeight = 60;
	private int imageWidth = 60;
	private PImage model = loadImage("Enemy_Basic_Model.jpg");
	 
	
	
	
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
	
	public void setPos(int x, int y) {
		posX = x;
		posY = y;
	}
	public void reverseY() {
		dy = -1*dy;
	}
	
	private void updatePos() {
		if (posY >= settings.screenHeight-100) {
			dy = 0;
			dx = 0;
			shield.damageShield(5);
		}
		else {
			posX += speed*dx;
			posY += speed*dy;
			System.out.print(dx + " ");
			System.out.println(dy);
		}
	}
	
	public void display() {
		updatePos();
		image(model,posX,posY, imageWidth, imageHeight);
	}
	
	public int getX(){
		return posX;
	}
	public int getY() {
		return posY;
	}

	
	
	
	
	
	
}
