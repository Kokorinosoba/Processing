class Flower {
 float angle;
 color c ;
 PVector location;
 PVector velosity;
 int size;
 Flower(){
   angle = 0;
   switch( int(random(4))){ 
     case 0: c = color(#c71585);break;
     case 1: c = color(#ff1493);break;
     case 2: c = color(#ff69b4);break;
     case 3: c = color(#0000cd);break;
   }
   location = new PVector(random(width),random(height));
   velosity = new PVector(0, 1);
   
   size = 10;
 }
 
 void draw(){
   pushMatrix();
   translate(location.x,location.y);
  noStroke();
  fill(c);
  rotate(angle);
  for (int i = 0; i < 8; i++) {
    ellipse(2*size, 0, 2*size, 1*size);
    rotate(radians(-45));
  }
  popMatrix();
  angle += 0.02;
  location.add(velosity);
  if (location.y >2*size + height){
    location.y = -2*size;
  }
 }
}
