PVector force;
PVector acceleration;
PVector location;
PVector velocity;
float mass;

void setup () {
  size(800, 600);
  frameRate(60);
  location = new PVector(0.0, 0.0);
  velocity = new PVector(0.0, 0.0);
  force = new PVector(3.0, 2.0);
  mass = 1.0;
  acceleration = force.mult(mass);
}

void draw () {
  fill(0, 31);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  velocity.add(acceleration);
  location.add(velocity);
  acceleration.set(0, 0);
  ellipse(location.x, location.y, 20, 20);
}