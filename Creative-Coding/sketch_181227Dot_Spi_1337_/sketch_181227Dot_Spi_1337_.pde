byte FPS = 60;

short[] p = {1,1};

byte i = 0;
byte j = 0;

float r = 0;

void setup()
{
  size(320,200,P2D);
  frameRate(60);
  smooth(1);
  strokeWeight(.628);
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
  stroke(255,0,0);
  point(p[0],p[1]);
  
}

void B()
{
  
  translate(width/2,height/2);
  scale(3);
  
  p[0] *= 1337;
  
  if (p[0] >= width)
  {
    p[0] = 1;
  }
  
  p[1] *= 1337;
  
  if (p[1] >= height)
  {
    p[1] = 1;
  }
  
  for (i = 0; i < 127; i++)
  {
    for (j = 0; j < 6; j++)
    {
      r = r + .0000001;
      rotate(r);
      stroke(255);
      point(p[0]*i/2,p[1]*j/2);
    }
  }
  
}
