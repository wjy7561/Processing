
int INTRO = 0;
int GAME = 1;
int GAMEOVER = 2;
int PAUSE = 3;

int mode;          
float x, y;        
float vx, vy;      
int score;         
int lives;        
int X = 100;  
int Y = 100;  
float d;
float Pause;
float Player;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  mode = INTRO;
  
  
  


}



void initGame() {
  x = width/2;
  y = height/2;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }
}
