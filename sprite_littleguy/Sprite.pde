class Sprite
{
 PVector location = new PVector (0,0);
 PVector velocity = new PVector (0,0);
 PVector acceleration = new PVector (0,0);
 
 float boxX = 100;
 float boxY = 150;
  
 PVector reg = new PVector (boxX/2, boxY/2); //axis point
 
 Animation ani; 
 
 Sprite()
 {
  
 }//Sprite end
 
 void addAnimation(String[] filenames, int speed)
 {
   this.ani = new Animation(filenames);
   this.ani.speed = speed;
   this.ani.w = boxX;
   this.ani.h = boxY;
 }//end void add
 
  void update()
  {
   this.velocity = this.velocity.add(this.acceleration); //add the acceleration vector to the velocity vector to change speed and direction
   this.location = this.location.add(this.velocity); 
    
  }//void end
  
  void check()
  {
   float actualX = screenX(this.location.x, this.location.y);
  // float newX = screenX(-boxX, this.location.y);
   if(actualX > width + boxX) this.location.x = - boxX - (width/2);; //if location is bigger than width of screen, the sprite will be moved to the other side 
  }
  
  void display()
  {
    pushMatrix();
      translate(this.location.x, this.location.y);
      noStroke();
      fill (0,100,255);
      circle(0,0,10);
      translate(-reg.x, -reg.y);
      fill(0,100,255,20);
      rect (0,0,boxX, boxY);
      if (this.ani !=null) ani.display();
    popMatrix();
    
  }//end void display
  
}//class sprite end
