class Tank{
  int x,y,w,h,speed,health;
  PImage tankW,tankA,tankS,tankD;
  char idir;
  
  //Constructor
  Tank() {
    x = 100;
    y = 100;
    w = 100;
    h = 100;
    speed = 2;
    health = 100;
    tankW = loadImage("tankW.png");
    tankA = loadImage("tankA.png");
    tankS = loadImage("tankS.png");
    tankD = loadImage("tankD.png");
    idir = 'w';
  }
  
  void display() {
    imageMode(CENTER);
    if(idir == 'w') {
      image(tankW,x,y);
    } else if(idir == 'a') {
      image(tankA,x,y);
    } else if(idir == 's') {
      image(tankS,x,y);
    } else if(idir == 'd') {
      image(tankD,x,y);
    }
  }  
    
  void move(char dir) {
    if(dir == 'w') {
      y = y-speed;
    } else if(dir == 'a') {
      x = x-speed;
    } else if(dir == 's') {
      y = y+speed;
    } else if(dir == 'd') {
      x = x+speed;
    }
  }
}
