Bacteria[] bob; 
 void setup()   
 {     
 	size(500,500);
 	bob = new Bacteria [1000];
 	for(int i = 0; i < bob.length; i++)
 	{
 		bob[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for(int i = 0; i < bob.length; i++)
 	{
 		bob[i].show();
 		bob[i].walk();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria()
 	{
 		myX = myY = 250;
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*7)-3;
 		myY = myY + (int)(Math.random()*7)-3;
 	}  
 	void show()
 	{
 		noStroke();
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		ellipse(myX, myY, (int)(Math.random()*7), (int)(Math.random()*7));
 	}
 }    
