int mijnGetal;

void setup(){
  mijnGetal = mijnMethode( 20, 100);
  println(mijnGetal);
}
 void draw(){
  
 }
 
 int mijnMethode(int a, int b){
   int totaal = (a+b)/2;
   return totaal;
 }
