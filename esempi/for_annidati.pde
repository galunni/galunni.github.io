// usa due cicli for annidati

size(255, 200);

for (int x=0; x<width; x+=5) {
  for(int y=0; y<height; y+=5){
  stroke(x,y,0);
  point(x,y);
  }
}
