void gameover() {
  background(98, 26, 0);
  fill(255);
  textSize(48);
  text("GAME OVER", width/2, height/2 - 60);
  textSize(30);
  text("Final Score: " + score, width/2, height/2);
  textSize(24);
  text("Click to return to intro", width/2, height/2 + 80);
}

void gameoverClicks() {
 
  mode = INTRO;
}
