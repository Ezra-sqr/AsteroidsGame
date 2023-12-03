class Asteroid extends Floater
{
double rotSpeed;
Asteroid(){
corners=6;
   xCorners= new int[corners];   
   yCorners=new int [corners];
    yCorners[0]=0;
   xCorners[0]=-18;
   yCorners[1]=-12;
   xCorners[1]=-10;
   yCorners[2]=-9;
   xCorners[2]=8;
   yCorners[3]=0;
   xCorners[3]=15;
   yCorners[4]=11;
   xCorners[4]=8;
   yCorners[5]=14;
   xCorners[5]=-8;
   myColor= 120;
    myCenterX=400;
  myCenterY=400;    
  myXspeed=0;
  myYspeed=0;    
  myPointDirection=0;
  rotSpeed=0;
}
public void move(){
turn(rotSpeed);
super.move();
}
public void getX(){
return myCenterX;
}
public void getY(){
return myCenterY;
}
public void setX(int x){
myCenterX=x;
}
public void setY(y){
myCenterY=y;
}
}
