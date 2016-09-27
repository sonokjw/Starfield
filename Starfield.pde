//your code here
NormalParticle [] group;
Particle [] many;
void setup()
{
	//your code here
	size(550, 550);
	group = new NormalParticle[1000];
	for(int i = 0; i < group.length; i++)
	{
		group[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	//your code here
	for(int i = 0; i < group.length; i++)
	{
		group[i].show();
		group[i].move();
	}
}
class NormalParticle
{
	//your code here
	double myX, myY, mySpeed, myAngle;
	int myColor;
	NormalParticle()
	{
		myX = 225;
		myY = 225;
		mySpeed = Math.random()*10-4;
		myAngle = Math.random()*360;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}

	void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)(myX), (float)(myY), 2, 2);
	}
	void move()
	{
		myX = myX + mySpeed*cos((float)(myAngle));
		myY = myY + mySpeed*sin((float)(myAngle));
		myAngle+=0.02;
	}
}


interface Particle
{
	//your code here
	public void show();
	public void move();
}


class OddballParticle implements Particle //uses an interface
{
	//your code here
	public void show()
	{

	}
	public void move()
	{

	}
}


class JumboParticle implements Particle //uses inheritance
{
	//your code here
	public void show()
	{

	}
	public void move()
	{

	}
}

