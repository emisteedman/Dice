int numDots;
void setup()
{
  size(500, 500);
  noLoop();
}

void draw()
{
  background(#5CCB7D);
  for (int y = 20; y <= 400; y+=100) {
    for (int x = 20; x<= 500; x+=100) {
      Die dice = new Die(x, y);
      dice.show();
      dice.roll();
    }
  }
  fill(#908A8A);
  textSize(40);
  text("Sum of Dots: " + numDots, 100,440);
}

void mousePressed()
{
  numDots = 0;
  redraw();
}

class Die
{
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    fill(0);
    int spots = (int)(Math.random()*6+1);
      if (spots == 1){
        ellipse(myX + 25, myY + 25, 7, 7);
        numDots = numDots + 1;
      }
        else if (spots == 2){
          ellipse(myX + 15, myY + 15, 7, 7);
          ellipse(myX + 35, myY + 35, 7, 7);
          numDots = numDots + 2;
      }
       else if (spots == 3){
         ellipse(myX + 15, myY + 15, 7, 7);
         ellipse(myX + 25, myY + 25, 7, 7);
         ellipse(myX + 35, myY + 35, 7, 7);
         numDots = numDots + 3;
      }
       else if (spots == 4){
         ellipse(myX + 15, myY + 15, 7, 7);
         ellipse(myX + 15, myY + 35, 7, 7);
         ellipse(myX + 35, myY + 15, 7, 7);
         ellipse(myX + 35, myY + 35, 7, 7);
         numDots = numDots + 4;
       }
       else if (spots == 5){
         ellipse(myX + 15, myY + 15, 7, 7);
         ellipse(myX + 15, myY + 35, 7, 7);
         ellipse(myX + 35, myY + 15, 7, 7);
         ellipse(myX + 35, myY + 35, 7, 7);
         ellipse(myX + 25, myY + 25, 7, 7);
         numDots = numDots + 5;
       }  
       else if (spots ==6){
         ellipse(myX + 15, myY + 15, 7, 7);
         ellipse(myX + 15, myY + 35, 7, 7);
         ellipse(myX + 35, myY + 15, 7, 7);
         ellipse(myX + 35, myY + 35, 7, 7);
         ellipse(myX + 25, myY + 15, 7, 7);
         ellipse(myX + 25, myY + 35, 7, 7);
         numDots = numDots + 6;
       }
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX, myY, 50, 50, 15);
  }
}