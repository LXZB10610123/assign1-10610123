PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage groundhogImg;
PImage robotImg;
PImage soldierImg;
int x=0;
int a=0;
int y=0;


void setup() {
  colorMode(RGB);
  size(640, 480, P2D);
  robotImg = loadImage("img/robot.png");
  soldierImg = loadImage("img/soldier.png");
  groundhogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
	bgImg = loadImage("img/bg.jpg");
	soilImg = loadImage("img/soil.png");
  y = floor(random(2,6));

}

void draw() {
  background(0);
  image(bgImg,0,0);
  image(soilImg,0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  stroke(255, 255, 0);
  strokeWeight(5);
  fill(253, 184, 19);
  circle(590,50,120);
  
  noStroke();
  fill(124, 204, 25);
  rect(0,145,640,15);
  
  image(groundhogImg,280,80);
  image(robotImg,480,240);
  
  x=x+5;
  x %= 800;
  image(soldierImg,-100+x,y*80);
  
  a=a+2;
  a %= 600;
  stroke(255, 0, 0);
  strokeWeight(10);
  line(485-a, 279, 505-a, 279); 
  
}
