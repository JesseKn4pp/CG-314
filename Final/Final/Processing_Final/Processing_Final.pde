import processing.sound.*;
SoundFile file;

int n = 4;
int q = n * 7 + 4;

//scoreboard
int score;

boolean GameOver = false;

//call Player
Cannon cannon;

//Call Enemies
Debris debris;

//load cannon
ArrayList <Bullet> bullet;
bullets = new ArrayList<Bullet> (100);

//Send Debris
ArrayList <Debris> debris;
debris = new ArrayList<Debris> (100);


void setup() {
  size (400, 600, P3D);
  noStroke();
  fill(255);
  cannon = new Cannon(30, 30);
  file = new SoundFile(this, "pewpew.wav");
  file.play();
}

void draw() {
  background(0);

  text("score : "+score, 650, 600 );

  //palyer
  cannon.cannonControler();


  for (int i = 0; i < bullet.length(); i++) {
    Bullet bullet = (Bullet) bullet.get(i);
    bullet.draw();
  }
}

//enemies
for (int i =  0; i < debris.size(); I++) {
  Debris debris = (Debris) debris.get(i);
}

//Gameover screen
if (debris > height) {
  textSize(30);
  fill(random(255), random(255), random(255));
  text("Game Over", 125, 100);
  noLoop() ;
  GameOver=true;

else if (score >= 100) {
  textSize(30);
  fill(random(255), random(255), random(255));
  text("You Win!", 125, 100);
  noLoop() ;
  GameOver=true;
}
}

void mousePressed() {
  if (GameOver == true) {
    score = 0;
    GameOver = false;
    loop();
  }
}