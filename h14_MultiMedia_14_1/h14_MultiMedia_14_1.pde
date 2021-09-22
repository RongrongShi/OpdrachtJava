PImage img;
PImage img2;
PImage img3;

void setup(){
  size(800,1000);
  img = loadImage("images/Een.jpg");
  img2 = loadImage("images/Twee.jpg");
  img3 = loadImage("images/Drie.jpg");
}

void draw(){
  image(img,10,10);
  image(img2,10,10);
  image(img3,10,210);
}
