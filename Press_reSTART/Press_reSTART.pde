import ddf.minim.*;
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;


Minim minim;
AudioPlayer musica;
Fondo fondo;
Menu menu;

int iniciar = 0; //Iniciar con el menu
Robot roboto;

PApplet app;

void setup() {
  size(850, 600);
  app = this;
  minim = new Minim(this);
  fondo = new Fondo("fondo juego.jpg", "piso.png");
  menu = new Menu("Carga.jpg");
  musica = minim.loadFile("grape-leaves.mp3");
  roboto = new Robot(0, 0, "robot.png", app);
  
  
  musica.play();
}

void draw() {
  
  if (iniciar == 0) { // Ventana del menu
    menu.mostrar();
    iniciar = menu.botonPresionado();
  } else { // inicia el juego
    fondo.mostrar();
    roboto.mover();
    roboto.controles();
    return;
  }
}
