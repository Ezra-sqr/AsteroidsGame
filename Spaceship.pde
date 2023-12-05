class Spaceship extends Floater  
{   
public Spaceship(){
  corners=8;  //the number of corners, a triangular floater has 3   
   xCorners= new int[corners];   
   yCorners=new int [corners];
   yCorners[0]=-8;
   xCorners[0]=-16;
   yCorners[1]=-13;
   xCorners[1]=-20;
   yCorners[2]=-6;
   xCorners[2]=-7;
   yCorners[3]=0;
   xCorners[3]=12;
   yCorners[4]=6;
   xCorners[4]=-7;
   yCorners[5]=13;
   xCorners[5]=-20;
   yCorners[6]=8;
   xCorners[6]=-16;
   yCorners[7]=0;
   xCorners[7]=-18;
   myColor=color(100,0,140);   
  myCenterX=400;
  myCenterY=400; //holds center coordinates   
  myXspeed=0;
  myYspeed=0; //holds the speed of travel in the x and y directions   
  myPointDirection=0; //holds current direction the ship is pointing in degrees    
 }
 public void zoom(){
myXspeed=0;
  myYspeed=0;
   myCenterX=Math.random()*700+50;
  myCenterY=Math.random()*700+50;
  myPointDirection=Math.random()*360;
}
public double getX(){
return myCenterX;
}
public double getY(){
return myCenterY;
}
public double getSpeedX(){
return myXspeed;
}
public double getSpeedY(){
return myYspeed;
}
public double getDirection(){
return myPointDirection;
}
}
