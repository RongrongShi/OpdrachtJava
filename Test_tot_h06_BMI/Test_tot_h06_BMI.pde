float gewicht = 52.4;
float lengte = 1.65;
int leeftijd = 18;
float BMI = 0;

BMI = gewicht/(lengte*lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;
println(BMI);

size(800,500);
background(255,255,255);

line(335, 320, 335, 200);
line(260,220,330,220);
line(410,220,270,220);

fill(0,0,0);
rect(100,200,100,45);
rect(280,360,90,45);
rect(460,200,100,45);

fill(255,255,255);
text("Gewicht: " + gewicht + "KG",105,225);
text("Leeftijd" + leeftijd + " jaar", 285,385);
text("Lengte" + lengte + " meter", 465,225);

fill(0,0,0);
rect(300,200,70,40);
fill(255,255,255);
textSize(15);
text("BMI: " + BMI ,305,225);
    
if(leeftijd< 70){
  if(BMI < 18.5){
  println("Ondergewicht");
  }else if(BMI >18.5){
    println("Gezond gewicht");
  }else if (BMI > 25);
  println("Overgewicht");
}else if(BMI > 30){
  println("Obesitas");
  } 

    
  

    
    
