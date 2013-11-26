class Part {
  String label;
  float x_rad, y_rad;
  float no_sides;
  PVector centre;
  float a_start;
  color stroke_colour;
  color fill_colour;
  
  Part(String label, float no_sides, float x_rad, float y_rad, PVector centre, float a_start, color stroke_colour, color fill_colour) {
    this.label = label;
    this.no_sides = no_sides;
    this.x_rad = x_rad;
    this.y_rad = y_rad;
    this.centre = centre;
    this.a_start = a_start;
    this.stroke_colour = stroke_colour;
    this.fill_colour = fill_colour;
  }
  
  void draw() {
    stroke(stroke_colour);
    fill(fill_colour);

    beginShape();
    for (float a=a_start;a<=(2*PI)+a_start;a=a+(2*PI/no_sides)) {
      vertex(cos(a)*x_rad+centre.x,sin(a)*y_rad+centre.y);
    }
    endShape(CLOSE);
  }
  
}

