PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage groundhogImg;
PImage robotImg;
PImage soldierImg;
float soldierX,soldierY;
float LaserX=0,LaserY=0;
float robotX=0,roboxY=0;
float Laserlong = 0;

void setup() {
  colorMode(RGB);
  size(640, 480, P2D);
  
  //Image
  robotImg = loadImage("img/robot.png");
  soldierImg = loadImage("img/soldier.png");
  groundhogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
	bgImg = loadImage("img/bg.jpg");
	soilImg = loadImage("img/soil.png");

// soldier Floor
  soldierY = floor(random(2,6));
  
// Robot Floor
  robotX = floor(random(2,8));
  roboxY = floor(random(2,6));
  
}

void draw() {
  background(0);
  image(bgImg,0,0);
  image(soilImg,0,160);
  
  // lifeImage
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  // Sun Drawing
  stroke(255, 255, 0);
  strokeWeight(5);
  fill(253, 184, 19);
  circle(590,50,120);
  
  // Grass Drawing
  noStroke();
  fill(124, 204, 25);
  rect(0,145,640,15);
  
  //
  image(groundhogImg,280,80);
  
  //Robot Move
  image(robotImg,-40+robotX*80,roboxY*80);
  
  // soldier Move
  soldierX=soldierX+5;
  soldierX %= 800;
  image(soldierImg,-100+soldierX,soldierY*80);
  
  //Laser Move
  LaserX=LaserX+2;
  Laserlong=Laserlong+1;
  LaserX %= 150;
  Laserlong %= 75;
  stroke(255, 0, 0);
  strokeWeight(10);
  line(robotX*80- LaserX-20,40+roboxY*80,robotX*80- LaserX-20-Laserlong,40+roboxY*80);
   if(Laserlong >= 40){
     Laserlong=40;
   }
   if(LaserX == 0){
     Laserlong=0;
   }
  
  }
    
  
