//color
color red   =#FF0000;
color yellow=#FFEA00;
color green =#00FF26;
color blue  =#0033FF;
color purple=#D000FF;
color black =#000000;
color white =#FCFCFC;
int difficulty;
int sliderX;
int canvatop=150;
float thickness;
int shade;



void setup(){
  background(255);
  size(800,600);
  sliderX=400;  
  thickness=0;
  strokeWeight(0);

  
  
}
void draw(){
  
  //tool
  
  fill(white);
  rect(0,0,800,canvatop);
 

  
  
  //color button
  fill(red);
  circle(50,40,50);
  fill(yellow);
  circle(50,100,50);
  fill(green);
  circle(110,40,50);
  fill(blue);
  circle(110,100,50);
  fill(purple);
  circle(170,40,50);
  fill(black);
  circle(170,100,50);
  //slider
  line(400, 100, 600, 100);
  circle(sliderX, 100, 30);
  if (sliderX < 500) {
        difficulty = 1;
    } else if (sliderX < 500) {
        difficulty = 2;
    } else {
        difficulty = 3;
    }
    
   //control buttons
    textSize(25);
    noFill();
    rect(700,20,50,20);
    rect(700,70,50,20);
    rect(700,120,50,20);
    text("New",700,40);
    text("Save",700,90);
    text("Load",700,140);
    
    
    
    
    
}
void mouseDragged(){
  //slider
  if (mouseX>400 && mouseX<600 && mouseY>100 && mouseY<150){
    sliderX = mouseX;
    sliderX=constrain(mouseX,400,600);
    shade=sliderX;
    thickness=map(sliderX,400,600,0,20);
    strokeWeight(thickness);
  }

  
  
  
  //drawing line
  if(mouseX>0 && mouseX<800 && mouseY>150 && mouseY<800){
  line(pmouseX,pmouseY,mouseX,mouseY);
  
  }



}

void mouseReleased(){
  //drawing line color change
if (dist(50,40,mouseX,mouseY)<25){
    stroke(red);
  }
  if (dist(50,100,mouseX,mouseY)<25){
    stroke(yellow);
  }
  if (dist(110,40,mouseX,mouseY)<25){
    stroke(green);
  }
  if (dist(110,100,mouseX,mouseY)<25){
    stroke(blue);
  }
  if (dist(170,40,mouseX,mouseY)<25){
    stroke(purple);
  }
  if (dist(170,100,mouseX,mouseY)<25){
    stroke(black);
  }
 
  //new,load,save button control
  if (mouseX>700 && mouseX<750 && mouseY>20 && mouseY<40){
   background(255);
  }
  if (mouseX>700 && mouseX<750 && mouseY>120 && mouseY<140){
    selectInput("Pick an image to loda","poenImage");
  }
  if (mouseX>700 && mouseX<750 && mouseY>70 && mouseY<90){
    selectOutput("CHoose a name for your new image file","saveImage");
  }
  
  
  
  
  
}
