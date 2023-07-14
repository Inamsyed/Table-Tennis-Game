class Player{
  
  int xpos;
  int ypos;
  color paddlecolor;
  PImage Appearance ; 
  
  Player(int screen_y , color x , PImage P){
    
    xpos = ScreenX_SIDE / 2;
    ypos = screen_y;
    this.paddlecolor = x ; 
    this.Appearance = P ;  
  }
  
  void move(int x){
    if (x >= ScreenX_SIDE - PaddleWidth)
    {
      xpos = ScreenX_SIDE - PaddleWidth;
    }
    else
    {
     xpos = x;
    }
  }
  
  void autoMove(int targetX){
    if (targetX > xpos+PaddleWidth/2)
    xpos ++;
    else if (targetX < xpos+PaddleWidth/2)
    xpos --;

  }
    void draw()
    {
      fill (paddlecolor);
      rect (xpos, ypos, PaddleWidth , PaddleHeight);
      image(Appearance , xpos , ypos - 10);
    }
    
    void lives (int computerWins , int playerWins){
      if (computerWins >= 7){
        println("COMPUTER WON");
      }
      else if (playerWins >= 7){
        println("PLAYER WON");
      }
    }
  
  
}
