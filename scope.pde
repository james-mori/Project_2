void scope() {
  noFill();
  strokeWeight(1500);
  ellipse(mouseX, mouseY, 1300, 1300); // outer circle with large stroke weight
  fill(#0BFF00, 150); // for green scope
  ellipse(mouseX, mouseY, 210, 210); // inner tinted scope
  strokeWeight(2);
  fill(0);
  line(mouseX, mouseY+95, mouseX, mouseY+25);
  line(mouseX-95, mouseY, mouseX-25, mouseY);
  line(mouseX+95, mouseY, mouseX+25, mouseY);
  strokeWeight(0);
  fill(255, 50, 50);
  ellipse(mouseX, mouseY, 3, 3);
}
