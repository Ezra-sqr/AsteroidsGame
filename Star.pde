class star{
  private int myX,myY;
  public star(){
   myX=(int)(Math.random()*800);   
   myY=(int)(Math.random()*800);
  }
  public void show(){
 fill (255);
 stroke(255);
 ellipse (myX,myY,4,4);
  }
}
