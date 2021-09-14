import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(500,300);
  background(255,255,255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
  
  knop1.setCaptionLabel("Test");
  
  tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(100,100)
                .setText("Hoi,mijn naam is :")
                .setCaptionLabel("Type iets!")
                .setColorLabel(color(186,85,211));
}


void draw(){

}

void Knop1(){
  println( tekstveld1.getText());
}
