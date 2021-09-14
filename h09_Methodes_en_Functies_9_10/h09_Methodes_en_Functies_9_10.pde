void setup(){
  size(700,700);
}

void draw(){
  background(255,255,255);

  int xWaarde = 100;
  int yWaarde = 450;
  int b = 150;
  int c =450;

for(int i = 0 ; i < 3 ; i++){
  for (int j = 0; j < 3; j++){
      fill(139,69,19);
  rect(xWaarde,yWaarde,100,450);
  fill(0,100,0);
  ellipse(b,c,280,280);
    xWaarde +=30;
    b += 30;
  }
  yWaarde = 450;
  xWaarde += 29;
  c = 450;
  b += 30;
}
}
