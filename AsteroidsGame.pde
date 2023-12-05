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
for (int i=0; i<11; i++){
joe= new Asteroid();
joes.add(joe);
joes.get(i).setX((int)(Math.random()*700+50));
joes.get(i).setY((int)(Math.random()*700+50)); 
joes.get(i).setRot((int)(Math.random()*8-4));
joes.get(i).turn(Math.random()*360);
joes.get(i).accelerate(0.2);
}
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
 joes.get(i).move();
 joes.get(i).show();
 float d= dist((float)bob.getX(),(float)bob.getY(),(float)joes.get(i).getX(),(float)joes.get(i).getY());
 if (d<10){
joes.remove(i);
}
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
