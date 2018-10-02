class DisplayUI {
	
	
	//this class holds the following UI contents
	//Shield health bar
	//Base health bar
	
	//spacing options
	int xDistanceFromTop = 25;
	int yDistanceFromTop = 25;
	int barWidth = 30;
	int yDistanceBetweenBars = 35;
	
	//shield health bar asthetic options
	private int shieldHealthBarFillRGBRedValue = 0;
	private int shieldHealthBarFillRGBGreenValue = 0;
	private int shieldHealthBarFillRGBBlueValue = 255;
	private int shieldHealthBarStrokeRGBRedValue = 255;
	private int shieldHealthBarStrokeRGBGreenValue = 255;
	private int shieldHealthBarStrokeRGBBlueValue = 255;
	//base health bar asthetic options
	private int baseHealthBarFillRGBRedValue = 255;
	private int baseHealthBarFillRGBGreenValue = 0;
	private int baseHealthBarFillRGBBlueValue = 0;
	private int baseHealthBarStrokeRGBRedValue = 255;
	private int baseHealthBarStrokeRGBGreenValue = 255;
	private int baseHealthBarStrokeRGBBlueValue = 255;
	
	
	
	//constructor
	public DisplayUI(){}
	
	//called from main to display UI elements
	public void display() {
		fill(shieldHealthBarFillRGBRedValue,shieldHealthBarFillRGBGreenValue,shieldHealthBarFillRGBBlueValue);
		stroke(shieldHealthBarStrokeRGBRedValue,shieldHealthBarStrokeRGBGreenValue,shieldHealthBarStrokeRGBBlueValue);
		if (shield.getHealth()>=0){
			rect(xDistanceFromTop,yDistanceFromTop,shield.getHealth(),barWidth);
		}
		else {
			rect(xDistanceFromTop,yDistanceFromTop,1,barWidth);
		}
		fill(baseHealthBarFillRGBRedValue,baseHealthBarFillRGBGreenValue,baseHealthBarFillRGBBlueValue);
		stroke(baseHealthBarStrokeRGBRedValue,baseHealthBarStrokeRGBGreenValue,baseHealthBarStrokeRGBBlueValue);
		if (base.getHealth()>=0){
			rect(xDistanceFromTop,yDistanceFromTop+yDistanceBetweenBars,base.getHealth(),barWidth);
		}
		else {
			rect(xDistanceFromTop,yDistanceFromTop+yDistanceBetweenBars,1,barWidth);
		}
	}
	
	
	
	
	
	
}