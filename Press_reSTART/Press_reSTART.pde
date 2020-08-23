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
  menu = new Menu("Pantalla de inicio.png");
  musica = minim.loadFile("grape-leaves.mp3");
  roboto = new Robot(0, 0, "robot.png", "robot move right.png", "robot move left.png", app);
  
 
  musica.play();
}

void draw() {
  
  if (iniciar == 0) { // Ventana del menu
    menu.mostrar();
    iniciar = menu.botonPresionado();
    if(mousePressed && mouseX > 630 && mouseX < 630+223 && mouseY > 374 && mouseY < 374+77){
      Salirjuego();
    }
  } else { // inicia el juego
    fondo.mostrar();
    roboto.controles();
  }
}

void Salirjuego() {
  exit();
}
