class Robot {
  //Atributos
  PImage move;
  float speedx = 3;
  float speedy;
  float gravity = 0.5;
  float roof = -7800;
  float pos_x, pos2_x;
  float pos_y, pos2_y;
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
    pos2_x = pos_x+width/2;
    pos2_y = pos_y+400;
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
  void moverse() {
    //Posiciones reales del jugador (las que se muestran en pantalla)
    pos2_x = pos_x+width/2;
    pos2_y = pos_y+400;

    if (keyPressed && keyCode ==UP && pos_y > 0) {
      speedy = -10;
    }
    pos_y += speedy;
    speedy += gravity;

    if (level.objetoAbajo == true && speedy >= 0) {
      speedy = 0;
    }
    if (level.objetoArriba == true && speedy < 0) {
      speedy = 0;
    }
    if (level.objetoIzquierda == true ) {
      speedx = 0;
    }
    if (level.objetoDerecha == true ) {
      speedx = 0;
    }
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
    } else if (right && up) { //mover el robot SOLO hacia la derecha  
      pos_x += 5* speedx;  
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotUpRight.draw();
      popMatrix();
    } else if (left && up) { //mover el robot SOLO hacia la derecha  
      pos_x -= 5* speedx;
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotUpLeft.draw();
      popMatrix();
    } else if (up) {
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotUpRight.draw();
      popMatrix();
    } else {
      pushMatrix();
      translate(width/2, 400);
      translate(pos_x, pos_y);
      robotQuiet.draw();
      popMatrix();
    }
  }
}
