class Bullet extends Floater
{
  Bullet(Spaceship bob){
corners=3;
   xCorners= new int[corners];   
   yCorners=new int [corners];
    yCorners[0]=0;
   xCorners[0]=3;
   yCorners[1]=2;
   xCorners[1]=-2;
   yCorners[2]=-2;
   xCorners[2]=-2;
   myColor= color(240,230,125);
    myCenterX=bob.getX();
  myCenterY=bob.getY();    
  myXspeed=bob.getSpeedX();
  myYspeed=bob.getSpeedY();    
  myPointDirection=bob.getDirection();
}
}
