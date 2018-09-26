Grid grid;
Base base;
Shield shield;
EnemyBasic enemy1;
Settings settings;
int i = 0;


void setup(){
  size(1700, 900);
  frameRate(30);
  grid = new Grid();
  base = new Base();
  shield = new Shield();
  enemy1 = new EnemyBasic();
  settings = new Settings();
  

  
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
   
   enemy1.display();

   
 }
