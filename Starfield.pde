//your code here
void setup()
{
	//your code here
	size(550, 550);
}
void draw()
{
	background(0);
	//your code here
}
class NormalParticle
{
	//your code here
	double myX, myY, mySpeed, myAngle;
	int myColor;
	NormalParticle()
	{
		myX = Math.random()*500+25;
		myY = Math.random()*500+25;
		mySpeed = Math.random()*5;
		myAngle = Math.random()*360;
		myColor = ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
}
interface Particle
{
	//your code here
}


class OddballParticle //uses an interface
{
	//your code here
}


class JumboParticle //uses inheritance
{
	//your code here
}

