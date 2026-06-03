 void game() {
  background(65, 85, 65);
  
  fill(255);
  textSize(24);
  text("Score: " + score, 670, 30);
  text("Lives: " + lives, 670, 60);
  
  strokeWeight(3);
  fill(255, 200, 100);
  ellipse(x, y, 100, 100);
  
  stroke(0);
  fill(150, 150, 255);
  circle(X, Y, 100);
  fill(0);
  textSize(16);
  text("PAUSE", X, Y);
  
  x += vx;
  y += vy;
  
  if (x - 50 < 0) {
  x = 50; vx = -vx; 
  }
  
  if (x + 50 > width) { 
  x = width - 50; 
  vx = -vx; 
  }
  
  if (y - 50 < 0) {
  y = 50; 
  vy = -vy; 
  }
  
  if (y + 50 > height) { 
  y = height - 50; 
  vy = -vy; 
  }
}

void gameClicks() {
  float Player = dist(mouseX, mouseY, x, y);
  float Pause = dist(mouseX, mouseY, X, Y);
  
  if (Pause < 50) {               
    mode = PAUSE;
  } else if (Player < 50) {        
    score++;
    vx += random(-0.5, 0.5);
    vy += random(-0.5, 0.5);
  } else {
    lives--;
    if (lives <= 0) {
      mode = GAMEOVER;
    } else {
      x = width/2;
      y = height/2;
      vx = random(-5, 5);
      vy = random(-5, 5);
    }
  }
}
