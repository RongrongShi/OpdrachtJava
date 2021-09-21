//De lengte van de slang
int snake_lengte = 2;
//MAXIMAAL
int snake_lengte_max = 500;
//De positie van de kop van de slang
int snake_head_x;
int snake_head_y;
//body
int [] x = new int [snake_lengte_max];
int [] y = new int [snake_lengte_max];
//raster
int grid = 20;
//looprichting
int snake_direction = 'r';
int snake_direction_temp;

//snelheid
int speed = 5;
int time_saved;
int time_passed;
int time_interval;
// time_saved = mills();
// time_interval= 1000/speed;
// time_passed = millis() - time_ saved;

//eten
int food_x;
int food_y;
boolean food_key = true;

//cijfer
int score = snake_lengte - 2;

//pauze
int game_pause = 0;
//game over of niet
boolean game_over = false;

void setup(){
  size(600,600);
  frameRate(8);
  time_saved = millis();
  
}

void draw(){

  time_interval = 1000/speed;
  time_passed = millis() - time_saved;
  
  
  if(snake_direction != 'p'){
     background(mouseX,mouseY,155);
    switch(snake_direction){
      case 'l':
      snake_head_x -= grid;
      break;
      case 'r':
      snake_head_x += grid;
      break;
      case 'd':
      snake_head_y += grid;
      break;
      case 'u':
      snake_head_y -= grid;
      break;
    }
      food_new(width,height);
      
      if(snake_head_x == food_x && snake_head_y == food_y){
        food_key = true;
        snake_lengte++;
      }

   
      for(int i = snake_lengte - 1; i > 0; i--){
        x[i] = x[i-1];
        y[i] = y[i-1];
      }
      
      x[0] = snake_head_x;                         // de positie van nieuwe kop
      y[0] = snake_head_y;
  
  stroke(0);
  strokeWeight(3);
  fill(#27342b);
  rect(x[0],y[0],grid,grid);
  
  fill(#005831);
  for(int i = 1; i < snake_lengte; i ++){
    rect (x[i], y[i], grid,grid);
  }

  }
  if(game_over){
  background(0);
  score = snake_lengte - 2;
  textAlign(CENTER);
  fill(255);
  text(snake_lengte - 2 + "/" + score ,0,0);
  
  textSize(30);
  text("Score : " + score,250,100);
  text("Game over , Press 'R' to restart.",250,150);
  }
  

if(snake_die()){
 return; 
}
if(game_again() ){
    return;
  }



time_saved = millis();
  }



void keyPressed(){
  if(key == 'p'){
    game_pause++;
    if( game_pause%2 == 1){
      snake_direction_temp = snake_direction;
      snake_direction = 'p';
    }else{
      snake_direction = snake_direction_temp;
    }
    
  }
  if(snake_direction != 'p' && key == CODED){
    switch(keyCode){
      case LEFT:
      snake_direction = 'l';
      break;
      case RIGHT:
      snake_direction = 'r';
      break;
      case DOWN:
      snake_direction = 'd';
      break;
      case UP:
      snake_direction = 'u';
      break;
    }
  }
}
  

void food_new(int maxWidth, int maxHeight){
  fill(#6b473c);
  stroke(250);
  strokeWeight(1);
  if(food_key){
    food_x = int ( random(0, maxWidth)/grid) * grid ;
    food_y = int ( random(0,maxHeight)/grid) * grid;
  }
  rect(food_x,food_y,grid,grid);
  food_key = false;
}

boolean snake_die(){
  if(snake_lengte > 2){
    for(int i= 1 ; i < snake_lengte; i++){
      if(snake_head_x == x[i] && snake_head_y == y[i]){
        show_gameover();
        return true;
      }
    }
    if(snake_head_x <0 || snake_head_y < 0 || snake_head_x>width|| snake_head_y > height){
    show_gameover();
  }
 }
  return false;
}
void show_gameover(){
  game_over = true;
  }
  
  
boolean game_again(){
  if(game_over && keyPressed &&(key == 'r')){
    snake_start();
  }
  return game_over;
}

void snake_start(){
  background(mouseX,mouseY,155);
  snake_lengte = 2;
  game_over= false;
  snake_head_x=0;
  snake_head_y=0;
  snake_direction = 'r';
  speed= 5;
}
