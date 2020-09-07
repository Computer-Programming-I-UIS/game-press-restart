class Robot {
  //Atributos
  PImage move;
  float speedx = 3;
  float speedy;
  float gravity;
  float roof = -78;
  float pos_x;
  float pos_y;
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
    if (keyPressed && keyCode ==UP && pos_y > roof) {
      speedy = -10;
      gravity = 0.5;
    }
    pos_y += speedy;
    speedy += gravity;
    text(speedy,700, 600);
    if (pos_y >level.nuevonivel()) {
      speedy = 0;
      gravity = 0;
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
   void verificarObstaculos(int[][] obstaculos, int numElemInt) {
    int cnt = 0;
    int cnt2 = 0;
    int cnt3 = 0;
    int cnt4 = 0;

    for (int n = 0; n < numElemInt; n++) {
      if (obstaculos[0][n] < px +32 && obstaculos[0][n] + 30 > px && obstaculos[1][n] > py && obstaculos[1][n] < py+48+vel) { // deteccion de elementos abajo
        cnt ++;
      } 
      if (obstaculos[0][n] < px +32 && obstaculos[0][n] + 30 > px && obstaculos[1][n] + 30 < py+48 && obstaculos[1][n] + 30 > py+36-vel) { // deteccion de elementos arriba
        cnt2 ++;
      }
    }
    for (int m = 0; m < numElemInt; m++) {
      if (obstaculos[0][m] < px+32+vel && obstaculos[0][m] + 30 > px+32+vel && obstaculos[1][m] +48 > py+44 && obstaculos[1][m] < py+48) {// deteccion de elementos derecha
        cnt3 ++;
      } 
      if (obstaculos[0][m] + 30 > px-vel && obstaculos[0][m] < px-vel && obstaculos[1][m] + 48 > py+44 && obstaculos[1][m] < py+48) {// deteccion de elementos izquierda
        cnt4 ++;
      }
    }

    if (cnt >0) objetoAbajo = true;
    else objetoAbajo = false;

    if (cnt2 >0) objetoArriba = true;
    else objetoArriba = false;

    if (cnt3 >0) objetoDerecha = true;
    else objetoDerecha = false;

    if (cnt4 >0) objetoIzquierda = true;
    else objetoIzquierda = false;
  }
}
