//your code here
Particle [] group;
void setup()
{
	//your code here
	size(1000, 800);
	group = new Particle[5000];
	for(int i = 0; i < group.length; i++)
	{
		if(i % 250 == 0)
			group[i] = new JumboParticle();
		else if(i % 20 == 0)
			group[i] = new OddballParticle();
		else
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

void mousePressed()
{
	group = new Particle[2000];
	for(int i = 0; i < group.length; i++)
	{
		if(i % 250 == 0)
			group[i] = new JumboParticle();
		else if(i % 20 == 0)
			group[i] = new OddballParticle();
		else
			group[i] = new NormalParticle();
	}
}

class NormalParticle implements Particle
{
	//your code here
	double myX, myY, mySpeed, myAngle;
	int myColor;
	NormalParticle()
	{
		myX = mouseX;
		myY = mouseY;
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
		myAngle+=0.01;
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
	double myX, myY, mySpeed, myAngle;
	int myColor;
	OddballParticle()
	{
		myX = mouseX;
		myY = mouseY;
		mySpeed = Math.random()*10-4;
		myAngle = Math.random()*360;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	public void show()
	{
		noStroke();
		fill(myColor);
		rect((float)(myX), (float)(myY), 3, 3);
	}
	public void move()
	{
		myX = myX + mySpeed*cos((float)(myAngle));
		myY = myY + mySpeed*sin((float)(myAngle));
		myAngle-=0.007;
	}
}


class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
	void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)(myX), (float)(myY), 10, 10);
	}
}

