void setup(){
  size(800,800);
}

void draw(){
}

void mousePressed(){

     line(mouseX,mouseY,300,100);
     line(mouseX,mouseY,mouseX,100);
     line(mouseY,mouseX,300,100);
     line(mouseY,mouseX,mouseX,100);

}
