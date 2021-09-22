int x = 0;
int y = 0;
int width = 200;
int height = 200;
PImage img;

void setup(){
  size(200,200);
  img = loadImage("image.jpg");
}

void draw(){
  image(img,x,y,width,height);
}
