class Robot{
PImage move;
float x;
float y;
float speed = 3;
float floor = 550;
float salto = 25;

Robot(float posx, float posy){
  x = posx;
  y = posy;
}
void mostrar(){
  robot = loadImage("robot.png");
}
void controles(){
  if(keyPressed){
    switch(keyCode){
      case RIGHT:
      x+= 10* speed;
      move = loadImage("robot movement.png");
      break;
      case LEFT:
      x-= 10 * speed;
      break;
    }
  }
}
}
