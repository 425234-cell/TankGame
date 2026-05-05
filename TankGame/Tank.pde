class Tank {
  int x, y, w, h, speed, health, laserCount, turretCount;
  PImage tankW, tankA, tankS, tankD;
  char idir;

  //Constructor
  Tank() {
    x = 100;
    y = 100;
    w = 100;
    h = 100;
    speed = 2;
    health = 100;
    laserCount = 100;
    turretCount = 1;
    tankW = loadImage("tankW.png");
    tankA = loadImage("tankA.png");
    tankS = loadImage("tankS.png");
    tankD = loadImage("tankD.png");
    idir = 'w';
  }

  void display() {
    imageMode(CENTER);
    if (idir == 'w') {
      image(tankW, x, y);
    } else if (idir == 'a') {
      image(tankA, x, y);
    } else if (idir == 's') {
      image(tankS, x, y);
    } else if (idir == 'd') {
      image(tankD, x, y);
    }
  }

  void move(char dir) {
    if (dir == 'w') {
      y = y-speed-15;
    } else if (dir == 'a') {
      x = x-speed-15;
    } else if (dir == 's') {
      y = y+speed+15;
    } else if (dir == 'd') {
      x = x+speed+15;
    }
  }
  boolean intersect(Obstacle o) {
    float distance = dist(x, y, o.x, o.y);
    if (distance < 100) {
      return true;
    } else {
      return false;
    }
  }
}
