size(800,600);
colorMode(HSB,360,100,100,100);
background(0);
noStroke();

float diameter;
float hue, saturation, brightness, alpha;
color col;
int num = 12;

hue = 200;
saturation = 100;
brightness = 20;
alpha = 90;
diameter = width / num * 2;

for(int i = 0; i < num; i++){
  col = color(hue, saturation, brightness, alpha);
  fill(col);
  float x = width / num * i + diameter / 4;
  ellipse(x, height / 2, diameter, diameter);
  brightness += 100 / num;
}
/**
fill(col);
ellipse(width/8,height/2,diameter,diameter);

brightness += 20;
col = color(hue, saturation, brightness, alpha);
fill(col);
ellipse(width/8*3,height/2,diameter,diameter);

brightness += 20;
col = color(hue, saturation, brightness, alpha);
fill(col);
ellipse(width/8*5,height/2,diameter,diameter);

brightness += 20;
col = color(hue,saturation,brightness,alpha);
fill(col);
ellipse(width/8*7,height/2,diameter,diameter);
**/