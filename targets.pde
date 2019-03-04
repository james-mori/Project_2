float randomPos;
int PosX;
int PosY;
float randomR;
float randomG;
float randomB;

void targets() {
  if (keyPressed == true && key == ' ' && startGame == false) {
    randomPos = int(random(10));
    startGame = true;
  }
  if (randomPos == 0) {
    PosX = 80;
    PosY = 150;
  }
  if (randomPos == 1) {
    PosX = 180;
    PosY = 250;
  }
  if (randomPos == 2) {
    PosX = 270;
    PosY = 350;
  }
  if (randomPos == 3) {
    PosX = 705;
    PosY = 190;
  }
  if (randomPos == 4) {
    PosX = 505;
    PosY = 290;
  }
  if (randomPos == 5) {
    PosX = 685;
    PosY = 390;
  }
  if (randomPos == 6) {
    PosX = 1100;
    PosY = 120;
  }
  if (randomPos == 7) {
    PosX = 935;
    PosY = 200;
  }
  if (randomPos == 8) {
    PosX = 1000;
    PosY = 280;
  }
  if (randomPos == 9) {
    PosX = 985;
    PosY = 360;
  }
  fill(255, 0, 100);
  ellipse(PosX, PosY, 40, 40);
  fill(0);
  ellipse(PosX+10, PosY-5, 5, 5);
  ellipse(PosX-10, PosY-5, 5, 5);
  ellipse(PosX, PosY+10, 10, 10);
}
