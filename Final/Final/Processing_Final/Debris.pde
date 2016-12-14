class Debris {
  float x, y;
  float diameter;
  float speed;
  float direction = 1;
  
  Debris( float xpos, float ypos, float dia, float sp) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }
  
  void move() {
    y+= (speed * direction);
    if ((y > (height - diameter/2)) || (y < diameter/2));
  }
  void display() {
    box(50);
  }
}
}