import controlP5.*;
import processing.sound.*;

ControlP5 cp;
SoundFile file;
SoundFile file1;
SoundFile file2;

Button knop1;
Button knop2;
Button knop3;

void setup(){
  size(300,200);
  background(0);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
  knop2 = cp.addButton("Knop2");
  knop3 = cp.addButton("Knop3");

  
  knop1.setCaptionLabel("H");
  knop2.setCaptionLabel("O");
  knop3.setCaptionLabel("i");
  
  
  file = new SoundFile(this,"sound/pig.mp3");
  file1 = new SoundFile(this,"sound/dog.mp3");
  file2 = new SoundFile(this,"sound/wolf.mp3");
}


void draw(){

}

void Knop1(){
  file.play();
}

void Knop2(){
  file1.play();
}

void Knop3(){
  file2.play();
}
    
    
