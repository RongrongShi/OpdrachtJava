int nummerEen= 0;
int nummerTwee= 1;
int plus = 1;
println(nummerEen);


for(int i = 0; i < 10; i++){
  println(plus);
  plus =nummerEen + nummerTwee;
  nummerEen = nummerTwee;
  nummerTwee = plus;
}
