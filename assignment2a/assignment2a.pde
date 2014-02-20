import toxi.color.*;
import toxi.util.datatypes.*;



PImage head;
TColor redColor = TColor.newHSV(random(0.00,0.9),1, 1);
TColor greenColor = TColor.newHSV(random(0.75),1, 1);

float angle = 0;
float px = 0, py = 0;
float amplitude = 30;
float frequency = 0;
float fillGap = 2.5;
color c;

void setup(){
  colorMode(HSB, 1, 1, 1);
  
  noLoop();
  size (1000, 500);
  background(random (1), random(1), random(1), 0);
  
  head=loadImage("heads2.png");
  
}

void draw(){
  
  for (int i =- 75; i < height; i++){
    // Reset angle to 0, so waves stack properly
    angle = random(100);
    // Increasing frequency causes more gaps
    frequency+= random(0.01,0.09);
    for (float j = 0; j < width; j++){
      py = i + sin(radians(angle)) * amplitude;
      angle += frequency;
      fill(redColor.hue(), redColor.saturation(), redColor.brightness());
      //c =  color(abs(py-i)/random(1)/amplitude, random(1)+abs(py-i), j*(random(1)));
      // Hack to fill gaps. Raise value of fillGap if you increase frequency
      for (int filler = 0; filler < fillGap; filler++){
        set(int(j-filler), int(py)-filler, c);
        set(int(j), int(py), c);
        set(int(j+filler), int(py)+filler, c);
      }
    }
  }
  noFill();
  stroke(random(1), random(1), random(1));
  strokeWeight(2);
  ellipse(width/2, height/2, 400, 300);
  stroke(random(1), random(1), random(1));
  strokeWeight(3);
  ellipse(width/2, height/2, 200, 150);
  stroke(random(1), random(1), random(1));
  strokeWeight(3);
  ellipse(width/2, height/2, 600, 750);
  stroke(random(1), random(1), random(1));
  strokeWeight(3);
  ellipse(width/2, height/2, 800, 900);
  stroke(random(1), random(1), random(1));
  strokeWeight(3);
  ellipse(width/2, height/2, 900, 1050);
  image(head, 0, 0, width, height);
  
}
  
  
  
