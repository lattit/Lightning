int startX=0;
int startY=150;
int endX=0;
int endY=150;

void setup() {
  size(300, 300);
  background(0, 0, 0);
  strokeWeight(1.5);
}

void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  //above code is for making lightning bolts random colors
  while (startX<300)
  {
    endX=(startX + ((int)(Math.random()*10)));//random # between 0-9
    endY=(startY + ((int)(Math.random()*20)-9));//random # between -9 and9
    line(startX, startY, endX, endY);
    startX= endX;
    startY=endY;
  }
}

void mousePressed()
{
  redraw();
  startX=0;
  startY=150;
  endX=0;
  endY=150;
}
