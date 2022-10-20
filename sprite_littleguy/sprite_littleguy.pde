Sprite s;

void setup()
{
  size (800,600);
  s = new Sprite();
  s.velocity.x = 1;
  s.acceleration.x = 0.1;
  String[] files = {"littleguy.svg", "littleguy2.svg"};
  
  s.addAnimation(files, 5);
  shape(s.ani.frames[0],0,0);
  shape(s.ani.frames[1],0,0);
}

void draw()
{
 background(255);
 translate(width/2, height/2);
 s.update();
 s.check();
 s.display();
}
