import ddf.minim.*;
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;


Minim minim;
AudioPlayer musica;
Fondo fondo;
Menu menu;
Niveles[] level = new Niveles[2];

int iniciar = 0; //Iniciar con el menu
Robot roboto;

PApplet app;

void setup() {
  size(850, 600);
  app = this;
  minim = new Minim(this);
  fondo = new Fondo("Fondo con cuadro.png", "Fondo sin cuadro.png", "piso.png", "zona de meditacion.png");
  menu = new Menu("Pantalla de inicio.png", "creditos.png");
  musica = minim.loadFile("grape-leaves.mp3");
  roboto = new Robot(0, 0, "robot.png", "robot move right.png", "robot move left.png", "robot jump left.png", "robot jump right.png", "robot fall left.png", "robot fall right.png", app);

<<<<<<< HEAD

=======
>>>>>>> ffe33224c8c7c9b46117706c76baead3e86e1ea1
  //musica.loop();
}

void draw() {

  if (iniciar == 0) { // Ventana del menu
    menu.mostrar();
<<<<<<< HEAD
    iniciar = menu.START();
    iniciar = menu.EXIT();

  } else if (iniciar == 1 ) { // inicia el juego
    fondo.mostrar();
    roboto.moverse();
  } 
  else if (iniciar == 2) {
    menu.
        
  }
    
  else {
    menu.mostrar();
   
=======
    iniciar = menu.botonInicio();
    if (mousePressed && mouseX > 630 && mouseX < 630+223 && mouseY > 374 && mouseY < 374+77) {
      Salirjuego();
    }
  } else if (iniciar == 1 ) { // inicia el juego
    fondo.mostrar();
    roboto.moverse();
    iniciar = menu.botonRestart();
  } else if (iniciar == 2) {
    fondo.mostrar();
    roboto.moverse();
>>>>>>> ffe33224c8c7c9b46117706c76baead3e86e1ea1
  }
}



<<<<<<< HEAD


=======
>>>>>>> ffe33224c8c7c9b46117706c76baead3e86e1ea1

  void Salirjuego() {
    exit();
  }

  void creditos() {
    PImage img;
    img = loadImage("creditos.png");
    image(img, 0, 0);
  }

  void keyPressed() {
    if (key == CODED) {
      if (keyCode == UP)roboto.up = true;
      if (keyCode == LEFT) roboto.left = true;
      if (keyCode == RIGHT) roboto.right = true;
    }
  }

  void keyReleased() {
    if (key == CODED) {
      if (keyCode == UP) roboto.up = false;
      if (keyCode == LEFT) roboto.left = false;
      if (keyCode == RIGHT) roboto.right = false;
    }
  }
