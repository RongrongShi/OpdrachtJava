import processing.sound.*;

SoundFile file;

void setup(){
  background(0);
  size(400,400);
  file = new SoundFile(this,"sound/arcade.wav");
  file.play();
}    
void draw(){
}
