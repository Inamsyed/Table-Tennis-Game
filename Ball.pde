class Ball{
  
  float x ; 
  float y ; 
  float dx;
  float dy;
  int radius;
  int c ; 
  int p ; 
  color ballColor = color (255 , 255 , 255);
  
  Ball (){
    x = ScreenX_SIDE / 2;
    y = ScreenY_SIDE / 2;
    dx = 3;
    dy = 3;
    radius = 20;
    c = 0;
    p = 0;
  }
  
  void move(){
    x = x + dx;
    y = y + dy ; 
    }
    
  void draw(){
    fill (ballColor);
    ellipse(x,y, radius, radius);
    }
    
  void reset()
  {
    if (theBall.y > ScreenY_SIDE)
    {
      c = c + 1;
    }
    else
    {
      p = p+1;
    }
    PFont myFont = loadFont("VerdanaPro-CondBlack-48.vlw");
    textFont(myFont);
    fill(255, 255, 255);
    text("Comp: " + c + "    Player: " + p ,65, 180);
    println(c + "vs" + p);
    theBall.x = ScreenX_SIDE / 2;
    theBall.y = ScreenY_SIDE / 2;
    
    noLoop();
  }
  
 
  
  
  void collisionWall(){
    if (x + radius >= ScreenX_SIDE ){
      dx = -dx;
    }
    else if (x-radius <= 0){
      dx = -dx;
    }
  }
   
  void collisionPlayer(Player anyplayer)
  {
    if (y+radius >= anyplayer.ypos && y-radius<= anyplayer.ypos + PaddleHeight &&
    x + radius >= anyplayer.xpos && x - radius<= anyplayer.xpos + PaddleWidth){
      dy = -dy;
    }
  }
  
    
}
