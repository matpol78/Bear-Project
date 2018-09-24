Grid grid;
Base base;
Shield shield;
int i = 0;
PImage img;

void setup(){
  size(1700, 900);
  frameRate(30);
  grid = new Grid();
  base = new Base();
  shield = new Shield();
  img = loadImage("download.jpg");
  
}

 void draw() {
   background(0, 0, 0);
   grid.display();
   base.display();
   shield.display();
   i++;
   if(i > 150)
   {
     base.giveShield();
   } 
   image(img, 0, 0);
   
 }
