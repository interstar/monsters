class Creature {
  ArrayList parts;
  
  void addPart(String label, float no_sides, float x_rad, float y_rad, PVector centre, float a_start, color stroke_colour, color fill_colour) { 
     Part p = new Part(label, no_sides, x_rad,  y_rad, centre, a_start, stroke_colour, fill_colour);
     parts.add(p);
  }

  
  Creature() {
    parts = new ArrayList();

    this.addPart("body",random(5)+3,50,100, new PVector(0,150), PI/4, r_colour(), r_colour());
    this.addPart("left leg",3, 30, 110, new PVector(-30,270), -PI/2, r_colour(), r_colour());
    this.addPart("right_leg",3, 30, 110, new PVector(30,270), -PI/2, r_colour(), r_colour());
    this.addPart("left arm",3, -70,20, new PVector(-50,130), 0.0, r_colour(), r_colour());
    this.addPart("right arm",3, 70,20, new PVector(50,130), 0.0, r_colour(), r_colour());

    float face_width=random(60)+70;
    float head_width=face_width+10+random(10);
    
    if (random(100)<10) {
      this.addPart("head",random(15)+2, head_width, 100, new PVector(0,-20), PI/2, r_colour(), r_colour());
    }
    
    if (random(100)<10) {
      float hh = random(25)+10;
      float hw = random(5)+5;
      this.addPart("left horn", random(3)+3, hw, hh, new PVector(-head_width/2,-70), PI/2, r_colour(), r_colour());
      this.addPart("right horn", random(3)+3, hw, hh, new PVector(head_width/2,-70), PI/2, r_colour(), r_colour());
    }

    this.addPart("face",random(15)+2, random(60)+70, 100, new PVector(0,0), PI/2, r_colour(), r_colour());
    this.addPart("left eye",random(5)+3, 30, 20, new PVector(-35,-30), PI/2, r_colour(), r_colour());
    this.addPart("right eye",random(5)+3, 30, 20, new PVector(35,-30), PI/2, r_colour(), r_colour());

    this.addPart("nose",random(3)+2, 15, 25, new PVector(0,10), -PI/2, r_colour(), r_colour());

    if (random(100)<40) {
      this.addPart("left pupil",random(2)+2, 2, random(5), new PVector(-35,-30), PI/2, r_colour(), r_colour());
      this.addPart("right pupil",random(2)+2, 2, random(5), new PVector(35,-30), PI/2, r_colour(), r_colour());
    }

    this.addPart("mouth",random(5)+5, random(20)+20, random(15)+5, new PVector(0,60), 0.0, r_colour(), r_colour());

    if (random(100)<10) {
      float fh = random(13)+7;
      float fw = random(2)+2;
      color fc = r_colour();

      this.addPart("left fang",random(2)+2, random(3)+2, random(5)+3, new PVector(-13,63), PI/2, fc, color(255));
      this.addPart("right fang",random(2)+2, random(3)+2, random(5)+3, new PVector(13,63), PI/2, fc, color(255));
      
      if (random(100)<10) {
        this.addPart("mid fang",random(2)+2, random(3)+2, random(5)+3, new PVector(0,63), PI/2, fc, color(255));

      }
    }
        
    
  }
  
  void draw() {
    for (int i=0;i<parts.size();i++) {
      ((Part)parts.get(i)).draw();
    }
  }
}

