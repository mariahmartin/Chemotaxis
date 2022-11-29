class Bacteria
{
  int myX;
  int myY;
  int myR;
  int myG;
  int myB;
  Bacteria(int x_, int y_)
  {
    myX = x_;
    myY = y_;
    myR = (int)(Math.random()*255);
    myG = (int)(Math.random()*255);
    myB = (int)(Math.random()*255);
  }

  void move() {

    // random walker
    // myX = myX + (int)(Math.random()*10)-5;
    // myY = myY + (int)(Math.random()*10)-5;

    //biased random walker
    if (foodX > myX)
      myX = myX + ((int)(Math.random()*10)-3);
    else
      myX = myX + ((int)(Math.random()*10)-7);
    if (foodY > myY)
      myY = myY + ((int)(Math.random()*10)-3);
    else
      myY = myY + ((int)(Math.random()*10)-7);
  }
  
  void show()
  {
    fill(myR, myG, myB);
    stroke(myR-30, myG-30, myB-30);
    ellipse(myX, myY, 5, 5);
  }
  
  void checkEdges()
  {
    //prevents Bacteria from moving off the screen
    if (myX < 0)
      myX = 0;
    else if (myX > width)
      myX = width;
    if (myY < 0)
      myY = 0;
    else if (myY > height)
      myY = height;
  }
}
