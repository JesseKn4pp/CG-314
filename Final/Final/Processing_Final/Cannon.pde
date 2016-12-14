class Cannon {
  boolean shoot = true;
  float x;
  float y;

  Cannon(float tx, float ty) {
    tx=x;
    ty=y;

    rect(x, y, 25, 50);
  }


  void cannonControler() {
    if (keyPressed) {

      if (keyCode ==LEFT)
      {
        x -= 5;
      }
      if (keyCode == RIGHT) 
      { 
        x += 5;
      }
      if (keyCode == SHIFT) {

        shoot = true;
        {

          bullets.add();
          shoot = false;
        }
      }
    }
  }
}