size(1000,1000);
background(255,255,255);

int sizeA = 500;

for(int i = 0; i < 50; i++){
  ellipse(500, 500, sizeA,sizeA);
  sizeA-=10;
}

int sizeC = 150;

for(int i = 0; i < 50; i++){
  ellipse(200 - sizeC/2, 200 - sizeC/2, sizeC,sizeC);
  sizeC-=1;
}
