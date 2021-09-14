boolean gevonden;
String[] naam = {"Jack", "Jan","Sam"};

void setup(){
  gevonden = false;
  for(int i = 0; i < naam.length; i++){
    if(naam[i] == "Jan"){
    gevonden = true;
    }
    
  }   
  println(gevonden);

}
