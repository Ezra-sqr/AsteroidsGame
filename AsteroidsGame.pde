Spaceship bob;
star[]nightSky=new star[200];
public void setup() 
{
  size(800,800);
for (int i=0; i<nightSky.length; i++){
nightSky[i]= new star();
}
bob=new Spaceship();
}
public void draw() 
{
background(0);
 for (int i=0; i<nightSky.length; i++)
  {
  nightSky[i].show();
  }
 bob.move();
 bob.show();
}
void keyPressed(){
if (key=='w'||key=='W'){
  bob.accelerate(1);
}
else if (key=='a'||key=='A'){
  bob.turn(-10);
}
else if (key=='d'||key=='D'){
  bob.turn(10); 
  }
  else if (key=='j'||key=='J'){
  bob.zoom();
  }
}

