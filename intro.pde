void intro() {
  background(255);
  fill(0);
  textSize(50);
  text("CLICKER GAME", width/2, height/2 - 50);
  textSize(30);
  text("Click 'start' to start", width/2, height/2 + 50);
  

  stroke(0);
  fill(200);
  rect(width/2, height - 100, 200, 60);
  fill(0);
  text("START", width/2, height - 100);
}
void introClicks() {

  mode = GAME;
  Game();   
}
