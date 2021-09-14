void setup(){
size(250,250);
}

void draw(){
background(255,255,255);

int xWaarde = 20;
int yWaarde = 20;

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    if((i+j)%2 == 0){
      fill(255,99,71);
    } else {
      fill(139,0,0);
    }
    
    rect(xWaarde, yWaarde, 15,10);
  yWaarde += 10;
}
yWaarde = 20;
xWaarde += 15;
}
}
