ArrayList<Creature> list=new ArrayList<Creature>();

void setup() {
  size(500, 500);
}

void mousePressed() {
  Creature k=new Creature();
  k.x=mouseX;
  k.y=mouseY;
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
