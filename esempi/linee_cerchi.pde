// crea una serie di cerchi e una di quadrati

size(400, 100);

for (int x=0; x<width; x= x + 35) {
  ellipse(x,30, 20, 20);
  rect(x,60, 20, 20);
}
