  void setup()
  {
    size(500,500);
    noLoop();
  }
  void draw()
  {
    background(0);
    int sum = 0;
    for(int y = 5; y <= 450; y += 45)
        {
          for(int x = 5; x <= 460; x += 45)
          {
          Dice bob = new Dice(x, y);
          sum += bob.numDots;
          bob.show();
          }
        }        
    fill(225);
    text("Total: " + sum, 10, 480);   
  }
  
  void mousePressed()
  {
      redraw();
  }
  class Dice //models one single dice cube
  {
      int numDots, myX, myY, dotX1, dotY1, dotX2, dotY2, dotX3, dotY3, dotX4, dotY4, dotX5, dotY5; //member variable declarations here
      Dice(int x, int y) //constructor
      {
       //variable initializations here
        numDots = (int)((Math.random()*6)+1);
        myX = x;
        myY = y;
        dotX1 = myX + 20;
        dotY1 = myY + 20;
        dotX2 = myX + 10;
        dotY2 = myY + 30;
        dotX3 = myX + 30;
        dotY3 = myY + 10;
        dotX4 = myX + 10;
        dotY4 = myY + 10;
        dotX5 = myX + 30;
        dotY5 = myY + 30;       
      }
      void roll()
      {
        numDots = (int)((Math.random()*6)+1);
      }
      void show()
      {
        fill((int)(Math.random()*0),(int)(Math.random()*256),(int)((Math.random()*256)+100));
        rect(myX, myY, 40, 40, 7);
        fill(0);
            if(numDots == 1)
            {
              ellipse(dotX1, dotY1, 6, 6);
            }
            if(numDots == 2)
            {
              ellipse(dotX2, dotY2, 6, 6);
              ellipse(dotX3, dotY3, 6, 6);
            }
            if(numDots == 3)
            {
              ellipse(dotX1, dotY1, 6, 6);
              ellipse(dotX4, dotY4, 6, 6);
              ellipse(dotX5, dotY5, 6, 6);
            }
            if(numDots == 4)
            {
              ellipse(dotX2, dotY2, 6, 6);
              ellipse(dotX3, dotY3, 6, 6);
              ellipse(dotX4, dotY4, 6, 6);
              ellipse(dotX5, dotY5, 6, 6);
            }
            if(numDots == 5) 
            {
              ellipse(dotX1, dotY1, 6, 6);
              ellipse(dotX2, dotY2, 6, 6);
              ellipse(dotX3, dotY3, 6, 6);
              ellipse(dotX4, dotY4, 6, 6);
              ellipse(dotX5, dotY5, 6, 6);
            }
             if(numDots == 6) 
            {
              ellipse(dotX2, dotY2, 6, 6);
              ellipse(dotX3, dotY3, 6, 6);
              ellipse(dotX4, dotY4, 6, 6);
              ellipse(dotX5, dotY5, 6, 6);
              ellipse(dotX4, dotY1, 6, 6);
              ellipse(dotX5, dotY1, 6, 6);
          }
      }
  }
