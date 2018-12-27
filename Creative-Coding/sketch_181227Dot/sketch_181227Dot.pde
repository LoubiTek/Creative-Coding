byte FPS = 60;

short[] p = {1,1};

byte i = 0;
byte j = 0;

void setup()
{
  size(320,200,P2D);
  frameRate(60);
}

void draw()
{
  A();
  B();
}

void A()
{
  
  background(0);
  stroke(255);
  fill(0);
  rect(0,0,width-1,height-1);
  
  point(mouseX,mouseY);
  point(p[0],p[1]);
  
}

void B()
{
  
  translate(width/2,height/2);
  
  p[0]++;
  
  if (p[0] >= width)
  {
    p[0] = 1;
  }
  
  p[1]++;
  
  if (p[1] >= height)
  {
    p[1] = 1;
  }
  
  for (i = 0; i < 127; i++)
  {
    for (j = 0; j < 64; j++)
    {
      point(p[0]*i/2,p[1]*j/2);
    }
  }
  
}
