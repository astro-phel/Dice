void setup() {
  size(800,800);
  noLoop();
}
Die bob;
void draw() {
  background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  int counter = 0;
  for(int y = 10; y <= 700; y += 80) {
    for(int x = 10; x <= 790; x += 80) {
      bob = new Die(x,y);
      bob.show();
      counter += bob.numRoll;
    }
  }
  textSize(40);
  fill(0,0,0);
  text("Total counter: "+ counter, 250, 770);
}
void mousePressed() {
      redraw();
     
}
  class Die 
  {
    int numRoll;
    int myX;
    int myY;
    Die(int x, int y) 
    {
      roll();
      myX = x;
      myY = y;
      }
      void roll()
  {
    numRoll = (int)(Math.random()*6) +1 ;
  }
  void show()
  {
 fill(255, 255, 255);
    rect(myX, myY, 50, 70, 12, 12, 12, 12);
    stroke(0);
    int r = (int)(Math.random() * 256); 
    int g = (int)(Math.random() * 256);
    int b = (int)(Math.random() * 256); 

    if (numRoll == 1) {
        fill(r, g, b);
        ellipse(myX + 25, myY + 35, 10, 10); 
    } 
    else if (numRoll == 2) {
        fill(r, g, b);
        ellipse(myX + 15, myY + 20, 10, 10); 
        ellipse(myX + 35, myY + 50, 10, 10);
    } 
    else if (numRoll == 3) {
        fill(r, g, b);
        ellipse(myX + 15, myY + 20, 10, 10);
        ellipse(myX + 25, myY + 35, 10, 10);
        ellipse(myX + 35, myY + 50, 10, 10); 
    } 
    else if (numRoll == 4) {
        fill(r, g, b);
        ellipse(myX + 15, myY + 20, 10, 10);
        ellipse(myX + 35, myY + 20, 10, 10); 
        ellipse(myX + 15, myY + 50, 10, 10);
        ellipse(myX + 35, myY + 50, 10, 10); 
    } 
    else if (numRoll == 5) {
        fill(r, g, b);
        ellipse(myX + 15, myY + 20, 10, 10); 
        ellipse(myX + 35, myY + 20, 10, 10);
        ellipse(myX + 15, myY + 50, 10, 10); 
        ellipse(myX + 35, myY + 50, 10, 10); 
        ellipse(myX + 25, myY + 35, 10, 10); 
    } 
    else {
        fill(r, g, b);
        ellipse(myX + 15, myY + 20, 10, 10);
        ellipse(myX + 35, myY + 20, 10, 10); 
        ellipse(myX + 25, myY + 35, 10, 10);
        ellipse(myX + 15, myY + 50, 10, 10); 
        ellipse(myX + 35, myY + 50, 10, 10); 
    }
  }
}
