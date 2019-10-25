class Creature {
  float x;
  float y;
  float size;
  float speedX;
  float speedY;
  float scale;
  float r;
  float g;
  float b;

  void figur(float x, float y, float size) {
    fill (r,g,b);
    rectMode(CENTER);
    square(x, y, size);
    circle(x, y, size);
    circle(x, y, size-size/10);
    circle(x, y, size-size/1.8);

    square(x+size/10, y-size/10, size/10);
    square(x+size/10, y+size/10, size/10);
    square(x-size/10, y-size/10, size/10);
    square(x-size/10, y+size/10, size/10);
    circle(x, y, size/10);
  }

  void move() {
    if (x>width-size/2) {
      speedX=-abs(speedX);
    } else if (x<0+size/2) {
      speedX=abs(speedX);
    }
    if (y>height-size/2) {
      speedY=-abs(speedY);
    } else if (y<0+size/2) {
      speedY=abs(speedY);
    }
    x+=speedX;
    y+=speedY;
  }
  void scale() {
    if (size>300) {
      scale=random(0.99, 0.999);
    }
    //når figuren bliver mindre end 0.5 skal den blive større
    if (size<10) {
      scale=random(1.001, 1.015);
    }
    size*=scale;
  }
}
