import toxi.color.*;
import toxi.util.datatypes.*;
 import processing.pdf.*; 
 float make_bigger = 100;
float[] coswave;
PImage head;
TColor redColor = TColor.newHSV(1, .75, 1);
TColor greenColor = TColor.newHSV(random(0.105, 0.150), 1, 1);
TColor magentaColor = TColor.newHSV(random(.900,.916), 1, 1);
TColor yellowColor = TColor.newHSV(random(.6), 1, 1);
float[][] distances;
float maxDistance;
int spacer;
color c, c1, c2, c3;

float print_width = 20;
float print_height = 10;

void setup() {

  beginRecord(PDF, "watery.pdf");   
  background(255);
  noLoop();
  colorMode(HSB, 1, 1, 1);
  noLoop();
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  //size (1000, 500);
  background(0);
  head=loadImage("heads2.png");
  
  
  maxDistance = dist(width/2, height/2, width, height);
  distances = new float[width][height];
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      float distance = dist(width/2, height/2, x, y);
      distances[x][y] = distance/maxDistance * 255;
    }
  }
  spacer = 20;
  
//  coswave = new float[width];
//  for (int i = 0; i < width; i+=10) {
//    float amount = map(i, 0, width, 0, PI);
//    coswave[i] = abs(cos(amount));
//  }
  
}

void draw() {
  
  for (int y = 10; y < height; y += spacer) {
    for (int x = 10; x < width; x += spacer) {
      noStroke();
      fill(redColor.hue(), redColor.saturation(), redColor.brightness());
      ellipse(x + spacer/2, y + spacer/2, 7, 3);
    }
  }
  
  for (int n = 20; n < height; n += spacer) {
    for (int o = 20; o < width; o += random(1,10)) {
      noStroke();
      fill(greenColor.hue(), greenColor.saturation(), greenColor.brightness());
      ellipse(n + spacer/2+200, o + spacer/2, 3, 7);
    }
  }
  
  for (int p = 30; p < height; p += spacer) {
    for (int q = 30; q < width; q += spacer) {
      noStroke();
      fill(magentaColor.hue(), magentaColor.saturation(), magentaColor.brightness());
      ellipse(p + spacer/2, q + spacer/2, 3, 3);
      
    }
  }
  
  for (int r = 40; r < height; r += spacer) {
    for (int s = 40; s < width; s += spacer) {
      noStroke();
      fill(yellowColor.hue(), yellowColor.saturation(), yellowColor.brightness());
      ellipse(r + spacer/2+270, s + spacer/2, 3, 3);
      
    }
  }
  
 


  

  
//image(head, 0, 0, width, height);
//  
//   noFill();
//  int y1 = 0;
//  int y2 = height/2;
//
//y1 = y2;
//y2 = y1 + y1;
//for (int i = 0; i < width; i+=100) {
//strokeWeight(1);
//stroke(0);
//ellipse(i, y1, i, y2);
//} 
  endRecord();
   

}





