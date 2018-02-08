public void setup()
{
	size(600,600);
	
}
int x=100; 
int length =200;
public void draw()
{
    background(((int)(Math.random()*265)),((int)(Math.random()*265)),((int)(Math.random()*265)));
 	sierpinski(x, 50, length);
}
int limit= 20;
public void mouseDragged()//optional
{
	//limit+=2;
	//background(0);
	length++;
}

public void mouseClicked(){
	redraw();
}

public void sierpinski(int x, int y, int length) 
{
	int one= (int)(Math.random()*265);
	int two= (int)(Math.random()*265);
	stroke(one, two, 265);

	if(length <= limit){
		
		noFill();
		strokeWeight(2);
		triangle(x, y, x+ length/2, y-length, x+length, y);
	}
	else{
		int less= x-1; 

		sierpinski(less, y, length/2);
		sierpinski(less +length/2, y, length/2);
		sierpinski( less+ length/4, y+ length/2, length/2);
	}

}