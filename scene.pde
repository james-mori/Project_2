void scene() {
  background(0);
  fill(10);
  rect(0, 510, width, 40); // street
  fill(40);
  rect(30, 30, 300, 480); // left building - width 30-330, height 30-510
  rect(450, 110, 400, 400); // middle building - width 450-850, height 110-510
  rect(860, 50, 320, 460); // right building - width 860-1180, height 50-510
  fill(255, 255, 0);

  for (int row=0; row<3; row = row + 1) // central building windows
  {
    for (int col=0; col<4; col = col + 1)
    {
      rect(485 + col*90, 130 + row*100, 60, 80);
    }
  }
  for (int row=0; row<4; row = row + 1) // right building windows
  {
    rect(895, 80 + row*80, 250, 60);
  }
  for (int row=0; row<3; row = row + 1) // left building windows
  {
    for (int col=0; col<3; col = col + 1)
    {
      rect(60 + col*90, 90 + row*100, 60, 80);
    }
  }
  fill(210, 30, 30);
  rect(400, 420, 50, 10); // side middle building
  fill(70);
  rect(140, 420, 80, 90); // door left building
  rect(970, 410, 100, 100); // doors for right building
  line(1020, 410, 1020, 510);
}
