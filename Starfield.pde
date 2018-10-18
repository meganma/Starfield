Particle[] hello;
 
 void setup()   
 
 {     
   
   size(500,500);
   
   hello = new Particle[100];
   
   for(int i=0;i<hello.length;i++)
   
   {
      
     hello[i]= new NormalParticle(); 
   
   }
   
   hello[0]=new oddball();

   hello[1]=new Jumbo();
   
 }    
 void draw()

{

  background(0);

  for (int i=0; i<hello.length; i++) {

    hello[i].move();

    hello[i].show();

  }

}
 
 

 

 class NormalParticle implements Particle    
 {     
   double myX, myY, myAngle,mySpeed;
   NormalParticle(){
     myX=250;
     myY=250;
     mySpeed=(Math.random());
     myAngle=Math.random()*10;
    
   }
   
 public void move(){
      myX = myX+(Math.cos(myAngle) * mySpeed);
      myY = myY+(Math.sin(myAngle) * mySpeed);
  }
   
   public void show(){
   
    ellipse((float)myX,(float)myY,10,10);
   }
   
 }
 
  
 interface Particle

{

  public void show();

  public void move();

}
 
 
 class oddball implements Particle
 {     
   float myX, myY; 
   //double mySpeed;
   oddball(){
    myX=250;
    myY=250;
   } 
 public void move(){
        myX=(int)(Math.random()*500);
        myY=(int)(Math.random()*500);  
} 
 public void show(){
    ellipse((float)myX,(float)myY,50,50);
   }
 } 
 
  class Jumbo extends NormalParticle  
 {     
   public void show(){
    ellipse((float)myX,(float)myY,50,50);
   }
 } 
 
  
