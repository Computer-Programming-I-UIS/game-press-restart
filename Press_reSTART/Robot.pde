class Robot {
  //Atributos
  PImage move;
  float pos_x;
  float pos_y;
  float speedx = 3;
  float speedy = 4;
  float gravity= 0.4;
  float floor = 550;
  float salto = 25;
  boolean left = false;
  boolean right = false;
  boolean up = false;

  Sprite robotUpLeft;
  Sprite robotLeft;
  Sprite robotDownLeft;
  Sprite robotUpRight;
  Sprite robotRight;
  Sprite robotDownRight;
  Sprite robotQuiet;
  StopWatch sw;

  //Constructor
  Robot(float posx, float posy, String fileNameQuiet, String fileNameRight, String fileNameLeft, String fileNameUpLeft, String fileNameUpRight, String fileNameDownLeft, String fileNameDownRight, PApplet app) {
    pos_x = posx;
    pos_y = posy;
    sw = new StopWatch();
    robotLeft = new Sprite(app, fileNameLeft, 3, 1, 1);
    robotRight = new Sprite(app, fileNameRight, 3, 1, 1);
    robotQuiet = new Sprite(app, fileNameQuiet, 5, 1, 1);
    robotUpLeft = new Sprite(app, fileNameUpLeft, 10, 1, 1);
    robotUpRight = new Sprite(app, fileNameUpRight, 10, 1, 1);
    robotDownLeft = new Sprite(app, fileNameDownLeft, 5, 1, 1);
    robotDownRight = new Sprite(app, fileNameDownRight, 5, 1, 1);


    robotLeft.setFrameSequence(0, 4, 0.2);
    robotRight.setFrameSequence(0, 4, 0.2);
    robotQuiet.setFrameSequence(0, 4, 0.2); 
    robotUpLeft.setFrameSequence(0, 4, 0.1);
    robotUpRight.setFrameSequence(0, 4, 0.1);
  }


  //Metodos
  void mostrar() {
    move = loadImage("robot.png");
  }
  void moverse() {

    float elapsedTime = (float) sw.getElapsedTime();
    S4P.updateSprites(elapsedTime);


    if (right && !up) { //mover el robot SOLO hacia la derecha  
      pos_x += 5* speedx;
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotRight.draw();
      popMatrix();
    } else if (left && !up) { //mover el robot SOLO hacia la derecha  
      pos_x -= 5* speedx;
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotLeft.draw();
      popMatrix();
    } /*else if (right && up) { //mover el robot SOLO hacia la derecha  
      pos_x += 5* speedx;  
      pos_y -= 5* speedy;
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotUpRight.draw();
      popMatrix();
    } else if (left && up) { //mover el robot SOLO hacia la derecha  
      pos_x -= 5* speedx;  
      pos_y -= 5* speedy;
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotUpLeft.draw();
      popMatrix();
    } else if (up) {
      pos_y -= 5* speedy;
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotUpRight.draw();
      popMatrix();
    }*/ else {
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotQuiet.draw();
      popMatrix();
    }
  }
}
