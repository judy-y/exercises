float c=0;

void setup() {
  size(1000, 1000);
  strokeWeight(2);
  fill(100, 30);
  stroke(255);
}

void draw() {
  background(5);
  translate(500, 500);
    for (int i =0; i < 10; i ++){
    rotate(cos(c*0.001)*10);
      scale(0.9);
      ellipse(0, 0, 500-cos(c*0.008)*120, 500+sin(c*0.008)*120);
  } 
  c++;
}
