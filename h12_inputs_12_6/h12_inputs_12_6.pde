int x = 20;
int y = 20;

void setup(){
  size(400,300);
}

void draw() {
background(255,255,255);
if(keyPressed && (key == CODED)){
  if(keyCode == LEFT){
    x-=10;
  }else if(keyCode == RIGHT){
    x+=10;
  }else if(keyCode == UP){
    y-=10;
  }else if(keyCode == DOWN){
    y+=10;
  }
}

rect(x, y, 50, 50);
saveFrame("Shape.png");
}
