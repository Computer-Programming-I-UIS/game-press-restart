import ddf.minim.*;
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

PFont bits;
Minim minim;
AudioPlayer musica;
Fondo fondo;
Menu menu;

Niveles level;

//Niveles[] level = new Niveles[2];
int nivel = 1;
int iniciar = 0; //Iniciar con el menu
int click;
Robot roboto;

PApplet app;

/*void setup() {


  String[] lines = loadStrings("data/niveles/"+str(nivel)+"/elementos.txt");
  println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
  }
}*/




void setup() {
  size(850, 600);
  app = this;
  minim = new Minim(this);
  fondo = new Fondo("Fondo con cuadro.png", "Fondo sin cuadro.png", "piso.png", "zona de meditacion.png");
  menu = new Menu("Pantalla de inicio.png", "creditos.png");
  musica = minim.loadFile("grape-leaves.mp3");
  roboto = new Robot(0, 0, "robot.png", "robot move right.png", "robot move left.png", "robot jump left.png", "robot jump right.png", "robot fall left.png", "robot fall right.png", app);
  bits = loadFont("8-BIT WONDER.vlw");

  level = new Niveles("Fondo con cuadro.png", "Fondo sin cuadro.png", "piso.png", "zona de meditacion.png");

  //for(nivel = 0; nivel == 2; nivel ++){
  //level[nivel]= new Niveles("Fondo con cuadro.png", "Fondo sin cuadro.png", "piso.png", "zona de meditacion.png");
  //}
  musica.loop();
}

void _draw() {

  if (iniciar == 0) { // Ventana del menu

    if ( click == 1 ) { // estoy en creditos
      PImage img;
      img = loadImage("creditos.png");
      image(img, 0, 0);
    } else {
      menu.mostrar();
      iniciar = menu.START();
    }
  }
  EXIT();
  if (iniciar == 1 ) { // inicia el juego
    fondo.mostrar();
    roboto.moverse();
    RESET();
  }
}


void keyPressed() {
  if (key == 'c' && iniciar == 0) {
    click = 0;
  }
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
void mouseClicked() {

  if (iniciar == 0) {  // está en el menú
    if (click == 0) {  // NO ha hecho click
      if ( mouseX>630  && mouseX<630+223 && mouseY>490  && mouseY<490+77 ) {
        //PImage img;
        //img = loadImage("creditos.png");
        //image(img, 0, 0);
        click = 1;
      }
    }
  }
}
void EXIT() {
  if (mousePressed) {
    if (mouseX>630  && mouseX<630+223 && mouseY>374  && mouseY<374+77) exit();
  }
}

void RESET() {
  if (mousePressed && mouseX>0 && mouseX<138 && mouseY>0 && mouseY<52) {
    setup();
    musica.pause();
  }
}
