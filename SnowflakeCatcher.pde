Snowflake[] flake = new Snowflake[75];
void setup()
{
  //your code here
  size(300,300);
  background(0,0,0);
  noStroke();

  for(int i = 0; i < flake.length; i++)
  {
    flake[i] = new Snowflake();
  }


}
void draw()
{
 
  //background(0,0,0);
  for (int i = 0; i<flake.length; i++)
  {

    flake[i].lookDown();
    flake[i].erase();
    flake[i].move();    
    flake[i].show(); 
    flake[i].wrap();
  }

}
void mouseDragged()
{
  fill(255,0,0);
  ellipse(mouseX,mouseY,10,10);
}




class Snowflake
{
  //class member variable declarations
  float x ,y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300); 
    isMoving = true;
  }
  void show()
  {
    fill(255,255,255);
    ellipse(x,y,10,10);
    //rect(x-5,y-5,10,10);
  }
  void lookDown()
  {
    //your code here
    if ((y> -5) && (y<305))
    {
      color c = get((int)x,(int)y+6);
      if (c == color(255,0,0))
      {
        isMoving = false;      
      }
      else 
      {
        isMoving = true;
      }
      }
    }
  
  void erase()
  {
    //your code here
    fill(0,0,0);
    ellipse(x,y,11,11);
  }
  void move()
  {
    //your code here
    if (isMoving == true)
    {
      y = y + (float)(Math.random()*1);
    }
    else if(isMoving == false)
    {
     
      x = x;
      y = y;
    }
  }
  void wrap()
  {
    if (y >= 310)
    {
      y = -10;
    }
  }
}
