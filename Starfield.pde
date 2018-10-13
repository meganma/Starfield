NormalParticle[] hello;
 Jumbo okay = new Jumbo(250,250);
  oddball hola = new oddball(0,500);
 void setup()   
 {     
   size(500,500);
   hello = new NormalParticle[100];
   for(int i=0; i<hello.length;i++){
       hello[i]= new NormalParticle(250,250); 
   }
 }   
 void draw()   
 {    
   
    background(0);
   for(int i=0;i<hello.length;i++){
       hello[i].show();
       hello[i].move();
   }
  
   okay.show();
   okay.move();
 
  hola.show();
   hola.move();
   
   
 }  
 class NormalParticle    
 {     
   double myX, myY; 
   double myAngle,mySpeed;
   NormalParticle(int x,int y){
     myX=x;
     myY=y;
     mySpeed=(Math.random());
     myAngle=Math.random()*10;
    
   }
   
 void move(){
      myX = myX+(Math.cos(myAngle) * mySpeed);
      myY = myY+(Math.sin(myAngle) * mySpeed);
  }
   
   void show(){
   
    ellipse((float)myX,(float)myY,10,10);
   }
   
 }
 
 class Jumbo  
 {     
   double myX, myY; 
   double myAngle,mySpeed;
   Jumbo(int x,int y){
     myX=x;
     myY=y;
     mySpeed=(Math.random());
     myAngle=Math.random()*10;  
   } 
 void move(){
      myX = myX+(Math.cos(myAngle) * mySpeed);
      myY = myY+(Math.sin(myAngle) * mySpeed);
  } 
   void show(){
    ellipse((float)myX,(float)myY,50,50);
   }
 } 
 
  
 class oddball
 {     
   float myX, myY; 
   double mySpeed;
   oddball(int x,int y){
    myX=x;
    myY=y;
   } 
 void move(){
        myX=(int)(Math.random()*500);
        myY=(int)(Math.random()*500);  
} 
   void show(){
    ellipse((float)myX,(float)myY,50,50);
   }
 } 
