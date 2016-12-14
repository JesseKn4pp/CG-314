class Bullet {
  int x, y;
  int n= 4;
  int q=n*7+4;
  Bullet (int xpos, int ypos) {
    x = xpos+ q/2-4;
    y = ypos;
  }

  void display() {
    sphere(50);
    y -= n;
  }
}