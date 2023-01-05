void setup (){
 size(1000,1000);
}
 void draw (){
   background(199,158,4); 
 for(int i =0;i<width;i++){
   float x=(i+5* frameCount)*TWO_PI/width; 
   float y=height*(1+sin(x));
   noStroke();
   rect(i,0,i,mouseX); 
   fill (199,158,4);
 x=(i-5* frameCount)*TWO_PI/width; 
 y=height*(1+cos(x));
 noStroke();
 rect(i+1,0,i+1,mouseY);
 fill (0,69,107);
 translate(i+10,i+1);
   }
 }
