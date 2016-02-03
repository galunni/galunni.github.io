void setup() {
  size(600, 600);
  background(220);
  frameRate(10);
  smooth();
}

void draw() { 
  if (mouseX > 10 && mouseY > 10 
  && mouseX < (width-10) && mouseY < (height-10))
  {
    if (keyPressed == true) {
      superFiore(mouseX, mouseY);
    } else {
      fiore(mouseX, mouseY);
    }

    if (mousePressed) {
      background(245);
    }
  }
}

void fiore(int x, int y) {
  x=x + int(random(-20, 20));
  y=y + int(random(-20, 20));
  stroke(0, 80);
  strokeWeight(1);
  fill(255, 80);
  ellipse(x, y, 9, 9);
  fill(224, 224, 90);
  ellipse(x-9, y, 7, 7);
  ellipse(x+9, y, 7, 7);
  ellipse(x, y-9, 7, 7);
  ellipse(x, y+9, 7, 7);
}

void superFiore(int x, int y) {
  fiore(x, y);
  stroke(0, 0, 255, 30);
  strokeWeight(5);
  for (int i=0; i<10; i++) {
    point(x+int(random(-40, 40)), y+int(random(-40, 40)));
  }
}
