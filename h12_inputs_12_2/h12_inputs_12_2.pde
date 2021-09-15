int value = 0;
int startTime;

void setup()
{
  size(100,100);  
  startTime = millis();
}

void draw(){
  int currenTime = millis();
  if(currenTime > startTime + 10){
    background(0,0,0);
  }
}
void mouseReleased(){
  if(mousePressed = true);
  value++;
  print(value);
}
