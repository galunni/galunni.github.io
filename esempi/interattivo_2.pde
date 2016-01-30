// disegna quadrati di colore diverso a seconda della posizione sullo schermo

void setup(){
    size(200,200);
    background(245);
}
    
void draw(){
    if(mouseX > height/2){
      fill(50);
    }
    else{
      fill(200);
    }
    rect(mouseX, mouseY, 20, 20);
    
    if(mousePressed){
      background(245);
    }
}
