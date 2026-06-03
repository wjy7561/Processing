void pause() {
  background(77, 83, 137);
  fill(255);
  textSize(50);
  text("PAUSED", width/2, height/2 - 50);
  textSize(25);
  text("Click to resume", width/2, height/2 + 50);

  fill(200, 200, 255);
  
}

void pauseClicks() {
  float d = dist(mouseX, mouseY, width/2, height/2);
  if (d < 100) {  
    mode = GAME;
  }
}
