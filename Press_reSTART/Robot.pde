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
    robot.setFrameSequence(0, 4, 0.5);
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
        move = loadImage("robot movement right.png");
        break;
      case LEFT:
        pos_x -= 10 * speed;
        move = loadImage("robot movement left.png");
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
    if (key==CODED)
    {
      if (keyCode==LEFT)
      {
        pos_x-=3;
      } else if (keyCode==RIGHT)
      {
        pos_x+=3;
      } else if (keyCode==UP)
      {
        pos_y-=3;
      } else if (keyCode==DOWN)
      {
        pos_y+=3;
      }
    }
  }
}
