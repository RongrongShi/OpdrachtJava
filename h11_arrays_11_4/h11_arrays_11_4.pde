int[] mijnGetal = new int[10];

void setup(){
  for(int i = 0; i < mijnGetal.length; i++){
    mijnGetal[i] = 2 + i * 10;
  }
  
  for (int i = 0; i < mijnGetal.length; i++){
    println(mijnGetal[i]);
  }
}
