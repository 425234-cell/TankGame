// Hannah Hijjawi | Apr 14 2026 | TankGame
PImage bg;
Tank t1;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
int score;
Timer obsTimer;

void setup() {
  size(500,500);
  bg = loadImage("bg1.png");
  t1 = new Tank();
  //obstacles.add(new Obstacle(250, 250));
  //obstacles.add(new Obstacle(25, 400));
  score = 0;
  obsTimer = new Timer(1000);
  obsTimer.start();
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg,0,0);
  //Add Timer to distribute obstacles
  if(obsTimer.isFinished()) {
    obstacles.add(new Obstacle(-100, int(random(height))));
    obsTimer.start();
  }
  //obstacles.add(new Obstacle(250, 250));
  
  for (int i = 0; i < obstacles.size(); i++) {
  Obstacle o = obstacles.get(i);
  o.display();
  o.move();
}
  t1.display();
  scorePanel();
}

void scorePanel() {
  fill(127,127);
  rectMode(CENTER);
  rect(width/2,35,width,40);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Score:" + score,width/2,50);
}

void keyPressed () {
  if (key == 'w') {
    t1.move('w');
  } else if(key == 's') {
    t1.move('s');
  } else if(key == 'd') {
    t1.move('d');
  } else if(key == 'a') {
    t1.move('a');
  }
}
