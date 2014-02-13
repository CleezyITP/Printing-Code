void setup() {
  smooth();
  size(1000, 2000); 
  stroke(255);
  noFill();
  translate(150, 50);
  background(0);
  beginShape();

//  for (int i = 0; i < width/3; i+=1) {
//    vertex(30+i, 20);
//    bezierVertex(25, 0, 1*i-50, 230, 2*i+50, 120);
//    bezierVertex(2*i+100, 245, 1*i-125, 460, 2*i+100, 445);
//    bezierVertex(2*i+100, 245, 1*i-125, 460, 2*i+100, 445);
//    //bezierVertex(2*i+200, 890, 1*i-250, 920, 2*i+200, 490);
//    //bezierVertex(50, 0, 1*i-100, 460, 2*i+100, 245);
//  }
//  endShape();
  
  beginShape();

  for (int j = 0; j < width/3; j+=30) {
    vertex(30, 600);
    bezierVertex(25, 50, 1*j-50, 230, 2*j+50, 120);
    bezierVertex(2*j+100, 245, 1*j-125, 460, 2*j+100, 845);
    bezierVertex(2*j+100, 245, 1*j-125, 460, 2*j+100, 845);
    //bezierVertex(2*i+200, 890, 1*i-250, 920, 2*i+200, 490);
    //bezierVertex(50, 0, 1*i-100, 460, 2*i+100, 245);
  }
  endShape();
}

