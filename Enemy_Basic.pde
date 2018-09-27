class EnemyBasic {
	
	private int health; //has not been implemented
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
			System.out.print(dx + " ");
			System.out.println(dy);
		}
	}
	
	//displays the ship, called from main
	public void display() {
		updatePos();
		image(model,posX,posY, imageWidth, imageHeight);
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

	
	
	
	
	
	
}
