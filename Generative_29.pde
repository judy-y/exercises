/*-----------Processing小站------------------- */ //<>//
/*
 * https://shop145877269.taobao.com （Processing小站）
 * 所有资源仅供参考与学习使用，如有侵权请私信删除
 * .
 */
int fCount = 220;
int fDiv = 5;

float starting = 24.0;
float spread = 6.0;

void setup() {
  size(640, 640);
  //smooth(8);
  frameRate(30);  

  strokeWeight(2);
  noFill();
}

float easeInExpo(float t, float b, float c, float d) {
  return c * pow( 2, 10 * (t/d - 1) ) + b;
}

void draw() {
  if (frameCount > fCount) {
    frameCount = 0;
    noLoop();
  }
  //println(frameCount);

  background(#2b2b2b);

  // first 100 frames out

  // next 200 frames in
  float step;
  if (frameCount < 40) 
    step = easeInExpo(frameCount, 0, 30, 40);
  else
    step = 20 - easeInExpo(frameCount, 0, 30, 180);
  println(step);

  float rad0 = starting * step/2.0;
  for (int n = 0; n < 3; n++) {
    pushMatrix();

    translate(width/2.0, height/2.0+20);
    rotate(radians(-90*n));
    translate(120.0, 0);

    for (int i = 0; i < 8; i++) {
      float rad = rad0 + i * step * spread;
      float opa = 255.0 - map(rad, 0, width, 0, 255);
      stroke(#eeeeee, opa);
      ellipse(0, 0, rad, rad);
    }

    popMatrix();
  }
}

void mousePressed() {
    saveFrame("image-###.jpg");
}
