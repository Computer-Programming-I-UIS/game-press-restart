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
    robot = new Sprite(app, fileName, 2, 3, 1);
    robot.setFrameSequence(0, 4, 0.4);
  }

  //Metodos
  void mostrar() {
    move = loadImage("robot.png");
  }
  void controles() {
    if (keyPressed) {
      switch(keyCode) {
      case RIGHT:
        pos_x += 10* speed;
        robot = new Sprite(app, "robot movement right.png", 2, 3, 1);
        robot.setFrameSequence(0, 1, 0.4);
        break;
      case LEFT:
        pos_x -= 10 * speed;
        robot = new Sprite(app, "robot movement left.png", 2, 3, 1);
        robot.setFrameSequence(0, 1, 0.4);
        break;
      }
    }
  }

  void mover() {
    
    float elapsedTime = (float) sw.getElapsedTime();
    S4P.updateSprites(elapsedTime);
    pushMatrix();
    translate(width/2, height/2);
    translate(pos_x, pos_y);
    robot.draw();
    popMatrix();
    }
  }
