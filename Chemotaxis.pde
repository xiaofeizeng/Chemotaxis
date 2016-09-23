 Bacteria [] colony;
 //declare bacteria variables here   
 void setup()   
 {     
   size (500, 500);
   
   colony = new Bacteria [10];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }//initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(225);
   for (int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
   //move and show the bacteria   
 }  
 class Bacteria    
 {     
   int myX, myY, mySize, myColor, myRed, myGreen, myBlue, myWalkX, myWalkY;
   Bacteria()
   {
     myX = 250;
     myY = 250;
     myColor = color(myRed, myGreen, myBlue);
     myGreen = (int)(Math.random()*255);
     myBlue = (int)(Math.random()*51);
     mySize = (int)(Math.random()*20);
     mySize = (int)(Math.random()*20);
     myWalkX = (int)(Math.random()*10 -5);
     myWalkY = (int)(Math.random()*10 -5); 
     //lots of java!   
 }    

void show()
{
  fill(myColor);
  ellipse(myX, myY, mySize, mySize);

}

void move()
{
  myX = myX + (int)(Math.random()*10-5);
  myY = myY + (int)(Math.random()*10 -5);

}
}
