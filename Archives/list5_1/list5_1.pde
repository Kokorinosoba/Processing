int NUM = 100;
Particle[] myParticle = new Particle[NUM];

void setup() {
  size(800, 600);
  frameRate(60);
  blendMode(ADD);
  noStroke();
  
  for (int i = 0; i < NUM; i++) {
    myParticle[i] = new Particle(random(8, 32));
  }
}
void draw() {
  background(0);
  for (int i = 0; i < NUM; i++) {
    myParticle[i].draw();
  }
}
