// cambia il colore delle linee al variare del tempo (frameCount)

void setup(){
    size(200,200);
    background(245);
    frameRate(20);
}
    
void draw(){
    if(frameCount%3 == 1){
      stroke(50);
    }
    else if(frameCount%3 == 2){
      stroke(200);
    }
    else{
      stroke(150);
    }
    
    line(0, 0, mouseX, mouseY);
    
    if(mousePressed){
      background(245);
    }
}
