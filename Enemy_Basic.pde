class EnemyBasic {
	
	private int health;
	private int damage;
	private int posX = 900;
	private int posY = 70;
	private int dy = 5;
	private int dx = 0;
	private int imageHeight = 60;
	private int imageWidth = 60;
	private PImage model = loadImage("Enemy_Basic_Model.jpg");
	
	
	public EnemyBasic() {}
	
	private void updatePos() {
		if (posY >= settings.screenHeight-100) {
			dy = 0;
			dx = 0;
		}
		posX += dx;
		posY += dy;
	}
	
	public void display() {
		updatePos();
		image(model,posX,posY, imageWidth, imageHeight);
	}
	
	
	
	
	
	
	
}