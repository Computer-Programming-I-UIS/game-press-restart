class Robot {
  //Atributos
  PImage move;
  float pos_x;
  float pos_y;
  float speed = 3;
  float floor = 550;
  float salto = 25;

  Sprite robot;
  StopWatch sw;

  //Constructor
  Robot(float posx, float posy, String fileName, PApplet app) {
    pos_x = posx;
    pos_y = posy;
    sw = new StopWatch();
    robot = new Sprite(app, fileName, 5, 1, 1);
    robot.setFrameSequence(0, 4, 0.2);
  }

  //Metodos
  void mostrar() {
    move = loadImage("robot.png");
  }
  void controles() {

    float elapsedTime = (float) sw.getElapsedTime();
    S4P.updateSprites(elapsedTime);
    pushMatrix();
    translate(width/2, 400);
    translate(pos_x, pos_y);
    robot.draw();
    popMatrix();
    if (keyPressed) {
      switch(keyCode) {
      case RIGHT:
        pos_x += 10* speed;
        robot = new Sprite(app, "robot move right.png", 3, 1, 1);
        robot.setFrameSequence(0, 1, 0.2);
        break;
      case LEFT:
        pos_x -= 10 * speed;
        robot = new Sprite(app, "robot move left.png", 3, 1, 1);
        robot.setFrameSequence(0, 1, 0.2);
        break;
      default:
        break;
      }
    } else {      
      robot = new Sprite(app, "robot.png", 2, 3, 1);
      robot.setFrameSequence(4, 4);
    }
  }
}
