import ddf.minim.*;
Minim gunshot;
Minim background;
Minim gunReload;
AudioSample shot;
AudioPlayer rain;
AudioSample reload;
boolean startGame = false;
PFont font;
int ammoCounter = 4;
int killCounter = 0;
boolean gameStarted = true;
boolean allowedClick = true;
boolean reloadStatus = false;
int textFlash = 12;
boolean flashOn;
int seconds;
int startTime = 60;
int countdown;

void setup() {
  gunshot = new Minim(this);
  shot = gunshot.loadSample("gunshot.wav");
  background = new Minim(this);
  rain = background.loadFile("backgroundNoise.wav");
  rain.play();
  gunReload = new Minim(this);
  reload = gunReload.loadSample("gunReload.aiff");
  size(1200, 600);
  noCursor();
  font = loadFont("Consolas-Bold-48.vlw");
  textFont(font);
  textAlign(CENTER, CENTER);
  frameRate(24);
}

void draw() {
  scene();
  targets();
  stroke(40); // scope edge colour
  scope();
  bar();
  seconds = frameCount/24;
  countdown = startTime - seconds;
  text("time left: " + countdown, width/2, height-25);
  if (countdown == 0) {
    frameRate(0);
    textSize(50);
    fill(255, 30, 30);
    text("game over", width/2, height/2);
    fill(255);
    textSize(40);
    text("your score: " + killCounter, width/2, (height/2) + 50);
  }
  if (frameCount % textFlash == 0) flashOn = !flashOn;
  if (reloadStatus == true && flashOn) {
    fill(255, 0, 0);
    textSize(30);
    text("press r to reload", width/2, height/2);
  }
}

void bar() {
  fill(70);
  noStroke();
  rect(0, height-50, width, 50);
  fill(255);
  textSize(30);
  text("kills: " + killCounter, 100, height-25);
  text("ammo: " + str(ammoCounter) + "/--", width-100, height-25);
}

void mouseReleased() {
  if (gameStarted == true && ammoCounter > 0) {
    shot.trigger();
    fill(#E7FF50);
    rect(0,0,width,height);
    allowedClick = true;
    ammoCounter = ammoCounter - 1;
    reloadStatus = false;
  }
  if (gameStarted == true && ammoCounter == 0) {
    allowedClick = false;
    textSize(30);
    fill(255, 30, 30);
    reloadStatus = true;
  }
  if (reloadStatus == false && dist(mouseX, mouseY, PosX, PosY) <= 20) {
    shot.trigger();
    fill(#E7FF50);
    rect(0,0,width,height);
    fill(0);
    ellipse(PosX, PosY, 40, 40);
    killCounter = killCounter + 1;
    randomPos = int(random(10));
  }
}

void keyReleased() {
  if (key == 'r' || key == 'R') {
    reload.trigger();
    ammoCounter = 4;
    reloadStatus = false;
  }
}
