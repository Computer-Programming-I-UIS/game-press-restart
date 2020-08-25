class Menu {
  //Atributos
  PImage menu;
  PImage creditos;
  int boton_x = 630;
  int boton_ancho = 630 + 223;
  int boton_alto = 77 ;
  //Constructor
  Menu(String nombreMenu, String nombreCreditos) {
    menu = loadImage(nombreMenu);
    creditos = loadImage(nombreCreditos);
  }

  //Metodos
  void mostrar() {
    image(menu, 0, 0, width, height);
  }

<<<<<<< HEAD
  int START() {
=======
  int botonInicio() {
>>>>>>> ffe33224c8c7c9b46117706c76baead3e86e1ea1
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>255  && mouseY<255+boton_alto ) return 1;
    }
    return 0;
  }
<<<<<<< HEAD
  int EXIT() {
    if (mousePressed) {
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>374  && mouseY<374+boton_alto) {
        exit();
      }
=======

  int botonRestart() {
    if (mousePressed) {
      if (mouseX>0 && mouseX<138 && mouseY>0 && mouseY<52) return 0;
>>>>>>> ffe33224c8c7c9b46117706c76baead3e86e1ea1
    }
    return 1;
  }


  int CREDITS() {
    if (mousePressed) {
<<<<<<< HEAD
      if ( mouseX>boton_x  && mouseX<boton_x+boton_ancho && mouseY>490  && mouseY<490+boton_alto) return 2; 
      {
        PImage img;
        img = loadImage("creditos.png");
        image(img, 0, 0);
      }
    }
    return 0;
  }
}




int botnicio() {
  if (mousePressed) {
    if (mouseX>0 && mouseX<50 && mouseY>0 && mouseY<60)return 1;
  }
  return 0;
}

int botonCreditos() {
  if (mousePressed) {
    if (mousePressed && mouseX > 630 && mouseX < 630+223 && mouseY > 490 && mouseY < 490+77) return 0;
=======
      if (mousePressed && mouseX > 630 && mouseX < 630+223 && mouseY > 490 && mouseY < 490+77) return 2;
    }
    return 0;
>>>>>>> ffe33224c8c7c9b46117706c76baead3e86e1ea1
  }
  return 2;
}
