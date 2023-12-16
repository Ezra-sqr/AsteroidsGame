Spaceship bob;
Asteroid joe;
Bullet Larry;
star[]nightSky=new star[200];
ArrayList <Asteroid> joes= new ArrayList <Asteroid>();
ArrayList <Bullet> Larrys= new ArrayList <Bullet>();
void setup(){
  size(800,800);
for (int i=0; i<nightSky.length; i++){
nightSky[i]= new star();
}
bob=new Spaceship();
for (int i=0; i<16; i++){
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
 fill(255,0,25);
 text("ammo: "+(20-Larrys.size()),25,50);
 for (int i=0; i<joes.size(); i++){
 joes.get(i).move();
 joes.get(i).show();
 float p= dist((float)bob.getX(),(float)bob.getY(),(float)joes.get(i).getX(),(float)joes.get(i).getY());
 if (p<20){
joes.remove(i);
i--;
fill(205,0,0);
rect(0,0,800,800);
}
}
for(int i=0; i<Larrys.size();i++){
Larrys.get(i).move();
Larrys.get(i).show();
if (Larrys.get(i).getX()<1||Larrys.get(i).getY()<1||Larrys.get(i).getX()>799||Larrys.get(i).getY()>799){
  Larrys.remove(i);
  break;
}
 for (int k=0; k<joes.size(); k++){
   float d= dist((float)Larrys.get(i).getX(),(float)Larrys.get(i).getY(),(float)joes.get(k).getX(),(float)joes.get(k).getY());
  if (d<20){
joes.remove(k);
Larrys.remove(i);
break;
}
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
else if (key=='s'||key=='S'){
  bob.setSpeedX(bob.getSpeedX()*0.7);
   bob.setSpeedY(bob.getSpeedY()*0.7);
}
else if (key=='k'||key=='K'){
bob.zoom();
}
else if ((key=='j'||key=='J')&&Larrys.size()<20){
Larry= new Bullet(bob);
Larrys.add(Larry);
}
}
