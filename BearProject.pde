Grid grid;
Base base;
Shield shield;
int i = 0;
<<<<<<< HEAD:BearProject.pde
PImage img;
=======
>>>>>>> 4afc55a9f907684d8c913b1b9e3efa5ebc01ca82:BearProject.pde

void setup(){
  size(1700, 900);
  frameRate(30);
  grid = new Grid();
  base = new Base();
  shield = new Shield();
<<<<<<< HEAD:BearProject.pde
  img = loadImage("download.jpg");
=======
>>>>>>> 4afc55a9f907684d8c913b1b9e3efa5ebc01ca82:BearProject.pde
  
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
<<<<<<< HEAD:BearProject.pde
   image(img, 0, 0);
=======
>>>>>>> 4afc55a9f907684d8c913b1b9e3efa5ebc01ca82:BearProject.pde
   
 }
