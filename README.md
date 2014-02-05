//Printing-Code Assignment 1
=============

//Printing Code

//Assignment A

import processing.pdf.*;

// Set these variables to the print size you want (in inches)
// The resulting PDF will be this aspect ratio
float print_width = 8.5;
float print_height = 11;

// This will help make the sketch window bigger
float make_bigger = 40;


/*  Setup
_________________________________________________________________ */

void setup()
{
  size(round(print_width * make_bigger), round(print_height * make_bigger));

  beginRecord(PDF, "grab.pdf"); 
 
  smooth();
  noStroke();
  strokeWeight(4);
  rectMode(CORNER);
  fill(0);
  rect(-10, 0, 800, 255);
  
  noStroke();
  fill(0);
  //strokeWeight(.5);
  ellipseMode(CENTER);
  ellipse(174, 380, 220,215);
//  fill(255);
//  triangle(170, 50,75, 330, 265, 330);
  stroke(0);
  
  fill(255);
  triangle(315, 45,104, 300, 280, 370);
  strokeWeight(random(3));
  line(253, 124, 294,222);
  strokeWeight(random(3));
  line(304, 133, 211,173);
  strokeWeight(random(3));
  line(209, 170, 287,308);
  strokeWeight(random(3));
  line(177, 217, 278,368);
  strokeWeight(random(3));
  line(138, 264, 177,329);
  strokeWeight(random(3));
  line(283, 88, 306,138);
  strokeWeight(random(3));
  line(309, 78, 271,99);
  strokeWeight(random(3));
  line(300, 182, 160,230);
  strokeWeight(random(3));
  line(292, 248, 108,295);
  strokeWeight(random(3));
  line(176, 335, 285,318);
  
  

  
  endRecord();
  
}

void draw()
{
println(mouseX+","+mouseY);
}





