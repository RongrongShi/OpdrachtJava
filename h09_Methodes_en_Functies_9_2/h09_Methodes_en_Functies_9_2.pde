int nummerA=10;

void setup(){
  mijnMethode( nummerA, 100);
  mijnMethode( nummerA, 15);
}
 void draw(){
   //background(0,0,0);
 }
 
 void mijnMethode(int getal, int getalTwee){
   int rekenSom = getal + getalTwee;
   println(" Som is " + " " +getal + " " + getalTwee + " " +rekenSom);
 }
