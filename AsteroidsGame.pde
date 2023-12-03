Spaceship bob;
Asteroid joe;
star[]nightSky=new star[200];
ArrayList <Asteroid> joes= new ArrayList <Asteroid>();
void setup(){
  size(800,800);
for (int i=0; i<nightSky.length; i++){
nightSky[i]= new star();
}
bob=new Spaceship();
joe= new Asteroid();
for (int i=0; i<11; i++)
joes.add(joe);
}
void draw()
{
 background(0);
 for (int i=0; i<nightSky.length; i++)
  {
  nightSky[i].show();
  }
 bob.move();
 bob.show();
 for (int i=0; i<joes.size(); i++){
 joes.get(i).
 joes.get(i).move();
 joes.get(i).show();
}
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
