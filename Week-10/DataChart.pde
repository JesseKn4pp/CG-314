// i cant get the data to behave itself, all i get is a horizaontal line

int[] births ;

void setup() {
  size (480, 300);
  Table stats = loadTable("Birth_Death.csv", "header");
  births = new int[stats.getRowCount()];
  for (int i=0; i<stats.getRowCount(); i++) {
    births [i] = stats.getInt(i, 2);
  }
}

void draw() {
  background(255);
  stroke(255, 0, 0);
  beginShape();
  for (int i = 0; i < births.length; i++) {
    float x = map(i, 0, births.length-1, 20, 460);
    float y = map(births[i], 39, 60, 100, 20);
    stroke(200);
    line(x,0,x,height);
    stroke(255,0,0);
    vertex(x, y);
  }
  endShape();
}