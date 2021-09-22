PImage img;

void setup(){
  size(500,500);
  img = loadImage("image/images.jpg");
}

void draw(){
  background(0,0,0);
 
  for(int i = 0; i <20; i++){
      image(img,i*20,0,80,80);
  }
}
