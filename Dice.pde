int sumz=0;
void setup()
{
	size(500,500);
	textAlign(CENTER);
	noLoop();
}
void draw()
{
  
	background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	for(int x = 25; x<500; x = x+80)
  {
    for(int y = 25; y<500; y = y+80){
		Die hi = new Die(x,y);
		hi.roll();
    hi.show();
    sumz += hi.numz;
    }
	}
	fill(0);
  text("The total is " + sumz, 250, 490);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int numz;
	int myX, myY;
	int side=50;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
    
	}
	void roll()
	{
		numz = (int)(Math.random()*6)+1;

	}
	void show()
	{
		noStroke();
		fill(255);
		rect(myX,myY,side,side);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  if (numz==1){

      ellipse(myX+side/2,myY+side/2, 10, 10);
    }
    if(numz==2){
      ellipse(myX+(side/4),myY+(side/4), 10, 10);
      ellipse(myX+(side/4)*3,myY+(side/4)*3, 10, 10);
    }
    if(numz==3){
      ellipse(myX+(side/4),myY+(side/4), 10, 10);
      ellipse(myX+(side/4)*3,myY+(side/4)*3, 10, 10);
      ellipse(myX+side/2,myY+side/2, 10, 10);
	}
  if(numz==4){
      ellipse(myX+(side/4),myY+(side/4), 10, 10);
      ellipse(myX+(side/4)*3,myY+(side/4)*3, 10, 10);
      ellipse(myX+(side/4)*3,myY+(side/4), 10, 10);
      ellipse(myX+(side/4),myY+(side/4)*3, 10, 10);
  }
  if(numz==5){
      ellipse(myX+(side/4),myY+(side/4), 10, 10);
      ellipse(myX+(side/4)*3,myY+(side/4)*3, 10, 10);
      ellipse(myX+(side/4)*3,myY+(side/4), 10, 10);
      ellipse(myX+(side/4),myY+(side/4)*3, 10, 10);
      ellipse(myX+side/2,myY+side/2, 10, 10);
  }

if(numz==6){
    ellipse(myX+(side/4),myY+(side/4), 10, 10);
    ellipse(myX+(side/4)*3,myY+(side/4)*3, 10, 10);
    ellipse(myX+(side/4)*3,myY+(side/4), 10, 10);
    ellipse(myX+(side/4),myY+(side/4)*3, 10, 10);
    ellipse(myX+side/4,myY+side/2, 10, 10);
    ellipse(myX+(side/4)*3,myY+side/2, 10, 10);
}
}
}
