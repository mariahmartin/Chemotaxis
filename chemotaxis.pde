//declares variables for coordinates of food source
int foodX;
int foodY;

//creates array for bacteria colony
Bacteria [] colony;

void setup()
{

  size(1000, 500);
  frameRate(20);

  //food source in the center
  //foodX = width/2;
  //foodY = height/2;

  //food source at a random point
  foodX = (int)(Math.random()*width);
  foodY = (int)(Math.random()*height);

  //initialize bacteria variables
  colony = new Bacteria[8];
  for (int i=0; i<colony.length; i++)
  {
    colony[i] = new Bacteria(((int)(Math.random()*width)), ((int)(Math.random()*height)));
  }
}
void draw()
{
  //creates a red ellipse to represent food source
  fill(255, 0, 0);
  stroke(0);
  ellipse(foodX, foodY, 10, 10); 

  //move and show the bacteria
  for (int i=0; i<colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
    colony[i].checkEdges();
  }
}

void mousePressed()
{
  //creates a new food source in a random position
  //each time the mouse is pressed
  //and blacks out the old food source

//covers up old food source with a black circle
  fill(0);
  //noStroke();
  ellipse(foodX, foodY, 10, 10);

// assigns a new random postion to new food source
  foodX = (int)(Math.random()*width);
  foodY = (int)(Math.random()*height);

//draws a red circle in the position of the new food
  fill(255, 0, 0);
  stroke(0);
  ellipse(foodX, foodY, 10, 10);
}
