Snowflake[] flake = new Snowflake[10];
void setup()
{
  //your code here
  size(300,300);

  for(int i = 0; i < flake.length; i++)
  {
    flake[i] = new Snowflake();
  }


}
void draw()
{
 
  background(0,0,0);
  for (int i = 0; i<flake.length; i++)
  {
    flake[i].show(); 
    flake[i].lookDown();
  }

}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  //class member variable declarations
  int x ,y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*30); 
    isMoving = true;
  }
  void show()
  {
    fill(255,255,255);
    ellipse(x,y,10,10);
  }
  void lookDown()
  {
    //your code here
    if ((y> -5) && (y<305))
    {
      color c = get(x,y+12);
      if (c == color(255,255,255) )
      {
        isMoving == true;      
      }
      else {
        isMoving == false;
      }
  }
  void erase()
  {
    //your code here
    fill(255,0,0);
    ellipse(x,y,12,12);
  }
  void move()
  {
    //your code here
    if (isMoving == true)
    {
      y = y + 1;
    }
  }
  void wrap()
  {
    //your code here
  }
}


