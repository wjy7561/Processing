int y;
int x;

void setup(){
  size(600,600);
  y=0;
  x=1;
  strokeWeight(7);
}
void mousePressed(){
  println(mouseX,mouseY);
}

void draw(){
  background(255);
  translate(300,300);
  fill(0);
  ellipse(0,0,200,200);
  ellipse(100,100,50,50);
  ellipse(-100,100,50,50);
  fill(255);
  ellipse(0,0,150,120);
  fill(0);
  ellipse(y,0,50,110);
  y=y+x;
  if (y>50){
    x=-1;
  }
  if (y<-50){
    x=1;
  }
  fill(255,0,0);
  triangle(-88,-50,-93,-118,-44,-91);
  triangle(88,-50,93,-118,44,-91);
  fill(0);
  beginShape();
  vertex(-105,-11);
  vertex(-184,-104);
  vertex(-268,-33);
  vertex(-185,-53);
  endShape(CLOSE);
  quad(105,-11,184,-104,268,-33,185,-53);
  
}
 
 
  
  
