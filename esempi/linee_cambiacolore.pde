// crea una serie di linee che cambiano colore

size(255, 200);

for (int x=0; x<width; x++) {
  stroke(x);
  line(x,0, x, height);
}
