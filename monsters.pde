import processing.pdf.*;
import processing.opengl.*;

ArrayList creatures;
int paper_x=2100;
int paper_y=2790;

color r_colour() {
  return color(random(255),random(255),random(255));
  // uncomment for black and white
  //int x = (int)random(255);
  //return color(x,x,x);
}

// true to creat pdf file, false to preview on screen
boolean print_mode = true;

void setup() {
  creatures = new ArrayList();
  for (int i=0;i<8;i++) {
    creatures.add(new Creature());
  }
  
  background(255);
  strokeWeight(4);
  
  if (print_mode) {

    size(paper_x,paper_y);
    noLoop();
    beginRecord(PDF, "monsters.pdf"); 

    int img_no=0;
    float scale_factor = 1.9;
    float x_offset = 1100; //(paper_x/2)*0.8;
    float y_offset = 700; // (paper_y/4)*0.8;
    
    translate(300,430);
    
    for (int row=0; row<4; row++) {
      pushMatrix();
      for (int col=0; col<2; col++) {
        pushMatrix();
        scale(scale_factor);
        rotate(radians(-90));
        ((Creature)creatures.get(img_no)).draw(); 
        popMatrix();
        translate(x_offset,0);
        img_no=img_no+1;
      }
      popMatrix();
      translate(0,y_offset);
    }
    endRecord();
    println("Finished");
    exit();
  
  } else {
    size(900,400);
    smooth();
    background(255);
    strokeWeight(4);

    translate(150,100);
    for (int i=0;i<4;i++) {
      pushMatrix();
      scale(0.8);
      ((Creature)creatures.get(i)).draw();
      popMatrix();
      translate(300,0);
    }
  }

}



void draw() {
   
}
