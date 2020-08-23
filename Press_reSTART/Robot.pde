class Robot {
  //Atributos
  PImage move;
  float pos_x;
  float pos_y;
  float speed = 3;
  float floor = 550;
  float salto = 25;

  Sprite robotLeft;
  Sprite robotRight;
  Sprite robotQuiet;
  StopWatch sw;

  //Constructor
  Robot(float posx, float posy, String fileNameQuiet, String fileNameRight, String fileNameLeft, PApplet app) {
    pos_x = posx;
    pos_y = posy;
    sw = new StopWatch();
    robotLeft = new Sprite(app, fileNameLeft, 3, 1, 1);
    robotRight = new Sprite(app, fileNameRight, 3, 1, 1);
    robotQuiet = new Sprite(app, fileNameQuiet, 5, 1, 1);
    robotLeft.setFrameSequence(0, 4, 0.2);
    robotRight.setFrameSequence(0, 4, 0.2);
    robotQuiet.setFrameSequence(0, 4, 0.2);
  }


  //Metodos
  void mostrar() {
    move = loadImage("robot.png");
  }
  void controles() {

    float elapsedTime = (float) sw.getElapsedTime();
    S4P.updateSprites(elapsedTime);

    if (keyPressed) {
      switch(keyCode) {
      case RIGHT:
        pos_x += 5* speed;
        pushMatrix();
        translate(width/2, 400);
        translate(pos_x, pos_y);
        robotRight.draw();
        popMatrix();
        break;
      case LEFT:
        pos_x -= 5 * speed;
        pushMatrix();
        translate(width/2, 400);
        translate(pos_x, pos_y);
        robotLeft.draw();
        popMatrix();
        break;
      default:
        break;
      }
    } else {      
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotQuiet.draw();
      popMatrix();
    }
  }
}
