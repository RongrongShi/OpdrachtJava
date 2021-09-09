size(300,300);
background(255,255,255);

int sizeC = 150;

for(int i = 0; i < 5; i++){
  ellipse(200 - sizeC/2, 200 - sizeC/2, sizeC,sizeC);
  sizeC-=15;
}
