ArrayList<Creature> list=new ArrayList<Creature>();

void setup() {
  size(500, 500);
}

void mousePressed() {
  Creature k=new Creature();
  k.x=mouseX;
  k.y=mouseY;
  k.size=random(11, 299);
  k.scale=random(0.99, 1.015);
  k.speedX=random(-1.5, 1.5);
  k.speedY=random(-1.5, 1.5);
  k.r=random(0,255);
  k.g=random(0,255);
  k.b=random(0,255);
  list.add(k);
}
void draw() {
  clear();
  for (Creature k : list) {
    k.figur(k.x, k.y, k.size);
    k.move();
    k.scale();
  }
}
