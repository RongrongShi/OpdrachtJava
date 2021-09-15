int value= 0;
void setup(){
  size(800,800);
}

void draw(){
  background(255,255,255);
}

void mousePressed(){
  for(int i = 0 ; i < 2; i++){
   for(int j = 0 ; j < 2; j++){
     fill (0,0,0);
     rect(mouseX,mouseY,mouseX,mouseY);
   }
  }
}
