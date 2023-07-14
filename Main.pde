Player thePlayer ;
Player theComputer ;
Ball   theBall;

PImage img ; 
PImage imgRR ;
PImage imgBR ;

color playerColor = color(255, 0 , 0);
color computerColor = color(0, 0, 255);


void settings(){
  size(ScreenX_SIDE , ScreenY_SIDE);
}

void setup(){
  imgRR = loadImage("redRacket.png");
  imgRR.resize(50 , 50);
  imgBR = loadImage("blackRacket.png");
  imgBR.resize(50 , 50);
  
  thePlayer = new Player(ScreenY_SIDE-Margin-PaddleHeight-30 , playerColor , imgRR );
  theComputer = new Player(Margin , computerColor , imgBR);
  
  theBall = new Ball();
  
  img = loadImage("TableTennis.png");
  img.resize(ScreenX_SIDE , ScreenY_SIDE);
 
}

void draw(){
   background (img);
   
   theComputer.autoMove(int(theBall.x));
   thePlayer.move(mouseX);
   theBall.move();
   
   theBall.collisionPlayer(thePlayer);
   theBall.collisionPlayer(theComputer);
   theBall.collisionWall();
   
   thePlayer.draw();
   theBall.draw();
   theComputer.draw();
   if (theBall.y - theBall.radius > ScreenY_SIDE || theBall.y + theBall.radius < 0)
   {
     theBall.reset();
   }
}
void mousePressed(){
  loop();
  thePlayer.lives(theBall.c , theBall.p);
  
}
 //<>// //<>//
   


   
